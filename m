Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A40C17C68
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717859843; cv=none; b=Hqmjyk67A88XelXV3uXOxmhUeWhvOAu7aqzzjNcKBLkUvXZnFADqqscgjGrQqUFGHeZvZWDH/jgau2DgTzSVrGfpcrfVjcienZ9e7NJuKdGrUogprp0JmylCPkzVCMLMj83YmRWG/kcglkzKiMYFj2kTCbmFkZjMKYtU7JadSpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717859843; c=relaxed/simple;
	bh=CCphAw0PKdw9UgETWp/sB7rlLLxBFggYBdHHBQOwNdE=;
	h=To:Subject:From:Message-Id:Date; b=nEqacbWEceJIif6ynr8gA929oiVn363v08PpiCCkgN1zhNGFH5w2zccxU/ciSA0xOON68JCINv0t4uG/vzpwwN0gUQ/MNpb8HoRX3Mw65V9Ng6Ty/T56oJMIznyJJ+OBdO4R9v5SCcAmvsHZjNG4dx6qTdQyssptlil3swk95wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0bD8bTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0bD8bTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA317C32786
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717859842;
	bh=CCphAw0PKdw9UgETWp/sB7rlLLxBFggYBdHHBQOwNdE=;
	h=To:Subject:From:Date:From;
	b=J0bD8bTcedDZk6G5bppzWd8GWnob9lZ/QNxV16wg1gmjedSbER0WT4xMWd/TnKaVV
	 4eU4ZiFMT6ubD2/OM5DiHWaNkRpX//gIXEmXzosdp/lIMHtZR+5YgJkb6mqy+zoHoA
	 QqbVHlrbzuZ8EGiiNW9GGhYvV9CR5ti3ZleIWqakWbDJTnCcjfu1mdeTlQ98RnzuGo
	 8RDVo3ccNfUcMSy16FK4lBsVzrpXV9y+jMvP88wHdPdCPOP3LeXPLinpF9CkYjRWy3
	 XvU87p4jyJ5mu5Q09yUlvfCKe9q6xv1s2ncdM70OVkG/ciIeDuosF2e03MYOD8V0ks
	 4pg8zXLsxFCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4518C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785984277.28968.12245418510915009637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc1c4f7d17e3832d116596d07c48a9a324a33e2767125e81812b532cf2e35af
Date: Sat, 08 Jun 2024 15:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717859842
