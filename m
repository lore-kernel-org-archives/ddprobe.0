Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F343914E2
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779489754; cv=none; b=hbsNNNB+7uHH/8hWTxWzeUeMW7loieX43xVMtT/GZIrUly0Yp1IfmWqnG9Qu1SJk3S5I0aZLjkSGtzdyLhsceVrjRYAeSrF25xxNvOvNH/vh2SEOEsnkEOjN8aMRukI174+x553YJSfjRtoAblJp9vP6PUmrBmausN6VjR4B2yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779489754; c=relaxed/simple;
	bh=bSI/1ONm5uLbAW/DGau7Jw6+jMePixyCxc3lPj7bTtk=;
	h=To:Subject:From:Message-Id:Date; b=VeGmPsJAErdQ61vEALIbQ3oM6BGsaRMNdrknFiH5kJ+8Ug6TYj1k/t1DX5VvVtVxj5PMn6kDP1jO8ilOba078iiW4m8Fk6gfTA7i6HacMS5E96/iFQtroyvgup6A9OwrSIvmBN4om8ogBKEbzmSy6LyLD9BdMrkbG69vlEbk9dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGirzhCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGirzhCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC12C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779489753;
	bh=bSI/1ONm5uLbAW/DGau7Jw6+jMePixyCxc3lPj7bTtk=;
	h=To:Subject:From:Date:From;
	b=FGirzhCKKNd8/JXFb67z6yTKhWhXVyIbFyOYP6Qerejz4dO4P2PA5FNupW8KWdDGV
	 Fw3+ZIFbrXIBA8HtJcpsQ0mNYDU0Az4Ii0vUmu39mRcnjMWoVS8otQdgh4BspkMiZq
	 8C5wFlmnPaP7406BHPNB70Eqxts8TtQLQTZZ/IFKR55Mm87NXXw58oa0hxLNPpHhvk
	 H3SwvuPv1OXSREqd0wqkaa7jCwNpzuS05ulXQxLmy75CblSLSDuIryORmb+brNbWG9
	 fmKcVrKV7EfYl0JQcygEoRQffFqLesf3fl8vCw9o1KVBELtsfJ832shEsnXpuSgL2c
	 TmUkcHntubR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2956CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948975372.23343.1739280469352157521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da1dcf4da43f6e848bc8b28338de7c11f88852ab4c05f8513fbcbd1aace9804
Date: Fri, 22 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779489753
