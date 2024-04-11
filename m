Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECAF27702
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712812097; cv=none; b=Aw7qhj6KK9dGhZN/DrHtLljbFrAjywHL2V1GN7f2FP5YGegERD5CnAhYqfnWG5LXot+/4RZ0lynXxaJhUYDb1J1kF7Qw64A4WcvbTQrX4ldJH7lcwnfFW5AdNA78OPb7mFTW8SGXDeew+A6z0wiCHuHgWOhofuU+SjX9VJGvUWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712812097; c=relaxed/simple;
	bh=zGNjIpqt8SnQrQWhP0vB1qJ3I7qTFZ0VTAHQ6AahZ0Q=;
	h=To:Subject:From:Message-Id:Date; b=r3dJMmzSAYS/AAk20vyHJG0zzqKwOLe1SQyPYtH5Vyv6efiROSpVpKeZEO29cPU9/g1ztvsi4FCacXVJcvQmQIgYrwOwejDGrp+Stsl3iKmiZZTrtuWE6uuYmCmB0n6pmjKCw4nNKx07T5uzVJfXLJsrTaX378R83K7d7D/99I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0zdLnbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0zdLnbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8A3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712812096;
	bh=zGNjIpqt8SnQrQWhP0vB1qJ3I7qTFZ0VTAHQ6AahZ0Q=;
	h=To:Subject:From:Date:From;
	b=h0zdLnbmStI0oZve1JIb0LtQucXE5griIHJ8e+R0k9Mk2S+19mg6TiDcv9UeNbr1o
	 Zr8RScQ2h3cGyYfUVwocnjFm6NkE/Zvv7WRCRswtfDN6/gjuZQsynxfwLUa2NxCEn0
	 PZpLjzWUpAU5qmOJ6nZha1pz6CpVqA7PtnQRZgqKiisE8FZDTNNwi2wI5xdr0jh7Zg
	 cOefMCQJ+CeOv+3Ggffe5YAlwrQlazItGchITIdUulkPafynFdQNs76kKzfby5vlxU
	 CM9ylXnzJnce7C5vtvQJhFNfQ74Wgtq8C8Vd6RKKt795d7O9D9VAHdLrFgBUdnH9eT
	 zTg7Ff8sfjNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7324BCD1297
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281209646.21855.11203484118851946776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427e5a10f9c4ba385038111b9f0e0030b5e54f618d77731a945ddc6bb437b7d8
Date: Thu, 11 Apr 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712812096
