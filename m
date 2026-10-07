Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB4A351C3B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791346834; cv=none; b=hjwPd/aw/srBhX2vS9EL+OT+jXXWidHJtA17l+r01x/qwe0EHmIbbHWDxiJhGdKoFLXKz0GMlm9QftcCIKAfuX3FCIyaIesqz/oBWG8592RFx5E1oYPkvlm+8EF/CbFMhQ4MSRii/sstADtX4mhse5UDNGzQKUYVdmZXucA9rZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791346834; c=relaxed/simple;
	bh=8D5Uf0DEPm6fs9qsrAFxXU6bmG5GDgxzFT1G8yjZftA=;
	h=To:Subject:From:Message-Id:Date; b=eBtQfkLiZ2hi2Ecb0LZwlbVHQSNT25FM9MCd3Lt5+9Rrs9imbeSvy2BwBbM0RS/zRXn9hgkY4beoL4wdDZBJ6RI5YC0Un+nDiybqo2Tftgj+VbT29m5kTISzcoCRakZXVtCCpfDcYDT+Km+CowxOAdNawzQxiDwvkK9zeHeddgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIbcN8N4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIbcN8N4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8F0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791346833;
	bh=8D5Uf0DEPm6fs9qsrAFxXU6bmG5GDgxzFT1G8yjZftA=;
	h=To:Subject:From:Date:From;
	b=TIbcN8N4rimGWYqjaJwltDEDdbAR8SkUw5lxKQKs1QjKJjw3BsN/Bfrs3vXmHNCzA
	 eOqTT+q3uVQFLnh7k86JFFx/SxtYDQudK1GVvbr9OcXpmwVSkbieP9ylJcF3aadvd5
	 +GmM7lRk21nThW2zPMxKnQId6fNo8l15vqN5hzp3ogMFkUdqibpsxz/EVyZGOYfAzu
	 cdURNF7vvWcioWLfwKKZCVQ31h+1jNIxieCI3c9Sojw+jALKXx9DgcNEf2j0e1Zt8H
	 E1oVNQtCPxhS+cEQum1QdZ6LoAkcT0G64kFe9Qf5eOgAzLDDBXVom0sXdZHjMYWSAn
	 TRM/4mfXIA6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39FFCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134683371.26641.15550656647231887424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1542464d9717bed9a6e87706b7c69d200ab740302beef031811386268494e8ee
Date: Wed, 07 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791346833
