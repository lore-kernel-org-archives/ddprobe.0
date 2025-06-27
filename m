Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB51E233D7C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751012393; cv=none; b=fPB0fy9D6TGayIw80SyfbU/bvfoBvwxpm/PoFM8KV4EXd4W+hHjPD8AsxpBEGGeIKtV/PR7WTcGcmupQZhUKEF4tbwcIgZjc1fkVASyjD7P/35pqGobiwkNnVZ5tS/rKylCJq0I1Eo/pzDLMa7f2k2eqW3EkEVgAq5ZnhL6a6TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751012393; c=relaxed/simple;
	bh=IsBORlMjTRNIkNedvkA69xo7m5yZSo5FXIf4ncVaZRI=;
	h=To:Subject:From:Message-Id:Date; b=GWHREmUWVI1VjD4dhL6zfZko+wByXW6biXhF8od9bw58CRjT2xVlWPmNhDFPWJpiYX39MJsxQN1jyFDwrK3+cQPDEb5c3TB8AM6IrRz78n+UFKhVeCBbK2hGIIKK3FZnCgzziUGqjdpW7Re74ODdFyX5nR5Y1/21ClwHeNENawk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM9wkdDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM9wkdDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62EEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751012393;
	bh=IsBORlMjTRNIkNedvkA69xo7m5yZSo5FXIf4ncVaZRI=;
	h=To:Subject:From:Date:From;
	b=uM9wkdDhV8EhuuatCwwOIYEr8xAzJc6p7/YePU23ppInnsXmzNJ4BgA3r5+LY5zRM
	 q0Pc9fi+G1HlOAbUtZx1mure4BR+A/ry/hOGX6i8+MmhybaZPbvGv6YqJ135roBdb+
	 GZQGtgloiAkGp8mfipxQ5XykFRRBbwTDyrlv4XzoO7QJKUM1BH5P2qvK2asj6eGQXB
	 16vEU2P+fuvpejlfth96wiqm46z4c41FNDc2QbvFAPrJTPXdcriSBdDOjTqj1QVNF+
	 yM0eBHwIyUW2zHQeKqRc3MAvE4R+/IECZ6D60T37Vq1NQeAXHmdrOPCpSSCGJXnyQq
	 xU41WtwA2gBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ADC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101239359.15963.6888877560821907377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8299f5ffb06a2f75e98900a25be307d72fe0e9dcc6e5541c760ec74dc49753b
Date: Fri, 27 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751012393
