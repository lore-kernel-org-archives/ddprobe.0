Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E3AA95E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728114354; cv=none; b=OWshAoue9k8Xt9OY80LvWI5JZlhaQgbao+AnN6KkKrZEtWWI2WPjZW1ZpKUn5GDZyzMas1mHmgaq/gbu40uxiUV/7R5VhrrirZlluNbDnHpZ2aBX1mdbodEUqKNMJ9SDgVQbuiexe5spv7D8TFMiCM19STNnp5ZAt+ej9KzKRsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728114354; c=relaxed/simple;
	bh=GzwLEDkdjj6IaP/OKFSdDR4d4cQa/rW9vULBujQXl40=;
	h=To:Subject:From:Message-Id:Date; b=KtV345DOGw/S9ppaxFdjIEryvU7hjoxYfaoioUnT0W81uInEEQODT9m9RIEHFPqAx9tDi3+X7t2/pl0jcqWd9LPABguovxACcQbjMdOAqFYXMcWBKlK2n/Dm3Irt9/MPh2NZmnHp06a+3aK4s+eI4tsi8uTXD2Lnfh9+hJO2oc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfqQTv3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfqQTv3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2226C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728114353;
	bh=GzwLEDkdjj6IaP/OKFSdDR4d4cQa/rW9vULBujQXl40=;
	h=To:Subject:From:Date:From;
	b=GfqQTv3Qrib5uSx9exbUVrDuxrcHf58B2WZ4fTS6Qwtc12nz7Y2Dg8AMmOYgeI8c9
	 6+XKBAEH/5B8Nlk66TMb+9nJtiCr+8VKNOBf1yH+QnnhOqpI25sozvX+thZQbKdb25
	 udNHZFtid81NHwlqdCgIT+h4vTxETjs0OoiPP5zRmIWLw29wVlgL/hOU3LtK9bXsHz
	 tOSpCdbtatedUIWS0PQHG9oyyDzSFN9GkueL0sTtnkzD8cma/oz0zojgd2EVicNwuP
	 iB69iPfCV+37iT/Zh0Bc3nyN7lG1/VjoAW97GfnlQHJBwXcU/aXKc5edTpnChVPp2f
	 FDhSuYFkp82Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E952CF8872
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811435362.10396.653561440074518046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74602f2451967555905f076dee68ae40c511774deb69db9dc7ac009f2e67d66a
Date: Sat, 05 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728114353
