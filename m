Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E312191489
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738187755; cv=none; b=VPiLPVlAuyQ4iTLT8+muS8XAdI2TLmPjWRShojWLZP1m0PWroDQX/l7NJQuVXKJZsKY3NsByEyCth64i5cMdHv/0jfq8gq8jTdALp8b3wgEOMuYsTwRX4PkymDpJYHtCbgIBs9lk5WAfyN/9LtR+hCTAD6bHqK8CQZ+WwANg4Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738187755; c=relaxed/simple;
	bh=rOTvbnUihj0GGp2tTRF2Sro70z5benzbjGu2DfSEqIc=;
	h=To:Subject:From:Message-Id:Date; b=Iq5t0/QgtBp2VHAYHSwbfXXoo7ErSbyxVfmCf4GiSQ64rams+qHKXKkiOKAfK2Pu4jCWUJMSYReBSN3VXG4fxGaDqoYxGdZe7xHSfhzbD3/pHRu6N4P+Bc2tcXO607bf6y17JIPI97Yy0hWYjHN7Vpohk0+C9xgUKaUsBRjgQJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag4kCz9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag4kCz9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2002C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738187753;
	bh=rOTvbnUihj0GGp2tTRF2Sro70z5benzbjGu2DfSEqIc=;
	h=To:Subject:From:Date:From;
	b=ag4kCz9J1oiiEy8NFG+Zjh2j6/vnqId9ZNgKgRlTiDYvsm94hYe6MgtED68j939+2
	 B6YxBj38/ULKypdFTAoSwyqw/V//sl1KP1UUOK2Qnd/wSoet1IZpX/vC3AEHrjRFUM
	 Mm7GiZTMegY9UvV3PYKhSeDLehbXLa4xONAcEe1mDdrFirDGHIfXALtjzU+7KxQ3Z+
	 7Ysm8WvsrWlJnGnepBC1d8ScQATDlBe5Gp+MXmguELbKFTs7+MAUyVH8OfkqhfJLVz
	 UnqC9WugdIerfphdf/s2q+dNw+aTgwPcI6Gd1UwiA5wq7aguQ5nqVCoyAGs0VZjG2t
	 kT895K5s3O+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93787C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818775359.15215.18221724654533101747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c19a93fe28f98748ae1de78a011c1e01ceed5ece87fa13ee1a2dce15c3c3f47
Date: Wed, 29 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738187753
