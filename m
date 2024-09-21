Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8CDCA62
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726893354; cv=none; b=ky5qlyklNkNcS7dgwzVQiev1y+xb6atoOH8j16xJDCB/0t0t0OP81rGYASqzgoon8k0XiX2Z5bmeQK43ahDFTHET5/cNACeSveib2je+vcwdMKoR3jPsfmxNJ4psESdHxs2ryGMOHFOAgJhoKROZRYMPg2TwqmjbLOef3OuLw1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726893354; c=relaxed/simple;
	bh=zOea6LpUCRhOsLlvmwOkqWqU/E+reBLYjv7LvDCB5ps=;
	h=To:Subject:From:Message-Id:Date; b=KD+aMxf8oi3NKtlukxWFJ1S8gLOkZlshp3wwSD+TMswOCFDtP0L9AV4sjCjHi+9ZUf/T5Dnhywp8yybFk310QMdYlxbBT3b03iwJKcvDIbng/11q1Z46thVntZUokbhIKJm9nC3gTWSLk8uvkvTVYjMOgfljXSp6n3JGR39EtQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKdnF/aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKdnF/aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726893353;
	bh=zOea6LpUCRhOsLlvmwOkqWqU/E+reBLYjv7LvDCB5ps=;
	h=To:Subject:From:Date:From;
	b=VKdnF/aw3P7UAI3gDYebBy2bSEmHHPVm9P84//Uhgq0ZrG5VAL/62KEKyz33L7Kyy
	 Uad8Q398RtmJXPmbuOMnKGpmkhkZliJi5yxszWL8AKvwOXYved1l28axXhSTDP8TzD
	 kZ8EW0ptYw1bnhNW11L/1wBh0XGZzhRsGlqJiacysP90W4SOiGtGZv8K5wb6IQViWE
	 +4DZV5ZL7KmT5btQ49UuK4iCaiQubqYxe6lCdRyvBrRpsJCopkiwDPxT0weNZPwchS
	 6VR4BHhVVVYrVrLWE9F7MwKM5MoL8AjgFovk5/6+8s/GF/CziNNVT2wjdFZMb2dF2K
	 pwoMemReuvBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246ACF9C6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689335359.2154.363410304744147629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f5431d07d8089d70be65365d679211399d67830e29099267dd4d60adc88eba
Date: Sat, 21 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726893353
