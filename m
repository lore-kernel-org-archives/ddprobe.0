Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2C2D239A
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756833594; cv=none; b=hn7BWcmLDOJeTwa47N25WHwnAR5TpcBQYbI1w7GjQYmEDeUBnwmDLvIqDB2Uf3LCJEtOdFnl8X3cGSWVqs+KS5RgIlcDZ3g8FvrVefeuntUKx95jwsvOPFfDw1cfn3bISXuyIR776ANoB0PS1LV8ZdnRtCf8Aj+HxDAG/Gk9S/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756833594; c=relaxed/simple;
	bh=XU8ar0/iNJ3Py8qVezh5NmjncnkARRyeOEWtxEiuo5Y=;
	h=To:Subject:From:Message-Id:Date; b=IL8eyAtU/pRQqJjWr+ADSNNgkz87KIlKDUFJUPE39hwanRigaK0FSLD9AsnkG/8kikuTZh03Lry8lYO5SS50ANzMjnkRk8YXAaODmsXuABPSYwcnvlzm03Kv3t5HH+Y5J9WomQfmZRCDe4s2ywBZzRwM6W4LKk96bhQsu7aSsL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaOO/gmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaOO/gmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B968CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756833593;
	bh=XU8ar0/iNJ3Py8qVezh5NmjncnkARRyeOEWtxEiuo5Y=;
	h=To:Subject:From:Date:From;
	b=GaOO/gmiJnedG3pEBjwiwaIN9kw/OZe1ZpzUC8v3pjvQuwLtGGVhCcMGGtH6AGvEt
	 yILPhJ4iyzXDw0rscqmrCce1BU07LMPOFEQfscoWqM96Wegfmrf+/XIJIXlHGgCqfW
	 WGcfS1Qfn4TjGdPYxexEBiuTYw/IOSEJvFASO9m/fJfIFgMfQEheLhBjk2xmEyxp7n
	 3mD9NvkDacGr0OeHUBx59WCwaUXhqMWIXY/GsIJWL/qfzD4Kl3AThp1SNH85c9Thdw
	 vDXoD3gUSrsBRbIi19jxfduP5S8Qu6kW23J2/0fBBqu3mGqTbPx4XT3aUwsZAa3Ryb
	 HwRMwljqzv01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FDCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683359357.11955.8394801644549177016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c63fd9d7a4643e53cc4521c575f7e8d156d6ef8e80d62b0a12fea861ce3a8b
Date: Tue, 02 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756833593
