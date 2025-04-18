Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6E8233145
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744956594; cv=none; b=bHp4dVPr5jrXajq83lt1+Hea7oPCyfI9RLEtksZGmYXtscZCle2JuuEhNo8vbjh8CX+tr/h5MvNTniBOuchbl1WVbZ3U9Yy4D8l8z4XDJ0x308xE5Wd3MYuYDfAb40vJCngh8Bx7gzcgf8gylXfOIuwlMh/vdSkMm+fNBI3cUuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744956594; c=relaxed/simple;
	bh=okxO4NuZzMbTAZ/La3e6ZUox/yas5+beIpAT6c03hUQ=;
	h=To:Subject:From:Message-Id:Date; b=hyTfhe9ffiihhvBwTh+jILwnqT6O+l7xkKs4NY+dzdM3vMfih6KGOWIk23tGiGArreO4cPihYpEIn/cPYa++T2Do1tn3YfqkJD/jmxUj8gGkhiWRB59CCRA9p7szLmf8wXT0Oa9fXRtKonGZHPnW3OUuUPGpsaPp91ByXNov9XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQA3lQt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQA3lQt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E56C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744956593;
	bh=okxO4NuZzMbTAZ/La3e6ZUox/yas5+beIpAT6c03hUQ=;
	h=To:Subject:From:Date:From;
	b=IQA3lQt3OsY2jkCcKzeWDPFO7iRraGxo92anUL5KMcg8/SpEC8OGsEsC3LinddqUD
	 bXtluF6uMgR+B4c1U6HDT0A4a9WNIOihQ+qN4LnL52TBK3iSTYeF1dDymOCvccuJjE
	 7vTa+X4bWKLUpMWrQd3VAlO87/7WJV53Gu4LvypsPWEDavTVU3DNiMDa2jIjA4tVun
	 77gzK5UV3ntRHaw8E2zPZz5n0dfWAtQYgKhZ6G4sVsSLDFHAlphkgOL9J0gKfOto2p
	 taOvEyvjAgTSUydCtkoy/LY1y0RXAgHCnH90lxr0WGLe4ElA/+BiPYx8YEwAwy28Ta
	 XzlNVdS91yU6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DDC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495659360.31413.761181213353873330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dce3a2f0867ebf98f4fb2235b4671b2b06e62730a3e6403a0812ab63bc77ab5
Date: Fri, 18 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744956593
