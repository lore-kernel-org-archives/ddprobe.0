Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659E2770EA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719096743; cv=none; b=WZOVpDm/yh5yaLXLZn/0h72WIJO0RyDPzTXyicB1VDBNT/tqgoXWmRoo9Q0I5xPG3kacCc2iIm/Qz9+Ag34bWeaY6n9ODLSNertDsZASukxkVuLSsi8xgy5YLEsk+8Bo384WGEJgj2juD3/oZCasCjbzQfwsCpSG8t7FhJWhx0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719096743; c=relaxed/simple;
	bh=nA2WjtnnIAnF1Rl/1FTcOjGlaRwBHPxxpspvnRqriBM=;
	h=To:Subject:From:Message-Id:Date; b=Z4ZV0xwBN88hfKoLmTISxuTd/UJM7sa4P9LvQmJUFNtIZuEJV5cups1nnjHqB0F1EJMWCSQLDSXJw8C1XXcHv2KEL9cmZmzag+14qEOb+7RXfS0TeY0gLNIiM1R+BDA0ScLe/95Hzk0ayBRc4hoXKm2gY+9VgRgi+t8F9dy6URo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fad7/Rr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fad7/Rr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3791C32786
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719096742;
	bh=nA2WjtnnIAnF1Rl/1FTcOjGlaRwBHPxxpspvnRqriBM=;
	h=To:Subject:From:Date:From;
	b=Fad7/Rr1qdlPqV6BQtsv9SnTRgHkwhT7JnoEq1ZxNalS5GEGw+MuCYNi+cBh2Ex+m
	 T7TaslBz5lY4j1WimvA0tcD492R1f7CMImLQNi2maaOt8VHl+ycoSNu5r7q40VS42Y
	 HBWVFU57hqd+qdVKaGUqvqT3r6/sCuqkOKSFHXTt87ISS8xwXC7UKorShEHK4qDaTy
	 Wo4jvFJJJGC/cpvXThsiKP6fgJBtVdPxkvE5nPYEOcyEfGSOewCEO78rCpqE1akQW9
	 0kwRcsISXA0Fc913VuxFw2wqfeyceiQbGTHpMuYW/qzv36So6NFXeRIcFqHthrUCLY
	 PSZ0/ncLMI2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D136CC27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909674280.8447.14212533878498671615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa518531cb383ed0bc027d70ffcaf85d921df22d079ef8236ac1c59be8990b2
Date: Sat, 22 Jun 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719096742
