Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B721CAA6C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751927994; cv=none; b=rvSfYBEXLZXGoEg8rOHAJf1u1Vi2A/SixxHC5BkUNqhhwSsvpfTBtpOR3SgK4KrNypjQ+OIr3rkPfL1hlG0k+OPpeWMlz2ICHelyVS1H38VaSTLte5Qc6odCa8N2FsEYPJMezP8tASo8E2r8Fs5x2BOz1y5cZbqluGoe/5LQtp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751927994; c=relaxed/simple;
	bh=4kyvhUzK4Ij2zcMLGmI8G0lj0SUjv4Rn+V25xYnqy+8=;
	h=To:Subject:From:Message-Id:Date; b=KH+Kyu/Q3A79A6C5QVUQmQXIg5ydmsc7KIocGRTY2+3JN1EPA0Y8P5oU5DCnxhZlGDsM7c7Hs4iNP6Lj4G7RFejae6YvvdQ/G2RddoGRcLw62Lm1ifCYGER1jwfyGBDoyFeWVdcZLGcy44jXiIUPFS4WGKB8sOjtTxSIPxAF5XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp/w34SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp/w34SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E585C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751927993;
	bh=4kyvhUzK4Ij2zcMLGmI8G0lj0SUjv4Rn+V25xYnqy+8=;
	h=To:Subject:From:Date:From;
	b=hp/w34SYdCBgDfUwYJ/TLsic7dAt5oq0kMpd+2cHHmk2qbKteJ4WLGT2P8QjjfyDu
	 ruDO7ppO0kG6HBXsJauYr9hrEs6fpy3B65hIjPcuvTUO0okHYDq6sICZkRJO9ayHWx
	 5hmPqO1Tu5iS3COGOuOVYDRrgzrCW58zQNeA/CiUUop6U2+XG+2p2y+U+Mfube5xZ+
	 X0ziJubbGEQ5tBITb9Y+PUaXYrWbF3a9+5eas4yFnKi2tgCfhzXMI77fr1rGS7tH3u
	 EdD1JOcM0zPKMhyi9o/jZ9y9YJlsSjXPyYXRTxH9Ylx6mjHK9TQ9AtDAKUElzlSLDY
	 IB4kgtxR9Mw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DFC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192799358.22651.10479761711654316735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a658e2af5c1eedc4c8c5806cd6396aac55b7a7daa1e4b340a36ff00ed833b8
Date: Mon, 07 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751927993
