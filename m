Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6465258
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714820543; cv=none; b=lxrQ44Qz6Ef8/g1RB+hXp0oRKdcqM9MIAiinCztawbranF1Pb5y5z/W3BsALh5csy6mmrwp2o5HHHXvGhTiKlkfc6jZmUk1SrxAkY+mfqGNCHRTFTaNC0MkXY8zxNOz1Ysh3DGM8gm2iz8tZSkfPlUy7RWY5MJfhONgBfLvrz1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714820543; c=relaxed/simple;
	bh=R6MOKl/XSyoccjZjeezZQiD5fz1eI/oSEp7Fl/iImPE=;
	h=To:Subject:From:Message-Id:Date; b=n1fsXG9otZ9fQ1+p9ZXMAfBObDcgPuYtgWNYNEs2TOweWRGkbCHogG5i97juWRIwUWg39HRTTAla77E1kh81QtPxpi+KDmfLvaVWUq8qG6kY9j3i37aSU5N8NnabfII6997ocK/osp5BiiRemnwATh7YSIxXR7mVAq5J3XevRn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/2SJjHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/2SJjHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6517C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714820542;
	bh=R6MOKl/XSyoccjZjeezZQiD5fz1eI/oSEp7Fl/iImPE=;
	h=To:Subject:From:Date:From;
	b=N/2SJjHjmCnjCASR+bVnHa3hEscTbOJYyeP0KNY72Hq70atjwIVmrASs5S2bFzwof
	 wrLxlk7+65Iew6ycFoVhGmPY7mqpCeczmDV8UJ9A67PCWPA6ecnS7oHgrfJLigBj73
	 xctKNxoiT+QJWGp0e/+/1GxfR8KdrrHEyP2254CJyYfPnPx2ye7bFt4Jnxfg+PqV2b
	 gHGlwqDAE1YV+MFSgCy85Su0wG0pEUVhAi8AoOiIuoNV0VRvYcJoICJlJunG29YA0p
	 iberCTz+HigEsYs3k8m6VpBTPPFIOVzUBkaVEEmRzTMPP/4PfrHbpZeeuKcTUOKiX2
	 e7ylPCWRC28iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05E8C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482054276.11161.16366340019042635846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae323423bf949d9c46773bb20be9df5f0012e9772a290ca9a08f1565cfabd2e4
Date: Sat, 04 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714820542
