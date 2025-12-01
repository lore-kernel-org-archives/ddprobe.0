Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E4E1FF1C4
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764579174; cv=none; b=LuIDQfuOw60nP5z37QpmGjWY4RghisbdflyIZy1FXFDFrSg+nRrFt8ojuCQSeKRYOa4EaTPsOwp95V54og6veS95FM3JD5Buv94r1/ae3Zsm1oyCJ2jAFn5HEMHDoxL2Pxd8UMeRlg83zmzBcdONo1XZyu3XkEKbIp9K+JgZDLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764579174; c=relaxed/simple;
	bh=aq5sZ6HgEcYDYfSTAyD/rMrbmibUACoU2Ywv0P4+M3E=;
	h=To:Subject:From:Message-Id:Date; b=ExQFBGU2tMq6eOl2xGs1c5kzDsfhZGltj+Rk0lvjssdiSLWNo9/Jo8avdlpqGVOy+ef21Yq5xI/iKOwovO1pER5+XXmkFaNVMAh8do6iBKOfTe4waBPfA2hPKfqmAcb1qieXd9CcchVNrVGDzsrr3Qcp5LK6Zz+R6CtOuMM6p9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqPF0x2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqPF0x2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764579173;
	bh=aq5sZ6HgEcYDYfSTAyD/rMrbmibUACoU2Ywv0P4+M3E=;
	h=To:Subject:From:Date:From;
	b=jqPF0x2I3w3PzikJNrkk8qZykzhsKY7lmi+KpFANJyhzm8UtnY78x2OPqPwqD6eFF
	 JQtvjXWaQu7ySKEGz4aKbWcX3WZIS9YDoK9mUaMikeTj/kKGYKqu1nA2OCrVvF3IF8
	 YVckfsxQ5DdqKdrZADH7a1I3wbLcialc0+o8oj68qktENmD0P91Mlep8n1hdANSmAj
	 i3ZoJbZ4PQVSEexkipCUP/ygOUtwSCEtkjysGiWcyw57L/fHdQ0WFk2AeFXjHaZIDv
	 j9484MkSBx1oXDp4G7NICLh/fU8QmFaUmUWWTnYgj4Sa8suRoToRjdN+HF53GRXz6c
	 uLlm8o/bTG38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E6D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457917359.17982.12677782861243401999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94bd3049e72c6a537f4595689d7e74f1d89021ad0ecffd40014f5986c7df466
Date: Mon, 01 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764579173
