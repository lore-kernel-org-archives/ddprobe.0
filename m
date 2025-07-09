Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C81017578
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752086994; cv=none; b=ZZyBSzbIAedgDDmphINyZ0gbNXjE02+YEg47717GK4IETspfZcBoCw6lg7c8LHIfUc+kopSzqVaq6Z+NGAQ8u2pcTh07SXDhVwZXnwtKxva4iQTpeacvocN/m+S3cxkqXL0yO6eRVOk2Lu6agy79Sp6QDM94GD99XCoKw9LM1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752086994; c=relaxed/simple;
	bh=1av9TNsO9Zru48XGRlVg0rdGs4ZHKVeoaGMCWhDk65Q=;
	h=To:Subject:From:Message-Id:Date; b=j3ghE2/caGQLane0ZRCiRmISstxw1Th/fw1lvUrDTcc3fyy9mftTbwYDxHn7j1laho/QHyXLLfVgOA0dWb5X6qR/cM5Erg92F4yojuU4sc7i2rRXJ11Xw3sl1keEPa3WhrRyMWHDEAN4Z78bMPNkFosfvmyS1pN4G63h5q4SVU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F75sbJpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F75sbJpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752086993;
	bh=1av9TNsO9Zru48XGRlVg0rdGs4ZHKVeoaGMCWhDk65Q=;
	h=To:Subject:From:Date:From;
	b=F75sbJpjvk9qxnG7lxUEoT9HW0uMiTHNVp+XyMuRCU6QXip3FsGzMWrHCvGnOExJv
	 Dgz3xLtht04cDrd+xLbq+3EarWMNY9GbmnlNAv/SQZIbtJvew1jXNH9Asg/CJTy0To
	 fSi/d9PMGSToByCRdW5biFAEu7V9CHpazM/1cgcuFZSMveoOr+KTTT2ohhch6XVIaV
	 ZW2SxiW43PR5R+6gre7w6fbQPd4IvJ23egML/B9heZTvjaj7JJOLDvHeQwBdxJiO1e
	 BIrAxfkChkylN4+id2Q855f7tRqRez72ny5stCywMbcDNwOvoOn3ZLBYRAqaHugtLd
	 eqQOitKAP65lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94081C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208699359.5803.3465798399195473764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c8fde7ee82882a63241e693ad26c2e7da4fcdeb439ede21b14cd2b65f30083
Date: Wed, 09 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752086993
