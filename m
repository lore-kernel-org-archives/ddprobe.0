Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02329D291
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784762974; cv=none; b=E3Rv0+kaUT+4U2LTflThydRHxsfxDmEpgSSZu4Pr/GWXFWMaaxhpA0c1M60UxvFRIe1KLVGZRYC+qO3mOSzkJRGOb4bXLc7D9bc7y+xjArNH25KXdAXb4uPQc7wwC0Phric9/K04dYjPt2yCd6Za5wf7QLbwnE6ySgLISZTIRes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784762974; c=relaxed/simple;
	bh=yoEf6QsG4wJQzHbNLAs8uB46wkinT3HIXckoHSurizI=;
	h=To:Subject:From:Message-Id:Date; b=usHjfscFVrRl8EzbWmbN29EU4TTKr+Q6/KbphnExuMHUm5mMePEFF4Tu7T4Trm96pQNYSTQ3jf2EoBA65EzpAWFk+0Bs/Z4CdlkLDNpsKRtrptKLsfeXmhxjEC9aLD2aqFwQkObd0SMplHl5aIc6LgvmkdDmcba+51m5OFsD8v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4ux5Sg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4ux5Sg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40EFC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784762973;
	bh=yoEf6QsG4wJQzHbNLAs8uB46wkinT3HIXckoHSurizI=;
	h=To:Subject:From:Date:From;
	b=V4ux5Sg6fL3DQRKoTbYgf1Aj6cft923NQTynfEqzxDUE23al4GIIk6YqDq7lnqga7
	 2NAoNTFNbPvoo8U8D3EmsRwVuozO5fNZ64OPKi3P0FiEr/TA+apCaOx930ONIPeKgN
	 MfWHk512lFu1c8/5ThpZMKNP0lvKHQiPpMK/XhvVnQ1DDc2EZpzAlmQMxjllXcKJY0
	 /wM1iJeqRITBji2jXOoYRNCpuo9VdGkM2ynEZ8+zzmCEDwEW/x3AZKSINUVQMt7j3r
	 uI2++Jff7cqDaC0EONTwpvmZlCgOPeNWt1+5ftbZgrj144jMtoyn2k8HFPacHjXCS6
	 gLSzNpPSGruMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA016C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476297368.12749.15318913528991835620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8de6d980b22938598f7e00ec40c79e05a5f3b46adb0f53e7bb532c7ede8aa0
Date: Wed, 22 Jul 2026 23:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784762973
