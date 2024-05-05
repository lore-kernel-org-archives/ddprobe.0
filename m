Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE231849
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714882343; cv=none; b=nKWT7HrpUauXarD6AWzdi52agYvLkrSHcb8ccS1J6JOAxnWJEDNIPwF+eY6USTgyDMGm9yHOJ5CXZDE6ALWIiHQWLdM+IPHsOkb7xX1zz/fU5pyQrTx/FgHSyi/HGvvxJkhbbrDuLwvb8ZXcVdP0yQOeb9gwtBzibexosGttWSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714882343; c=relaxed/simple;
	bh=gpslcBlac5ceoHBVcIsKOx7DBGj6U/DM7mQ1geR6UA4=;
	h=To:Subject:From:Message-Id:Date; b=POrutsla4RIhJiDtY2pKWbU9c0OdchFZ17zh9iFslbit2d7eEuSsg1ytJMfW26eGB/mBPacS1YJVDB8fL91WitBJRbOIDepI3zxaOlsLE64+LbR5RM+lPxV5mRT2A5eq6h5L1pjirMxiPdFtTfpcA4ByKyjD4PDTohGJXNFleXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo5unrnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo5unrnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3BCC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714882342;
	bh=gpslcBlac5ceoHBVcIsKOx7DBGj6U/DM7mQ1geR6UA4=;
	h=To:Subject:From:Date:From;
	b=bo5unrnEQ0jsIoALKi39B08vO3T998gvEVlubCsjEcqqcsH1rXHtrSh2DwGjb+8D7
	 a1AhZ8GNT3D0eYOp2rJ5Z54J53sqjdhkCxx0+oqbtwHKpoV6qCTEJgPFtY6WP60Rgv
	 gp5fq+qX51IIRbN1JKTk16jEIC9eY69ZRxonlqfq70dUjpukpy5p7lKV77AFcuX2ea
	 /wRWvRaPpher1eKHLwzfH7NbCxspYS+2SzczmaxLnfFeJXh7keef9MeMLRkCulGrzN
	 aH4xExXe+4EjwtqZ7FXonReKkgAIDzrpjMyrNAKl9L2jYnmkODvRBZZjachDqhbsVo
	 Ced8yz0ESEHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2396C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488234276.29135.12369095464358246439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8ecc379c6fae8f00df989e9daaad9b2476511b6ee40773f5df66c9c471281e
Date: Sun, 05 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714882342
