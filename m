Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5633314AC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765863174; cv=none; b=nMRckoudSTauGPmjkqPBcI7R/UsS4WopZ0JaW+8SEMdCET+jc837yHFV0Ag84uTnzu0wAhuxG3MDZlLLfzcVRAgbZ3Y9OmBb8HmEk9N4O5HdJP6l/ErrzjSKq6viqLe8u6tRyrUVNdNykHjaOvnmRnvxSOoccqUWjg0xE9bULpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765863174; c=relaxed/simple;
	bh=+G6RdRLi7lx8Sql7EUI8e4pkh3i3sP/e0U3Fpd20/KU=;
	h=To:Subject:From:Message-Id:Date; b=hi+cogZVfoqkX7asVifih3L2cR0LdUEpuy/jEwJ9K4yROMCP6P+giIbnAEF237venDFTBD/uhRed4tsK8Th/bbQ+w2+2JvmNSXLEvxR0NFqROtz+Xnk/2/DVbi3cDi9NZa4n1VwvnJ6V0R+AEcb19Q4Nbs7AmhRTqIxfZHrKvj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3FIAKQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3FIAKQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765863173;
	bh=+G6RdRLi7lx8Sql7EUI8e4pkh3i3sP/e0U3Fpd20/KU=;
	h=To:Subject:From:Date:From;
	b=k3FIAKQCBj7CC3xqqDj4xIJwOJ/4SEbG3U2wPVhYa3j5ByGJrlfJOT2jpuTotHFkE
	 1pz3Bhj0qPkaxVbJUOFkBn1d9u8EsUFnuL2y5kVS7MWuBVu1rKLV/Hpi6MKQPEg6h3
	 6fKI3H+9yH9Kre31HrZh6H9XP5u29xiJ33sIev/S9BHswyOsqXSL8zfrzPPMbW0Hqa
	 7PtdIGwJv0MDAUYvi8yxinAO8VlShbrPyZONjBn+atYQOW9XoctlLISSMMVqbnD9zx
	 Rj2RbwvxByEjzF3wmIQMeEN2P/BDPOyUjiL2/bFdTarJgE9x+NENaUPoKFkUwCXPhU
	 FlTZWkufKwcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A3D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586317358.29561.16288885337263109398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bffcb416d5ba43622668b4ca51fb6d14040a45d9a4effcfba3a2f17477c1382
Date: Tue, 16 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765863173
