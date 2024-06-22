Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464FC8BFD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719033743; cv=none; b=jhnt336YuSIMGutO56WEqZ3dFhbCqErXFb/NIAWSltR70h1uE0qOx7iGyr7kdA5DAqG8fcSRtFXcwIOLmWB71PWVR1/KZURvQFFJMsD182woC5q/TxJv2TLecroGAxSz7X/PkY0sRmrMg1I8Bsd/njor8VlsZR3XAetuAxTgESo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719033743; c=relaxed/simple;
	bh=Mn4NCEH7RLu3nqlp5KF5zGkDvX5MwLSesSL5KxYIEeI=;
	h=To:Subject:From:Message-Id:Date; b=sAh8AF8cmxOLB5tQFHRwC6t2SYj+f5cHD31Jlv9y4CxmZJnDOkXbx7yMcm3ybMokb4CaglIWyBFQ+RkXtkofWjENEMmQkplbF62jMdCO3nt79Bd+7t4WD37QJeaC7aAPFk2W/F8ujvnhS+L67j9bImAsvRid0nDST5OxaKCQ2UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBbJ965B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBbJ965B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA02CC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719033742;
	bh=Mn4NCEH7RLu3nqlp5KF5zGkDvX5MwLSesSL5KxYIEeI=;
	h=To:Subject:From:Date:From;
	b=GBbJ965BReXVhcTF86sj3Rl7B1HXZ1xOUda16ar1EUvCZQXhdNKh4vzoN36/GRiL5
	 okf/dyQWhit1PBC1SPHKGiW2HbLav3zr6y5WYZo4j6sobKxqE/Gzgqz1REAMAck2a6
	 gtrcb+O0kKeSM6NUMdM+AVvyjh+IS2HK1fVLxAGB/Z4DmE0lUQujPgkQaGDQM1vP4v
	 FmhZUhVN1Zm9GAT5DZA0CeVgUwn99xqsRPFdaLPj7FXQ5gH/nB/hD36A0ExjyyYuPB
	 9UM2zxpZ53+h/7sHw/wXgYhUoUpd28bT3lMiQ1JfPkVAGF6Ty1AqmwXgZ3gHFVi0uT
	 jGUTrTLqozaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9969C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903374281.16466.2236983817363375793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9050696cbc6e2e0153a4364d4668034b342e259a2198fc30676dc2dc243afb4a
Date: Sat, 22 Jun 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719033742
