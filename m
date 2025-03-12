Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB72D600
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741746535; cv=none; b=QTDMqtezB9RUDBVZI0sKW49V5jehDx7DvFuZ2gsOTvqqvaZeDI3RkSl5E07tt7LgQ91cvanSyIIffz67xQmIs2Kzt1W7/UK12xUcSJg4SBbmDcHtvQ0SSLknm/61xv8FVyaWQP2zHpVn8BsayScnwFRo4JCcaAYgtxsIJ56klIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741746535; c=relaxed/simple;
	bh=M4PC1XXHOtxJetrYMloz+NcTlDXYg4n3ugyXn8o5fR4=;
	h=To:Subject:From:Message-Id:Date; b=E5BEqSZr1b6bIKBBBzl+QuQgHM1n5GPchaVHk78szeAgPAr/1wzfiaOLRsBGT7pqTkaV5lsc6t6pPIkczmcbCgFT9eP8VRTXRdJ24WIH6qT7lQ+lal6yESgrYbuW9RzIXLy4NG5iV1qidm2g7dE/aoPVUySMInQPECky3MkyNf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3XEfXKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3XEfXKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B165EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741746533;
	bh=M4PC1XXHOtxJetrYMloz+NcTlDXYg4n3ugyXn8o5fR4=;
	h=To:Subject:From:Date:From;
	b=l3XEfXKDNS1ukMRyKMPmN48iUfdWMiJPzMIERxs6rRgHiEax4XDvVXtDd5lvVXNaW
	 tstGSs01fPV2s/tEC6NC+JIpqOmQY+7neVjy9BYRm22fW02+GbRuHg9w2OZFIokBzE
	 tZHLHFJlGGRFx9GhSHb/6PnJ7iJxrjskIGkeao/zjZmsBRkIy9OG2EwYUQvGMxBlvf
	 huiFhmDsZcxdLbdoc/bEIFh7DBPwqT7w9KzxUXriX9zA31IVj8KiLZFuW5MxSOOiCh
	 P0VMQ+u4HHHZAzwHhlw18N06FRwVrGFJj1qisiItnXGleCAgtEzyFsXac09JCWTkJO
	 /HastCurrJ8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E8AC282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174653358.20204.18087662116402384811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7841399a28c9511b7f0444337909f523587eff0af23f9479cdaff7d1dbeae237
Date: Wed, 12 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741746533
