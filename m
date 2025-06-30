Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1491627442
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751250594; cv=none; b=rDz3AN23BvV1dBgmufTDnx2U4cUOzUqRUFHYw0D7t7GvetAKtzOmQOxVnx3lu6E9Eyct4IkfIDAY3fa7oub2XQbG7UG5hR6L90eLskcy5CNvtcroDaplnLUsuvUnkDCIhRxIb4PBiyYLtZqRs2H5AM6DVeWn13FGMxqY1imqOvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751250594; c=relaxed/simple;
	bh=Ezb99MUVp9szvS93RMAUrqqY16Qm2dTMRqvI1V8Wpkk=;
	h=To:Subject:From:Message-Id:Date; b=efLUvMdvOKa2x0c18+mUYl72IiXgdxdmkNXXgABqzW9VOz7JrmcwnGaupN1++kCLChG2GmDDeUuT2mTWV6xNAJ7CYbP3aQ+SY4/AT4Lup+eJpWiuo0RkOuC6Ceaf1zR2bPaC1t643znhy+JOR0B/lRf31ZpnzMoIrZT0IL7y9yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaDZMmrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaDZMmrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751250593;
	bh=Ezb99MUVp9szvS93RMAUrqqY16Qm2dTMRqvI1V8Wpkk=;
	h=To:Subject:From:Date:From;
	b=uaDZMmrIOvgJtwnfNGH2o4rcVKYtPzriNaKNx6zFSwFbM7B3jA/K2hAvD+C6ul/cK
	 sGrGSzNN/r6vkTHy9BQxz0Jy2TFS2wluN0hw1JJLioqE4cqg8ENrA4L69GIJofZxk/
	 ngapysI/XIk4Jeyxf0ACkJGem6QbCRgQSjb+1plS/2X9MMvvVCK2EcPbVdr8MPOrck
	 FLb73k3FjRxo/GsiZzv3rNvumIH6uDZUGLqKUH5GdfagaoMTAQib6H+BReXv3WQFsj
	 W1wYifgS7rbKlp4VTTJe8GGVQstNKVhdhNSWIF28cn4LvmJkjhnrgcWnDi08e2qzUW
	 KW0MpVFmp85gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECEC83013
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125059358.14187.15787776586153371224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4fb192ee4e412a015eb0922d813e80f6c333d008fb67a54d59bdd206de5fb3
Date: Mon, 30 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751250593
