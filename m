Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FA52BE031
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770360234; cv=none; b=DgwGZoK6bzrctKWkR4CO5obPGZb1DQ6lPkf8OAiPeQJBAQqyvCRVcipSf1cTDwUPOHtH8hZX01wzKbRlqwl+tIjcgFlBbN2yCGW24PtFwwUT4DifXCzJFgNJDMxPk76I05eGV7GK59plPz15JPGayxe2HdzDoEsyN6w8tVRnh6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770360234; c=relaxed/simple;
	bh=lsjsN19crrVcpAPqXMY2Uy5T35dCchZakE1WQF7eorM=;
	h=To:Subject:From:Message-Id:Date; b=YGa9yj5S98u1wd+h07/SydB39UP4ZMlxllftunWVikhkOXk+3fEaGGfXaEQ4AyNnCtvjJJZcBDlUFuKcImUVJgMF88Eu8KxuwFAm6A1TK+DxTcGP2cKSDzrrzTxsk+bLmlZ51TbfezzqUxMNMT2VQ3hpRomRZzmjjDl4zhUVoPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsPRFD7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsPRFD7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2393C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770360233;
	bh=lsjsN19crrVcpAPqXMY2Uy5T35dCchZakE1WQF7eorM=;
	h=To:Subject:From:Date:From;
	b=TsPRFD7a3XAABAv/oOYOt36Ltvtd2ZWun2K+EserKFJqUCU/eorH9WousKW5mPP+n
	 Be9DNHR8PZcJfJ8OSinJ0CBs7l9/o9QA1uAAEMhmYYONU9tKKXi/CMYveKcaE52NTU
	 3Nxyf6Swei3UoWWt0tmVJNIGyv1Pn9fJbjwDsriN/3DoAInPtUmLukpZV7e0+7ZoiH
	 8FZtmrGsJg/zY/v3oDPX2mLRAeyViEIVvfuPPYaOGyXSQ9zdOPlfT3H6ovv2xliFts
	 VF1Qwb7CyosVyxy0QCBR6ocB8xCzsV8R4jUh6EkSZdKlWWvCfMiRu3JP6ghKkmyRnk
	 5/YMbvghucU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92913EB28CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036023358.3922.18368743446458085100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20637924076b3ba3334a92bfa76969b2beafd38f51c01f9a1b1476d431af86cf
Date: Fri, 06 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770360233
