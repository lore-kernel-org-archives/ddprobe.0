Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED5515ADB4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751750994; cv=none; b=cISTT5MidZhAk3V2jCJpEL0ExUlpYP6B/IYlcVeNSPs9tJWECccT6XDiZrzBG8Mm3zzM83Oi/M02IfGfHZOfATgn+3TJ1Kr0SdBBuMDLic/PQibqSZz3t3U3UXbh4c33+z16lawSNiRuMxH06UR9gPundOmCER9mGf5vejzDy4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751750994; c=relaxed/simple;
	bh=hUVGgyWVmFZU/FGSt2Q7cgpBXNl93JOk/lPFWbPGl/4=;
	h=To:Subject:From:Message-Id:Date; b=nXkwLuTr6ZJlTNDR4snK1ECOpff16UTK48Xt3MNdDEAWP+X/JG/iGRqovSxcgk2G4tG2u1X2sDuFyz0F8H/62JTR41XL3H8FmpsoZdyE8da1RGLTEntn0TXOnVEOwM/RRGLDaHkFbjfzC480hkr9Yx+b5OHbDjCaGdz/gjehzlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpOmOuDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpOmOuDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D16C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751750993;
	bh=hUVGgyWVmFZU/FGSt2Q7cgpBXNl93JOk/lPFWbPGl/4=;
	h=To:Subject:From:Date:From;
	b=kpOmOuDFJA7Ktt+GvF6jIDVjKbraOEGKVUf/iGRHbFfXPMdMbPV9LA5ZOTi78t5bW
	 DkGWJVkizKWoJQfpU0hc63K/l9Xfx8N6FY6ymj889ZwubQLOlvt71UCXQm6w+KZaJm
	 3XuV0zHiYq6lmbda4kBkoMNJNCuJou79NSGTJjPszDTaMAg/ZSOKdvDtX62+lB3f/t
	 NsZ2tUdRT7ssJk11K+quTTV6L2V68VaBfnCabr+9xLGsGn0XcpydBmSiI1mIk631aw
	 V05F+yIN4+UIytaAD08jmvEjU658WBRlKg6z8E8iaQS340FhjElnMS+MdBRNP9b7m6
	 V8CMCpzZKriSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CACC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175099358.3394.13230394186747962161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5033a5f06af54d97b6ca461b4c571f2d7d7075590ef1f7c9aefa5e7d8d65aecb
Date: Sat, 05 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751750993
