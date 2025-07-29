Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D90234CF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753816195; cv=none; b=uqrnzsDTqr3czPYyC0xrqwFB/YwxRqWPUDruPvKGdDx7K3TRsg/4IgxWDhEgydELdxW1kBARx08Q3+kaxmUxb8hWHpiE5PX5oEorFjnqASWhzOoJlv6Lj+7IWVAAC2B0F4DiP1TY76QKmIg6Z2SKoRXiFCHVct7kexgb9QxNxHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753816195; c=relaxed/simple;
	bh=tlKUrQBn1LgPxoynL9sOco3iwNog5xYAWSKP6a9Lw9w=;
	h=To:Subject:From:Message-Id:Date; b=e/6qJbs4K5aT35ubxPt/M54Kp4JGffufDrLopp8tysNzjn79Nne4tptNUaHPG0wpqu8vSk8B6iPY7MxW2c2R4JlfumBbec6Xs7bmVcRF+Mdvhwdse6CkwtW6tX6ZKZWJ72jz4ndO8b6lzNXYAKhooic7HZvIoPmLMjpntVD1Kx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcjCsMg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcjCsMg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3535C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753816193;
	bh=tlKUrQBn1LgPxoynL9sOco3iwNog5xYAWSKP6a9Lw9w=;
	h=To:Subject:From:Date:From;
	b=mcjCsMg/0CSNSw17IIlKm9OzXjVgkE8NFJDU+FIYiXEGub303md0Kui1uL3QV28fN
	 1IhI8nmCQiYXQ/F3cSUghsFSJECsr+Jljy0v0QD3ONhAL2l4eA3DHNgUOmbd6NQ/JP
	 MVVl6jkzhUqGnaNRe3PwXQgOFPsluX+M5sGaVRN3TGsQLg3A2jHZVT1ac+K9hf9ECS
	 73e1oGJ9cMsbM8Cl0UpERNrmo+bphCr7obkTo/591VHdLssRy3ShKjAYlskLKwzv5j
	 Ivpqy+MzasSDFml/xiJp5Folgo/RYsmBG/gvrN21c/5rHaSmOH2x/+Ccyp5cSVzTHm
	 lTPGH7qXTeiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0AC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381619358.3529.15866424241262146018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b4f3d4babecdbf58394901a7ff7befd803f06d90f6858f3dab973d701f78da
Date: Tue, 29 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753816193
