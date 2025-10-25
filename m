Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B627732
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353394; cv=none; b=XpX5X1RMHn16dINA8vZiS1xhe8uHHkIPz6CNXvgI8r9x8o6M2mi3bD3Wf273ohctN8H7TzZjiLUJRGdxaeRdf1nGpEHjGNPs8shPerexx0nctzWUH4t16VdESsltK2aWt+3I5AqOiGY2oyyeaMBGXHLJLXHAvqKcpju7Hg19cGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353394; c=relaxed/simple;
	bh=wP2zvnaIG/MKCuF/g+aPJu5dxwFx/8FiyV8rb8lKd6E=;
	h=To:Subject:From:Message-Id:Date; b=g3H7X6sl7jgUZ/GGC2Hp00dNTQVIqYZWs4aoN5LcxjftUNo7Dz2iUUqtHJhW7KKpFkREkcajV2w53xK/s9OEdX6GNeYyv+zA1mhMZ6LU84HJeh9Kisq4aAJBX/881XlYAzzIwoIJns0mq5Nz2SsfTZzRNp5CDHzvtekWgsRCuDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufvsLM/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufvsLM/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761353393;
	bh=wP2zvnaIG/MKCuF/g+aPJu5dxwFx/8FiyV8rb8lKd6E=;
	h=To:Subject:From:Date:From;
	b=ufvsLM/H4gftCMe1AdaabJyQ92dkMs5cKBn0dWhHmRCjDAQCZKfsVfN/2ixcWCsfJ
	 WpFizSoT1tvxAOVo1Fe2XCmt6b8rkI6kcpS+FaaEXZPhFuR2Fv6AGUlKBzMbeLXw7J
	 QfTaW6vwJzvO6aPqoc50E1Iz1oHuX5iLnixJ+45dvzbWo3PQlrTd4e5OaLlTh15YWc
	 TQfLBxRdd04gEAOaYwetSwrr/bZ8rwbl6gwwuZ+QWJ5X29iZ1my4GEpiNNC+d7H2To
	 GzZxjJe9BKj1B2SXRXW4y6lI+JaC03SYZucYna4d5lRlg3hYbQ6kIQnbMI74Ot5xr0
	 jr0Sa/BfZ74BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91387CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135339358.2714.11127391773689595902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91116b61ca8669b8dd69984935730143112357c877afd38269bc33b9eaf3ae50
Date: Sat, 25 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761353393
