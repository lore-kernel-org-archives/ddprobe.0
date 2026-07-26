Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF55149C6F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785097834; cv=none; b=qWnwViBiRo1K+muLJVekRH4uLlE2Wr2p9HRMqR0VRQ2trFkmCWcDpsnNI4hDuM54FTI2eRI0eHvaNIa8Id2DMWsqU+cKumHiQzJnBxkV0kXbReYgEW/R7kNzrMCLCyd0dh2kcQMDvN0lOuFPC6DMMiK/wBfTKUQv2wfV8HCXmfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785097834; c=relaxed/simple;
	bh=ldoh/i7nZDFaZzzojdghncp1DmW2dYJynvuGIRDTiEU=;
	h=To:Subject:From:Message-Id:Date; b=IR+RXEcr4lh/cZBde/vYGO9llJjL0dpAe/4RQMGOELqfctgrp5ryJ9JCP4x2ZFoNmDHeXGFjYhr8BjVRG0fjwjB1po//nqa9bh8TvjC3MhxKDhYl500djjXseM3IBTYz4UEewzUhtetNxZvp/2ysHlxaNNv0fDXffg75Ehe8m6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVvi8SeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVvi8SeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F41C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785097833;
	bh=ldoh/i7nZDFaZzzojdghncp1DmW2dYJynvuGIRDTiEU=;
	h=To:Subject:From:Date:From;
	b=aVvi8SeIaJqr8ncxsvXsUSEcOJ3pkqLXdHX8XP3gmwPKBjGrmj5k85zqlgPO4fHnk
	 Wj4aK7bEAgM0Lq/qQHwAQO9DpITvu51Owvhpg18bYoTO8j1Kc+NWgdnliSHgRoSHcx
	 MHxuIR//QonU6Amva4D2D7kkcYSr6qSqsC48FIJrhRZbnmPwf78g3n8LmYaWQqXBX3
	 ICclcZn89kp7tQ45CnDNNRoE8Xk9ecfMFpA81MTsJLzeTg1ohDKBtYPsahhpKSyDHZ
	 1/fuBUEkq8PxkH3xsz1/o30E7mKhrJzbhieWAgmRqT4jCy8uEcuIYgQGNJbFydHXbD
	 hOzyBWcqIhxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8302C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509783368.32451.16680273255208480187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8033ee6fdd1f7907878690b48c85a293172d942e4e0836d167a4f4bac536e9
Date: Sun, 26 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785097833
