Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59D3B2FC6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774436694; cv=none; b=mW+lJ26d3f4FlFtFOcxdA/4U1sdrtmqpfAgSnrdAXDuGJL/9NruAGrAiASWt6q4Nbj9B2nXoNzBi0Y+oMeDDFG1aobsF7iw9v5TWkbEt8FtKkBSRDE7pfxQ4Jufmr8eDk5Pdv+BMT2Tm9ELPUdfMAJk95MmdrTT/UKT1b2ILaJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774436694; c=relaxed/simple;
	bh=F9cWNuYCBQi+jA2XVtN/zSsW77el6fB91OlpAif9rus=;
	h=To:Subject:From:Message-Id:Date; b=sZWZclp9Hkk6N+KO9XOu32wFFtt/mInilahUFyCli75TkhQ6g2LsN3KVHPbnk5LmAhFbpT7LQQMpduSuT4arWwIi4UtGnVcKCtUeVNPhxlVqycVN5WSzfHmEClMojPgs1p67R67aGOvDbCr07bCMAdlUNoAG/2417kxzO+RjPTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh8fz5q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh8fz5q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EEAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774436693;
	bh=F9cWNuYCBQi+jA2XVtN/zSsW77el6fB91OlpAif9rus=;
	h=To:Subject:From:Date:From;
	b=Mh8fz5q4LX8g9G/MlO/6CdY4G8hb/653jox+AUZ5LAr8wczZazkeYf3UxTEHKPSs8
	 /oswZUS9H08FqE+Q2a4y7mJS7l6c/nE+5rmLVUCpZgG0zJrFy18r/uAkLaO9B1cKIZ
	 /unaW1VhK8brjby25j4g/Iiac1vC2XDc6g8xPz0PMpeNQbQrygm7NCLA5Kx440kywg
	 oiKS1WpzJqEk428811gi2b/iTsTLMVARYpzIVo1fGuOdK2ZL82yOgEKn69M2ySQ9QW
	 kwkjL7hOybJZ2K5RrGsF/0j+7bJJ7bElFebNOJE0dhVFxr0VUoc/RUxDd8ng7g6/ZV
	 B0YO8gMbfGE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FE103A9A8
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443669359.28927.9255940002320744713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c88d0517244c323f2eb56dc8b01785aff7e6e492038e9cf940c54a503811344
Date: Wed, 25 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774436693
