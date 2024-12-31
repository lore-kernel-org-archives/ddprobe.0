Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3359519BBA
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735658154; cv=none; b=M0U0B4oPisvqihbvDTzEyB+SDtq2JQBfoCfv0I/jeaHISlZb/aG1cgrhe3mYXxrfLGb8JWb4THPrcoVq9Hc6iZPol/Y8iWNj8cbNZSAInpZbsSILG5M4pGRDMaGv/nzL6u/yxq4Xg51TdKVQ1QugGFv0eBbPPreF87FoPc34tDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735658154; c=relaxed/simple;
	bh=3fyoeuth8hyUcs/JVEdCMS3siP4X/39wu6Vt0a74ZmM=;
	h=To:Subject:From:Message-Id:Date; b=lzrCmdukU/efzHOfh09rpJjygvIq91kHT1yP9ubtVqVbA4yXK3oVMCc9rlzjrDdRig3mkZBQbbZC02cvOrBBWvDeBUseimLdA1705AREIMy7NT5cy2RwF4k1IF47tGSEj/2yNggDUicljx0Id4MUSmZynHRST+hBMA18ZVXGnTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvRt5yX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvRt5yX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF153C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735658153;
	bh=3fyoeuth8hyUcs/JVEdCMS3siP4X/39wu6Vt0a74ZmM=;
	h=To:Subject:From:Date:From;
	b=PvRt5yX5Vp4wni3w2eSOVglf/7gNsI4APCqdWfxHV32EA3w0JQ0AWCz94oyEnhspu
	 qyCPjsRq06bIwOSrQMS48TSXsa6ieGLgAbadjkisniFHtr9f1wVsnZZJPIbX1i4bkO
	 5L+aQeLKjLnr+z06Wwo1Fjup3M7xYsRLrBJzwAYmW6dsUTaggAOCQtGFCIiCKiH0wy
	 7zxWKid0jf4oAA16FTyOyOz7DaAPq4jZ7CFe2MVGGLDpMvTXA2i6Ai4Ep1bPAMR/tX
	 0ve3aqLPY2xm6Q38tB5YQ/aEHpXghZB69T5FcMy1DzVhMK7Z0lPF3NxcjjONo/aguv
	 dGnAU2ng1YPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98801E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565815358.16346.11481459407941579047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5053b676fa55a00292ee23ea7e4f9738dc49fe57e475cafbdce70361b7f3e013
Date: Tue, 31 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735658153
