Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF213B5B4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721757954; cv=none; b=VL19b2O+RMoLdNs/lliMkzyraz7DUb+xb47friqk+nQC7ezKeZwxwhHYGRrcw3bkijQh0iQ5Y3g1HiEV78CgKjQd25AsV4299QWIGXZe8umfTgg4yadnnZj0FVzO4S2Y5xmHiF8fDwA3W0E3sJ+9gU/ETF+zUG1T6GNzH9S/+lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721757954; c=relaxed/simple;
	bh=Ig0MxvY4+EK0n8kQwmhZ42ZhXDcGNf1Q7xvhVai13sQ=;
	h=To:Subject:From:Message-Id:Date; b=VZ5nIsoJBuYh8kGGm4by5qBuRI/5Twanc3FIhpqGrwg/F+LAW4n7gmgGkaMVOK6Uo8XcNNq5qpAhWAM3S3K1D65bCT0RfF7uu+D5VtURLGNJtvsMxlV2dFC9y9hTQ3WyeqhbtD6tUltCVUxvflIrfrq6lrP5uHHsXmf8/Dg82bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGOYJhl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGOYJhl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF19C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721757953;
	bh=Ig0MxvY4+EK0n8kQwmhZ42ZhXDcGNf1Q7xvhVai13sQ=;
	h=To:Subject:From:Date:From;
	b=VGOYJhl84/i7tKZcicMMuj1Z6uYKN/lwMHJXPwMRfNyd5lm3Bn+pbxHT+HWW44Jz3
	 3ok+9HpMo7b/yibsjvk40mhtMFDr+UPmQuUnebluPXjeUnG6wn/3kHdA1WzbL1y2vx
	 c1GHmEnjhTFYvJroU2R0wwi7lb/dkSHVbTGg5tiAHQykhlq6/wNKijHy8S6T/bwtBC
	 VG6CsujfAWKy+z+f163zBOl1fekOJbNGLTbnUzGnz2ZZHi2+E60hLX54fhZ12zOA1/
	 BjPjfsu1XJGuc//DIg+MemU4GuWYzI/QqEznGNvfXzs9C0s/TZ52bIAyj6OLqoxij8
	 BeoHd8eDmHjrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A078EC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175795361.10426.6709292810417204647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00be05e043160f50684d9314b8d6b88f307e94a02033eef90b75310c3e8ce96a
Date: Tue, 23 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721757953
