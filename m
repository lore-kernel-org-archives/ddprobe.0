Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D4D212F89
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754039394; cv=none; b=LgfceHJUEHFaBxcSthAPxznO/M6yUfY9+cA02+iloCR8F665VHREk6+SZsIl1sxO4SGUZi357jG0w/2EEYAtEEMjpb/NcPSvAEwE32d8YuyzRIMV+EE79I1dwMxkbW6t5egxqjo5pmQi/sKNJ8lyhqUvBP0ji6d7s3PD47dHjZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754039394; c=relaxed/simple;
	bh=Xnd2h8IEt+FU0ZWYx+QUGGk/IOElzENoIihcg13HOUY=;
	h=To:Subject:From:Message-Id:Date; b=gNc7cd/nFSo2N3t2O5l6CjPsR9Rnw9VguAwrluiI25IgdALtWxm012JwAomavt2p4dA33qOMciZjnSIoQ4pACBt/Go1NW2VccirU5bsEGRvNnSClw10loRJX/H7iwsWH4ik6WKy9qGFLr/3dzlNwdB7BdFQfiAM4FvGHZalcFn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxyHHuNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxyHHuNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0829C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754039393;
	bh=Xnd2h8IEt+FU0ZWYx+QUGGk/IOElzENoIihcg13HOUY=;
	h=To:Subject:From:Date:From;
	b=hxyHHuNR5Se1muxes/IQwQQxdt6X9WdIP3s0WLE7vmk+XIHc/ZEDsE8ZgU8S48U2v
	 gQvfAFA7ckm105jZQoJqpeXHM0GEACrht0L7r9GauvjjKzbtHZhGk7r3X95Ii4Uj38
	 sDCEewhwfcQwXM2W1XjTPqzyNpA7PIcwJCJkGmSlA1A+55xMG6FLeI9OZJrrPvUrbs
	 pIaH8ln3zJ2PCntcVcMdOZeYBCwyExnQf8dNBisFZKNNUg5dvTMia29o6YtzKMmGjn
	 qEDEFXsjJYusE+wK0MY8zbZw2iHCE7ijOqE2kz8L/0nyVOB7kdh6epPxNFxqc4opFu
	 UmI3NGdodc1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140CC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403939358.8794.12437053024086113139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cb4f2836447ed4f9bcbee1ef382b971e28bf796d69e59c120d8d3f4dd0fdfc
Date: Fri, 01 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754039393
