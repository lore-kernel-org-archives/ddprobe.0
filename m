Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E812BB1D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779609754; cv=none; b=kgWKiTze3f/LgTL0Q7lnp18MGCL5BHV34wUbNZThn1zUKpOYCfHTZ7ZS494p0f06ucAZV/y83FfFXj7yyl8FKOHG2YQjWQdQ2/1W59MpJL66X2Pond8uGrel1GY6yAKSnMsTMoAtUe81HQo8GfCJyFs2TBx+m660kQHIif49r/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779609754; c=relaxed/simple;
	bh=O9RSsJRl2IDLSudizIEdsaccM/T8DQEeEF7nIbSxSfU=;
	h=To:Subject:From:Message-Id:Date; b=Rkb9JvEvV+bwSAgr2rip0sz/I0HYD86WUZRyYCcvHzR3ZiZdmKu9Jq7SXlp1PA9A8PpOUPZP37Wf/IYyOXvNzDRFEq4BlTM6+GrkwgHpZi2AKR7bJGx1om6TGbSyrfNfdvj7OEI6SkgTxpA5FT/U/U4MiemEuMZMd3uGsIDC7hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4iLvtPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4iLvtPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B6AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779609753;
	bh=O9RSsJRl2IDLSudizIEdsaccM/T8DQEeEF7nIbSxSfU=;
	h=To:Subject:From:Date:From;
	b=P4iLvtPjzU9/WEWFn6goCs3SEk1ZHazDki58FZUx+G2DmCz/MIzTDtk+m1TibePGg
	 yrmYHGmqAfPhj3moP5AEZM4Bf7uEtwbHLzuXO2mDexJK6+avuINQLQwzSalEZ0d9o2
	 llRZ0hr7aXXsbdveCuxgR/0i1znrbt/xqXfqZN6CBLn1tq6dzBswvbfTOV2zeiZumD
	 jh8aLSUuoejoVMi1Uv2wwxpU+XHuizNqUxeAbdCeap4wfgocTSbFHXTxVfeix7L79X
	 0U8FBClorbjONWfkBAkU6TLbJ5gBTZKuicegzco8SAAz/2IwBs7Grpbk4JjKeQwW7D
	 DeFFaqbyuoSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D7CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960975368.10710.1263651865782656390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f871a9a70d58b1d08eae678323afd111453bd33b9ff2669376158dce015fa5
Date: Sun, 24 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779609753
