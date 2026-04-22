Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214841E5702
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776819454; cv=none; b=Nz4W/RRynIgkU46g0A7qJXNEtdP57Q00g7tHi94GeAA4hGZmd2hnz+0d2KiBs6CaxLu4UsFSd8T4knC4MpqeS2/cq8j1kmIhbJE4/MY8z2YpIKZNak/L24ZVzz/G7wLjDLuedVlvNb5uLf/xkodD1+6Y49ulBjbn5BaixEmlFm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776819454; c=relaxed/simple;
	bh=/n2f97J9nF3Q0gwnD45dF1z2pE1B121NueDxlDPBiZI=;
	h=To:Subject:From:Message-Id:Date; b=gAt2mXZeq+yzoMa9iOOgJZyrmPLmdA72D/Jq8l9/wpeqezh99r1b62FhNMKy72mcVzlqbY0yhweSv6cMN5dptxNpidUaKFvFArY9nGDs94sOg7PDPjHlyn5ADLJlayJOcVwvY+IH3HHKsMtAnPhzZ2uK+/Q7bjrjRFoOaIOriBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdhioywG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdhioywG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96EFC2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776819453;
	bh=/n2f97J9nF3Q0gwnD45dF1z2pE1B121NueDxlDPBiZI=;
	h=To:Subject:From:Date:From;
	b=TdhioywGCGQgjDihDSBSIkjmlggRZf3oqyy9FGugedrWaGgJ0sbXk6pTNYpk6HndG
	 HpCMck66hQuoocnjmozEpopUJ7qFAL9xQsV+kpr1o+R1Ee0iAzEoCfLxS+e1jhTHR+
	 D2tayxoberw22Xvi7zVBGqKynU6djpJ9h8dRUo3PWY2QLOKBRh2dhxwJ+pAVp6xFo2
	 YPREPk7m+RvOLpsw4EONwWx4WzEdLOdc58RmGezLSEBSyk+qQe+1bMPVvY5rz2MksY
	 azEDtz2BPfA96JHsUCaQzjKGiOG1Aw61g5UChsq532PAygG4TykVgxK3z24Mi5pdEc
	 qG6OyXmNt5vJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A32F94CB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681945368.8030.7800783797690113317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e04994ba0dba483ef4f51684fce8e1f3d247fc74fae94f9e86b3173637e63d
Date: Wed, 22 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776819453
