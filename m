Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABC08480
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718657303; cv=none; b=I6NFFCf3sRb+shUQ5kuv+YB5YJ2e+Z62MYVJQTLFHWVl+pfkdzUdQVqVhVlF3p/mCiPKy/4YozsVGYmsfVxNfa2rg9P/w45MysiBXQQWnOD/YGspFPSttNBNNdQFUTSIuXw7b4VXDnJbyGA2lyD7SHfQGKeG+3TOOBF6mHZM/vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718657303; c=relaxed/simple;
	bh=fSAl94DA3RmNH3xVAQsWh+N6GkXYOp7EePt60zGkEiU=;
	h=To:Subject:From:Message-Id:Date; b=a+oDl2JD5uucdcn09YcDYWCvejzOkYB5IiFjg9mvKNkdkHKyKkNaqRKmz4vHbN1lLWmwSwKeGDh+QJIQwyhUkBLW4IHq608Ox42//hH1bBDm2BBK+SjWC/hi9L4f1AaSjJnIjlGalkm4vD87CrDAWNBZoU6odTsI0jPMzA5q3Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boqnwWkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boqnwWkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62C2C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718657302;
	bh=fSAl94DA3RmNH3xVAQsWh+N6GkXYOp7EePt60zGkEiU=;
	h=To:Subject:From:Date:From;
	b=boqnwWkxBZ2FYQWdY5z/3DWCVsQCqJ+Ajl306qhy8LHUX2snWOoblb4beE9tO7dX2
	 uq9G5tZYXJH6cWg4kxexCPcD6dAuc9Ykov7aHpoPcoqk1qzY13ls0IY7UZd1th1mnJ
	 HEQ9TvxYKJxxbWoYFq1V858TGWPxxAti7cln041YDJT40IlqdQQIaW6uKj3tuHCeAt
	 o/VISPQni680pD+QuGAyVAf/N7l18dYLFzRHHwx14UcG/z5/jvitSf8weodIHAEu1s
	 Ediuh+kAKApsxRX29Kdku6eIgJKqDVXz83kFM8tJMV3MpCv7KlvlI2rLY+rijFkkkp
	 cDhrqVQI7HH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE67C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865730283.7468.8482492698428916510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af9af7a2beaddaaf55a83ec287cfde37221e474f00ae6b798da62fc8c0ea5ea
Date: Mon, 17 Jun 2024 20:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718657302
