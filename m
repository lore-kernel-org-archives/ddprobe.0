Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E345149C6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767351234; cv=none; b=A9nsYOjxai83B36XXXoomFsik9ebjR0oeMpTCMLNYaFmKoDLAX36LXlJy3pDQgBDAW//uq382iXNfLRjkOxp7a721J5stoGutTJnph93wQS2Id4XJk9b+SbNXeW+MIPdGF7QM2Yd5pdbUbFyuxOUx+RGjgd7yeAv9m1+dcFd+Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767351234; c=relaxed/simple;
	bh=sC4VKTZcOLMGq4LKsLBqgJsI2uMrK06d3FnnvA1NjQg=;
	h=To:Subject:From:Message-Id:Date; b=d9eyAtzZNd2DrClC0UzZixxf7RMxRUBcthhzW3ZL5P1tk530hpFcCeLYplkOpXHNzYJK6GxYYJukZin3hvaS/b0H20hhNp6pein8exdBh5LwBJ90h9Fmh74bdsGNrQzon6bvCb+XOYeenmIdbM7s9A7EecRG8v6yLirV2zVgZPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYg92r05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYg92r05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD6C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767351233;
	bh=sC4VKTZcOLMGq4LKsLBqgJsI2uMrK06d3FnnvA1NjQg=;
	h=To:Subject:From:Date:From;
	b=hYg92r05ejxrytw9av6hUD4hex9tPoNFEC2Toolk/M6aTt/OPxCKEBJMBEcboHOi8
	 zIQrrdM7IDAmKxVB9LolbIKkYirEvX35jzob84aNT6Cm0kE2ngYy7YceQ6kdywdW2E
	 5Gj7KTjCNbgO0tRRuSp3kMyvqmR5RiMGxyc/k949tJPMULJjqcGks9MYI0Ie3fcETD
	 bjzNs7JENup1A6SNp49NBoWZ6xD11hdDVsB2wtbhSz8ucukQH55LtS2VOdYy/HpMbg
	 OybZ7OuPQlAXr7jGNdIF2nh+YvW+tj99KZ9tzMMmw/F2tstc1RZ5NyIMxG1Ls3dYXR
	 1TgNFAlHcSB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8FE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735123357.22394.17384422249301462549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185e695b3dd926cf4b72b749f2ff9a16e4cf21a9bcd331fb4d4ec8afe2b066d4
Date: Fri, 02 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767351233
