Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2594A36492A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779379354; cv=none; b=Y+ZylIrP85hDY6I3ib0puXriQWPAjRl64ZY6P/AwVtW7h4bRKQoope6A9hClSj7cGQD0ce5wWIdQKx3CLuN4EHtFuW5nf/FazD31l2jGJmM6SfONTAv0BIn4kW53H6rIVyvs5CKdTqGGC92VWK27eyOlaYLcIr/99d+NS5PM3e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779379354; c=relaxed/simple;
	bh=13LkqxiRHIIfuoDoICydkUwlp5SZAlFPGwQUy1KlWnI=;
	h=To:Subject:From:Message-Id:Date; b=O2+eVAknVM/lrh0H5ugoadQklJJ3gadv+g7xaIEyFvc3vGLIHkM/X7hd18VbXxg7uITl2AXsO5dmHl3DYzckG4ME4ydo3Ta+KY3mvSu7swrZQ/ezwhoEMwlYowIDQTUrQTBX1A6ZrESJCGhrFe0gVvEtDrcA7lDq8fH5mffAVfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlgqVEjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlgqVEjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA02C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779379353;
	bh=13LkqxiRHIIfuoDoICydkUwlp5SZAlFPGwQUy1KlWnI=;
	h=To:Subject:From:Date:From;
	b=AlgqVEjP0yFcTd//SIE6N8N8Y2nWep3w1nQuzKjGh9oe4tOPe9cm3xhaLvSDK+zIv
	 L5SOiaAlbmhK0kn1DoKZa/BPLzTGqk8d3A8Rvh62bt0U0Figr8k9ajv1YVgvHB+C6r
	 QENljkjBH4o8YZ+cyj+dvsp2sD0XMguk+C+478hm8gYAquZ8VvPoSJewS+FToEdqBE
	 yjplMEo38glL34imD5LTgwYKeMVwZQ0K6ZE8FTxAkI6iUq3awNR+UzrsxtJY+APGil
	 3YgJ5A/DLS4HZTxaUM8WGxjH4cCWwlclQIAhHirBpQLY79mGyfYlDxzayC578hhdMr
	 yi8YrRWTv0F/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9376CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937935368.2933.17158013727422878567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0157d50c62b34c30e2dfe75821a519ca33343375cd30ae4cdcd77102a86cc992
Date: Thu, 21 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779379353
