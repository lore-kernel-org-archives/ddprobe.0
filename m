Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D582900AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752700194; cv=none; b=ojAo1craw10RRpL3TEObgT+tld1zAlXKRffLBX8T0LLloHOZJeZwEUbSv8+tKB+xx4Qgf1M4FUvYZNt413gazqezUcZWjtqgrlrmwzsbSWs0+zmet6sEd+bWrwrOdrDnW96d0Zoyvkdtha4PXp0D21xLTlJ3E/2qjH3sbPWNEYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752700194; c=relaxed/simple;
	bh=GKEwdzFj7ELb9Ykeop20utmpQ09BtOTsMK7SWhfVmkI=;
	h=To:Subject:From:Message-Id:Date; b=F4SAKlsG+52zusr/O+JXOik2cYuEJaT9PPU7VrsJ3H6icPE5abP1tt+zOUSd/C6HJE5R8yYHkX6VYSwP0AFMW9D+5sIdxf0N0lhUF5fAK4RrXCfXfduOw/jGJd/K6/IFx77BCBlo30sCYNbBKFpkW9nmbS2g9kexPFFD/YZQVvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdJ7PkxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdJ7PkxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752700193;
	bh=GKEwdzFj7ELb9Ykeop20utmpQ09BtOTsMK7SWhfVmkI=;
	h=To:Subject:From:Date:From;
	b=fdJ7PkxAIKa7NAK6K00XSjI45VsEVnf4K0rybZ5kuS3iJgQQ/gmbuh0m2JQ/3Rtjp
	 EqOwr4ueDg5nG/edYe8ln/uEbqYsGYsWERAAPCQOzgICCKZaHFDDuTFGy0CJIiZpPu
	 +WcyMn9eoK7UmIFrVmkW0dr42gqWromLuog9KlWqD0iTmk0r16G6l4tyBMkapkruYz
	 MBTphjpKWJPDdqg0SpyrxHTGhTZM/ZO2ulwxVjMckbmZ9MCVAng/thJ2lIRvIOo/D7
	 lh2ikUVBazXnZOp7SzAcSDu3D8pw7Ys/rFHpE+7GNwlyDe0azVclFwkxsb5huaG7DJ
	 QjMwtdw392raQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FFC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270019358.3172.14319370230506549339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b385ce03b2b3b752e4def52892902a99e4953f2c1f8634c5c3fc9325630ddbeb
Date: Wed, 16 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752700193
