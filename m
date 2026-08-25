Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C3231C91
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787695834; cv=none; b=ntGPA6iLMXADiATA0X5FsQHTd9QzcwcfHeP712TK26m0D4lZDMpi5sVYnHfGWb5BfoIuo3+gdKKCC8jAgk9USX8JXhG107TdhhI9nuihaaBbbqkQhXQZuidXSKjxfggmwlJxKf5TnNC2gyAY8zLfgo8rtcHuiXUAGejxIAcZItE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787695834; c=relaxed/simple;
	bh=cM1FSSwj1OiSRaKrM/e1/cemgMFCgF585SqRFoO1S3I=;
	h=To:Subject:From:Message-Id:Date; b=qS5wO9IUSuOijz4TLTA75nisG8Dr2WBOM6OhYXubO5Qg65MDB5KZbIhPLgnBqQVc0iIEL1+gcLjWoi+ckMpgzsCwHRfOiCN7fqDgSCcgFIL+IIQJi/KLJTik8OClg1DCdsdvW9KJpZeh5Q29TK/mSZ/tmMVd0sYthjMCTTIp5Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvzhuQ+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvzhuQ+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7885C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787695833;
	bh=cM1FSSwj1OiSRaKrM/e1/cemgMFCgF585SqRFoO1S3I=;
	h=To:Subject:From:Date:From;
	b=CvzhuQ+WwNDvyC3/5Rqr2QO4SqLyMTRuf9F+iCcD3280a/h6ULxdFT8Z+HFfd83IZ
	 1XJkjxFCbWYWiDiPHsyNMjqjlDuOyNeV8UW2tlXuF4E/HCfoDX3Fpj1mmwoF4RCLYT
	 s2Ev750m4z/OGLIS8t0PyThBI/U9LvePaF8XBe6hT8Brw8NeW0T8JgQYlYcFc6VegT
	 gXTC/NcHFyGqP94gJvuv6dj5p6BW6dKgUJIstBPA5iBZSsFxeYZkcXvs7p1fhzcZpC
	 EmfPzkaYXVizu+nZ50HwWzsWNzDSZRF/GXWfybxDf+40CB1+RRNKPSH4u94pC1ep2H
	 s7Sp6YM0dYPsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3249C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769583370.19451.5414610480311940579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0f030ae51941fc0a70b476517c47825713339f115d9cda9830f0da6f645f3f
Date: Tue, 25 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787695833
