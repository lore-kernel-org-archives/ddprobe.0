Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4BE249E5
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766577834; cv=none; b=VgMR+5CZquTdP2XJe/9qv3BaZK1a98+0somCRCti6gejy4+7fc9JY7Mx8nlswKkDwoAyb7+ctbyIer/g1fmRyVVNK/FYZQQtYiM/jXKdcdntCe9pKR8KuGWOx4siieFvkopQ30hr+3aEUDkLvrAgCI0c51SgFiGJ959v1z8TduY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766577834; c=relaxed/simple;
	bh=pJE/RTZrCnUMiIoyBllYyQL5gRhzK5uvmW/t/cOhxFM=;
	h=To:Subject:From:Message-Id:Date; b=lTBKKBGpyi1kiK5TCIKEQFL4GypvvFSBz+POxSPQj778/jskxI3Qg7ZfTdcppuOtCIAXOeBPUYzQWRXpm+OV9crE14qa4ef602ShrQVR7I2kCbRdSny9sFWYq6yArr+cXazsM0BTtZUEptRsT5S6VjQ3GHcmEsHEnN9jk0OAKHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4dUuSA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4dUuSA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A68C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766577833;
	bh=pJE/RTZrCnUMiIoyBllYyQL5gRhzK5uvmW/t/cOhxFM=;
	h=To:Subject:From:Date:From;
	b=X4dUuSA8dBfvm5Xi9Ld7alZsqyG1sRF6HRCF+n0Ip0y195k5gEuBdqwF1FyANqTad
	 1eIZzP5sqZ0wU/wgrY7+9L+GY6kM4TPX+/VwIF6FjNXda7matStinUwBRVB987NwhM
	 lkTkJshoZY5CKx9glizcqPdYDvDK+WTXXqjul25LIfIM+ZxAWWDQxi/r7kUI0d4YAP
	 eeICasx1oMqeXcnze5TEHIJGXXlU+09TGF5vViEUOavbvvZl1tRRLmV6kOaLo+bYNd
	 G6hHDHTDqa+zwHSil6BPUjjLZ32K3TZU9MmMLrxzMi484QMb1f/CxFMKt/ToX2OLKm
	 31yMomd12OJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A57E75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657783359.25518.14599335650589595531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfb3eefc5693035681067389fb3dae4114872d6e24d34b4456d9bc6ce55da20
Date: Wed, 24 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766577833
