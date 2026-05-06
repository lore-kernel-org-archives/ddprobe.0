Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A325F98B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778060254; cv=none; b=Y0nr2fI4CblxJn+MoedwkmaFbz3502LfyvMxwtnXCQMAifF5qiTRyUYhvnz7vnmegZuXiL2BD5+2c6PEapIf93KguPJr0hMAtnDEvlFTbNfzT5O5xgVu/3Dmv1FSxK8ifcK0pESbRcxyNZKM88qidTc1FGnPHqGB+jAi7RyMIbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778060254; c=relaxed/simple;
	bh=PCK1gajazApTB6lBCQ+cYj4B/OWrlC/0q8/rc92gIak=;
	h=To:Subject:From:Message-Id:Date; b=Wonkk7Wsf2T5xFQCHIrhixey7rSTIc5PTo+3Q7pplZAsoMLjJXLuXB+qIHwYzJ84ggjuwHoA1GqoTRZ9VSN1EfdJTjxV+xzsu8nF+TBOJN9GGOq9YFS+9qF/myoRLJfh2kFXyuvVmBe4R1YxyjZG4kEr2R1ElC4H5qAiQe2kMMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5cNpNvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5cNpNvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB289C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778060253;
	bh=PCK1gajazApTB6lBCQ+cYj4B/OWrlC/0q8/rc92gIak=;
	h=To:Subject:From:Date:From;
	b=F5cNpNvZMdQR126ouDY+A+swhmoNRUrSSSKs5IoMA0XGBPEfEHEPt33DW65EXGZIl
	 /A90BWOTo9NifOAbOhmsIu5OQhl8kMKCebMBtqS8Uu1Vg+S5EbA14FsdkV/gYywMki
	 sFX+NbtefGyeUNjkQ5eEyBJtrWK6RHNzEBxarxtUU0igP0AJ99ZZweoww/Wh2gnvHw
	 UaFCaSnCXGMBfeU2seRpkVHlzr1TGHxAfrpa2KQJRCWcGZeZ5rfj9cebKA0eGRByJ5
	 OG3LDyPJISheT7VBbg2gE+Tj5v+LmIEnvMqjEm3czwQ6LihnO3HbjZGLd2wU6JQzvC
	 rSbK/9FEoePKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA575CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806025368.21701.3419832538430576914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63375311eb2f969fede01a14ba004909fb55feeccef94dccbb3f04a48a60060
Date: Wed, 06 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778060253
