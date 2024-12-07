Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CFA1E4BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733586354; cv=none; b=FcP96rPi1EN4EigtFgd8/2dXBl6CQ5kWaKgPCj67aF2Iww4dMfMdrrNDdLU/sLSIAHYominsY63bNVz2Ww6D9idiYdflf4uiNUzm7eYAfpo3vV2kQQIJfbGlSYP/Qu2WCb6Wd7j4VJ32OJ/fwttQNgDbWN5H0k5uzwZEiNZgBjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733586354; c=relaxed/simple;
	bh=maFUerj6PVYgAWtUlBpnp0SnaZYl/KIYPH7XMAnuAdg=;
	h=To:Subject:From:Message-Id:Date; b=YeLszsoo6CBK1BRuKCBclebS1naUi4pB7fXiu4bSZXz1vjU+9qebCCeVXC+yYTExtpU0S/r3szwAf9pTyV6vMyTH3y3QqO+2epD+n9Gc7YTRN32EA+uXVPLMaWEbM0xV0yQtRnutVLFaB+9sjqxRnUb2L7QvDLQn9klFsObjhE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H//Ik0A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H//Ik0A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71BAC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733586353;
	bh=maFUerj6PVYgAWtUlBpnp0SnaZYl/KIYPH7XMAnuAdg=;
	h=To:Subject:From:Date:From;
	b=H//Ik0A3pjdQmBRJQVvH1MN8oQGc7T3dCsXCIH2g499O/kb6/nffe0Rf/RznAJKPG
	 SF/e/GjjkwT5+wk/qorpWJar0QEPjjR9b5D6QfEvKS+tDsJt+F+brpgtoxkazXtJ4g
	 n0tETa+I8EdvdkZYHgzbcZWbcbFzrSA842el3KXxIZss1f5o2XRXMBbBCsKqp71RDK
	 +waD0/GBL0OZW2sRUQNnnnBvlJ2QcuT1FRViL4m0L8cjMgl/4Kha8Gj95cuEBc2iLB
	 7Xq+kHFngYwMI3jv088C0wqbHi23ea0665fl/rmLdePW17VDa4xGB6fka9UsnP57iG
	 V/3vT8H6lnPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C32AE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358635361.2308.9785608859619037990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eca9f66b3b3eaa9bf953a5d2dcec1b09686150209e9e2330e4b4a1f00b6fcdc
Date: Sat, 07 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733586353
