Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D10E28F1
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719025343; cv=none; b=XQHirtVSbfikkGQqngJZtoIKSRkyeIQfrfrpP7Piw9qBwvUlYN6/RGH1RLBZwGoTCoU10MAuF/sA8pHnqguHRXCAz6Mt4Vxrew7lgdjCcC7n5uoIx0M5/+yIQufaMBX/2ehaQRbM1MLdCofpA74aczPuBxw0WwtwRWz5nwAu42U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719025343; c=relaxed/simple;
	bh=WvD//0Vowt6zPBXUk2KbfMTSLBHBvKNTHITiWGddUr0=;
	h=To:Subject:From:Message-Id:Date; b=D1pWQwQErzUDi/+JoBf8Cn11sIN9hKgEbS4tj5ncWKR1SNkVITlloGRFE79m/GOlSYyp0MK5EPOOfAHUe8T3y6UCpKZqNdOOfIgtMCjtsjMIY9T6+W3LippQ+NLpOD7MZpJY1RaimsB7Ms5gpHQ8OL9psLKX8UsOuEh7wKHyrfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlwKWPBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlwKWPBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F6EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719025342;
	bh=WvD//0Vowt6zPBXUk2KbfMTSLBHBvKNTHITiWGddUr0=;
	h=To:Subject:From:Date:From;
	b=XlwKWPBa7wM0mub+riJHLnDFCKbkjXDX75JCIr6fIQ3yX61/hnsaasJbVskJP6AL0
	 1rab8cECepjAfcIPomOZKqsx+AdXWVt3h6MMVew7dT860NHZ/N32OBoyWLkjOLWI9d
	 oT8S3TxsE4pDSTygNkkNuyiHUVm4EoOWGK5W9bwMgEV6k6OiOdzFdEL+VXLfuJtQ6l
	 apQC87GuBhw+rCMJ2hk5lwsULZC2uQyJi2pqYmIvaIMwqb0dOHz9ueeMPpKoLI4mIm
	 ppFXbLc0NfNDNqdtOPilPmf2/wWzvCX5EJQWMTErTYeT3JgT00VrBTOz74Zua9CgwJ
	 cMAkShf/L+zfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D5EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902534277.30312.16665719714285300707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9a3b24eab8cf42d0bd01cf5995c75882b88210fdb51fed32a4a75682bda4e2
Date: Sat, 22 Jun 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719025342
