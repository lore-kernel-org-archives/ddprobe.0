Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244E4482E2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726967754; cv=none; b=QuGuHN6kzZM1UuIpKEJSfzbfNDF1xeyROpQlziTgPZ2b+KBPFfKkGDepfpuBGO82i4uWhq9u4kuIKg2wRjD9kl90mkFzqyQbG1qdHkvcZz68jOKQhYfJqayXuLHEoGMvU/8Vb6UACagsPh1ITGB1cJnmUKbrWH+Isshd/VdLKfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726967754; c=relaxed/simple;
	bh=27IruLo5juVm56qPfpsJWgcu0d+PQTXy+JlS47NIDXY=;
	h=To:Subject:From:Message-Id:Date; b=lYSoQ5/BA+/AsMb645iUoRNucRbHpU4kYwPWwBzcgoL1Lfk/bUjMs/PVofXU3tq6HZTxGHVsCD8H8okt6XhD/Ik3O0ugfGTxdsj0HoqdLSm8/fO7lh2oaFZYzf68hvP7oxeuCH129apFa0xtB2LaPNYQfiYldOsW7kFenGr0yek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N38xIOnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N38xIOnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E14C4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726967753;
	bh=27IruLo5juVm56qPfpsJWgcu0d+PQTXy+JlS47NIDXY=;
	h=To:Subject:From:Date:From;
	b=N38xIOnEEJtoM5SgXk87IOLsKXYBakRJ1W8saEVUu6R/nDQoV595XGxg1pMdTHoOP
	 3CI3iyt+HGAv/eT68E00L/QncTdTjfCz/zVPiTGhUGLbqSnrS+wTL5iIp6o6AFAbiE
	 l8P71qVfJ7+CNXfRzFsCmSYDVigfSCmgfvtD/TCaYBwjaZ7L3wIeQ/EdYRxdO98IsJ
	 wJqDuLywcUcWEcPH2NZoJ9pnTUuq4Nvmf8YpelB8NXzxnpT78Jctrm/ye5Id0m1uA5
	 R2XeNAMftjHdPvDLzFa+B2azBZdW/vS0eD3tmjHBA06NTha1JuTbNZ7OkDwMwooyvL
	 E3eAUXJjDik/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F65CF9C6B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696775358.27137.7282903684904444147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64e2c4a9f1a85fc922e66b511b582deb9e295b4152ca3c58ed11f4097d7eaba
Date: Sun, 22 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726967753
