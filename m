Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3015B1D5CC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736973954; cv=none; b=DkWRJ288haOnoJOPtOzaXrv3p4ZSkAEJdqgSwiDAifNCrnAutDau5x8IWuUPKCZXdGhsAonfZZMbg+fdstKhbVecSXGhZ2DB01J1OEelMSMlOflkykFM8CH02DDTxGT3jbUZod4watxrhvya7Sw8KsJpxMY6PgcIR7bZYVn6GrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736973954; c=relaxed/simple;
	bh=bhoh81zDYAaPMee06zejHkiYK1rYEQFZJBfXs1eqmjc=;
	h=To:Subject:From:Message-Id:Date; b=Bsla1uIF0XRJieOpIDWWTzC2k1zPuvh/Z210DoxCxiLjd2taF1q8GGE6kUnr5VYE2ftir/94ZmGjQxqTL6diTyTg89XZLHXDzcO1Tbi0tcBAnzqk3ITtDKczczizy9HATWIx6VLenOqrqOVckzxl0NribAisv7Sxp/uenaJkK8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULfmvAm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULfmvAm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736973953;
	bh=bhoh81zDYAaPMee06zejHkiYK1rYEQFZJBfXs1eqmjc=;
	h=To:Subject:From:Date:From;
	b=ULfmvAm1Yny6Jne6V05VCd2Yrt1L9aXPm6Sl1tOcSvOG8IZRx577UR0UhTPTen3J4
	 bYwUeV8FNzOlAXEb8Tvon0SkiKuU2TeeHJtR+d8EJwRGXylN8LKVjtMafqjSXbd92k
	 soyC9JanDdMPESDFfP7Hi4rqPgCQpetdonFOAmC7aeI0wcVwORmz/Vsk+pb4bn1ouZ
	 6zencrSMr62k4VpfMrG5Iani49f0VEBO7MTfx94ATpiTVgSI5apEcQ1e224dHwT8S2
	 RhdhMIc3MsCxjR9jIN5IEko8rinp2H/VHbaszTbPI5Qnb2DKvP9m/m8IhhCXZQVCVb
	 NTvJBQusPyTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F2C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697395359.8543.1793675266989271064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff337f539c419fa4ab9c1acba2eaa6f0abaf4cb84f2bc32363eb929fca3c212
Date: Wed, 15 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736973953
