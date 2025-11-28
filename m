Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A394328B5C
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764335574; cv=none; b=QAL3dUP0OIojVHHrmK9NP8E8bvpxTdBI64Yd5aR+sSs83OL7Bmw4PCFhz9QyO9hx/XLVFS7UrDbvEBhX8Ygey/eOPE7GOAmsk9eL9qC8TFyWHZ31w/48ZpWnJ52k/4pJ+l+Knkmp37BjsSv3Vqeh9a2FL2frNOkI4qz6hDtDouA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764335574; c=relaxed/simple;
	bh=960HQS2BSlIpycBBLT/A/xA+x/PcwZ8GfWyCOjbPLVk=;
	h=To:Subject:From:Message-Id:Date; b=UYHELEFSWj7gyVMpJB5nTtpEBy625d9lIXVmLhX6yW33h3XLun08L5vnDdqZjkmnD44zm0CkSJVea/Td3VFpPawT7+DqsOPKtzeAuMe+NpJIGd27RUz8VWhLU3+pzQAUpsBLrZeAoB70EDkzNexCSt6nacE0oCvI4A+6F44Z2uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0mFIAKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0mFIAKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764335573;
	bh=960HQS2BSlIpycBBLT/A/xA+x/PcwZ8GfWyCOjbPLVk=;
	h=To:Subject:From:Date:From;
	b=n0mFIAKVGTteOklF6Dfydi7xudsd9D7GSNIyDj+9g+OkXHZ9yzdUPntJaOFZuvfeh
	 ql8IyfS8p7SEpJTbmIrFjsFrG0sEvQXK8AdO44YzmhaAWic0ymbEH29MD0vq6xu/zq
	 Y00A1Vt2m8AcJF63ThOJb6yKVNV0m4A6MOyMCEzI/zQHg/8eGqD4aI6g0Bhl/PfWe2
	 O6StWFUa3vFSXoOL5t2L+T1TjL4v2e38lk2AhaWG/1en7Z0gg5bH/HV4gR0MQeFhXE
	 D0ka76BBS8d41p5dTZs1Hw9FqpZTvt6l5VZRneK0GyhwK7NfNh5EEDzBNEvfPtU8A3
	 x6aifAz8AvkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC7CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433557358.18838.16987598960987431432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0800a4f22d4ee452984eaf166fa6a75cd8eba5a54dab8ff801c4667760c9c7
Date: Fri, 28 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764335573
