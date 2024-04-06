Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB05816
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712385496; cv=none; b=peNFeiNp+DL6GsXztGEEbWW/PSFTtnJ44gNWq2RJt3ZA2cLTq1vHVFd+7njKv8dHsyRWPNESggsGjjhHKC2h9/rc6F4mAu1+4XGIRYKlvjbW2XBSosDQB1o7VGTl2EMNar9Zg73XIC0nxy/hjdA+AMc85fiyK2YUTZbzKRaRcZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712385496; c=relaxed/simple;
	bh=nEOOrQ0ggt6NU57khQU+PQEpKT81ZoQ4zWpi6bKBTl8=;
	h=To:Subject:From:Message-Id:Date; b=GmiVOKSuF0ll8ToiOgUI+SNHZybtV5F4ZlXK0GzA/0GEbVmNR9lYnCAoeBjVE0He+HqEOWaY0xTEf2TE1O6miG0cUJ0juRyiz+lNQMR+P+qLHtV6/NmSDX1Wb+TWzEe9UEnY4cBNOLEN9de5u5MNJ7sZFg0nZITrWKoi54sR68o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNsEh+R0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNsEh+R0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756E6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712385496;
	bh=nEOOrQ0ggt6NU57khQU+PQEpKT81ZoQ4zWpi6bKBTl8=;
	h=To:Subject:From:Date:From;
	b=eNsEh+R0h+pmiE0SyPEE5rsC+XfEuChTksSSBFZHRT1ph30r9ek0VPa33exvxPJEh
	 dn9UvnxgIini9xjbGibD8gpKZOOLwvoQRreOfNXM3rK8/gbNe/nYNRzisdCKoVCQ+/
	 yZ7Jn4pRNLq5kP+QR33pMzIzRy/apyW8ezs1kw1aNC43BbXE8rcWtnblEgPoCHPCSe
	 bJR1RY/g3JuOWRagzbNaDPmwuBLJOrEzPv+zJFPQTFwVAq2F33v7vkPovnDhtUoTMS
	 6tE1gu+QjWaLSORr2SvJUw2LgVKUoQ90uzjud9KUlm+2bFatoZcHKCK7ryELyQHIeh
	 jl1lC/5E0RM9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6145BC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171238549638.11794.3590425117511021174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b952d92558bd28ab3f67aa4f8e9093e576308e317b8b8fb73b1fef6560bb511
Date: Sat, 06 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712385496
