Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D53F5BF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438714; cv=none; b=UVzpHtYQ32AE1au/NgBUvziiZafFkWHqk6rkimOsZ3LioIBai0vihhSNygGxgr4knJd8eTnCaceXjX8yDpMmmCoapyocCRApLvuVF5MaBpRCorcvJEQU2/dC/MRlXCn1+RunZwOFtoG+L9vWBcVAxRljyf/GoDexK+Ed1Ly8DqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438714; c=relaxed/simple;
	bh=FiVmJTrIGrwopuecXKrzZb4r/n/qomwDG7cHspW3Coc=;
	h=To:Subject:From:Message-Id:Date; b=r60bZo+g18krzNihveEGYfHkExHPrhgddGHWTowsMZINKh56B7BRMM05Z56psd9mzZmFormyzXLkfQXG2mPe59GTOULDSmZRpb+nVOAxXGLeoWg3lpUqCEESs/dxSj3jeeebkTtTEOokVRrTFjOw7x2ZrzHhnFoWDIsgx1W63H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPF//k/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPF//k/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ACFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783438713;
	bh=FiVmJTrIGrwopuecXKrzZb4r/n/qomwDG7cHspW3Coc=;
	h=To:Subject:From:Date:From;
	b=BPF//k/DLk6VW96GDuneJqvjdX1Or6HmX3lDdmTdj37vkoDxX3nQEr+2w7I5+GUY7
	 QbFiRnlZpGoEbhkrddFZPIi4Ra+VZ65MVsP++H5MAxgLiw4JPWynxmEmxUu1J2WPm/
	 XlHHzS7Zk1AWMifzdkuFQAgO74jBSxj32JwO1aTpor7Pk/0FvpeHVrNPk9eVKLui0+
	 hO9qxIVctwCu4FHNSi3wOgD+5FaGpHxL6oF5WGYhi6A6o52SAPadWAlTk4/T9FN/D3
	 U7DTcF5jhYyACHEtp1+dSRCXc4NTxKE0pNB9Lr60vKmqJ/UqJk3I96F7rNWKv265I6
	 bSYyl9deCCMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF245C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343871370.30398.10761865799756784688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29d71249bf594fded00796298a9a1e82508b6670d71660ec13dea5e0bd0d3c4
Date: Tue, 07 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783438713
