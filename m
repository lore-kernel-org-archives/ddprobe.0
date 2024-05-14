Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3361DA4E
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715718743; cv=none; b=TGpEUv57QiQaRXWPVRSwV6IIo2/Keq33VoyILsZr20MF1E4npCNi01OfCk2o620q8TIyzzf6S32Ja7SJ//EJ36are5TeYE3I5O7d3PLoSK41Vska0VO7PQbO5sN7o3mhdeOIkmjrHnC5Gwgi8rLXN2cI1PoGrhMF+kGbLBMSHuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715718743; c=relaxed/simple;
	bh=3Z/TyDhLXI0ZR0Tj7N+Od03F07g4aupRrxSp+aisxKQ=;
	h=To:Subject:From:Message-Id:Date; b=KFDsluoYiEAVR09qxXzfvWoyRZ92aI8tXfQP1CvWRK2CgCzA7GyB24FzMMJqNqwZyxmiNF6DOv++i18sy7tDOu35YLjAWN7XK0q95ZjoOjP+o/PvK4EBnyaf7F4xXwSsouHSnviDq+v116YdI4fbJLu+RS3Qw7mFfkatDoagJ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPqbQG4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPqbQG4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA20EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715718742;
	bh=3Z/TyDhLXI0ZR0Tj7N+Od03F07g4aupRrxSp+aisxKQ=;
	h=To:Subject:From:Date:From;
	b=FPqbQG4xdSgdrXb5ChPHlgckdYdPAGV8B68IHIBD6tnBbv8s8jaVfhkxPmvper2iK
	 4f+uO/iCWBSdFI3RDHfv/fji1VlRq4rXVZYp8I3KYhrGzPjLD6UFGfpMJfxnuNkafZ
	 Ai42GRnMiGFuz3uLVu5jMJPnnaqJWNuDabINt0+M6TPVIaDkPatxPEwaoC/A/tVVCz
	 2SmFrSJ1NPHruHG+H1W681tFGQxj5Wce+Fu9cbT+XZwHiWnvF484Bq3X7qYGbMj8bn
	 3UeR79e8uym/seyKrcL2UgZ/eTkJs1IoAbnRjjxm7WW7+gxe9GXcyDzowSbNkOo34p
	 bmWfSyX7CWsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6024C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571874280.22338.10092418940243403089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20eb60e35ea83dc52ce53767adfc567199f1270ea6a6a6e51f6c4696c7fd51a
Date: Tue, 14 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715718742
