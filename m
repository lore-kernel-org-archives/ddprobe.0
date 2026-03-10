Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15675351C16
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773159294; cv=none; b=roj2VaSy/ztDGvd3Aek44ouzw5ylsweliEMOyvochTvT6UC/bkMVzaraFxu4BU4ITyn+t+8bOX6DSmLhnPwDwzEhwolPb+9e0AlTt7oqXjmB0yQ1D4Y5dO1F+jYiYtszXCQ2YG4mrkhn0uloDHZ+uiAnqSah5fhNkgRiSJ5eBVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773159294; c=relaxed/simple;
	bh=en9Xdjv3E/ub0qtupBdDsH0D8gZz18ojTUkEKxGdi44=;
	h=To:Subject:From:Message-Id:Date; b=Zad32aWS3LqYzgld38RyAY1A01bv0Ss9odl1PSMxCM6emvNGDiL+WjeONisnWYeaHlY0uioQbV3Gh3wtLuaqdG7QMN2fRA2RpDjE/y6Hmui18NGnIIcyTjF05J9Uj60MQNLywHlxp5t9owTNWIBgScqO55k3WKQCnlgA1nkSs6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmiR6mBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmiR6mBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A35C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773159293;
	bh=en9Xdjv3E/ub0qtupBdDsH0D8gZz18ojTUkEKxGdi44=;
	h=To:Subject:From:Date:From;
	b=lmiR6mBfamk47OD06e6SbmepJeuwh3aW2TUt1yAD9NNgvNQOuqiGjCf0+feUyUZdu
	 AAp2GLfUsmSvWoiR8nUXz8LJKH/F2IGD2Qy/zNT/2Y0js7vgtA8a9dEpLdislcoJ7W
	 dkTpGMwo2apgUxlZiOEboGW257rWd+s7nLSWxTRIbA6Y01FGBN4DevCrUa0JdcIFdQ
	 VuKihlOFCy+ihxvCGm2l34gTQU03bjGi7Ez9lIrdWAmPF35o2XTkDWBUdHTpY6HdNO
	 p0JLCmkjj4rA7uSvjJS1DnQ2iojUyeWoBYseAWGbbVhbDaIEgZifK1AT3c7ZVrYVBE
	 7hTyqqyKfNO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92273FD4F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315929358.23363.9252438041628572190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a0eb08e240de0540f3bf492a1cbd006eab0ab941f64e9294ff9098f3374944
Date: Tue, 10 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773159293
