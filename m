Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284B91E5701
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752681594; cv=none; b=UyNrpQbaO9+Np5aEnE55ShnmPPc4Ox5NjmQfiyAQtiCiHrEe2OTchKF9yQNsoCb29KS+DpBajwMS4TiCv1x53ofu8PP0F2ztwfMvIW9EoWpN5V4619KZOlZv5JDrbnK9oLEW8JSY3pE1l/Au5aSsKaaWBS6nnSBrMnLwGUSKYEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752681594; c=relaxed/simple;
	bh=L/EEkgM+JXjwOCwwx1LJkcuK7Np/H7xn7QmPA8idT3E=;
	h=To:Subject:From:Message-Id:Date; b=amP6kDppR3uisRlhmSRflNqG43sRR3lUfBMa54QmwWpROdbzaCSTrfSoW30WWxB8rSTP7zo4iDSe00a9ysfljH4yb5tCGAppYB8KfMFrcig3FPDOLyLsLJTyiTPbalBHcgGsYnH5JKqyW74fc6RKhYCDr7ZMzcYim+BkTY2apL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loYUjmls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loYUjmls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD23C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752681593;
	bh=L/EEkgM+JXjwOCwwx1LJkcuK7Np/H7xn7QmPA8idT3E=;
	h=To:Subject:From:Date:From;
	b=loYUjmlszry5LEdiV6eQPHldIcKtEil1CBEs9RbMxdMVIQ3uL4DNBvR2MoeeoHZR1
	 vbzjhsM6Qfds9EBZlEVCOiT0vSy4nkdjQlYNFMjczZudQShDkCias6hZqpVNCM6oS4
	 aVZU2mYeLYex61mO9GFsF582cz2mcnC4tBfMCl0ZrhXWf0AKx0YxZw45/d/nYye34y
	 J2DU0cSOy3p5q788D3XEQjyW5oM5olraEvwXkpm32A06LANTWEbrcwPNBj9bSFTT9E
	 zAAffd88PgxY3W4bQXTzjgfFy0LCVTgQlCyYaWmeEdUIL7M4UsxYnOKSgP6UeOZIAN
	 G4Gdq2NCraf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268159358.3004.12704581552925460288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff602b9b695e3b36a352202e6090ef80b776c0ba9a2ffe094625f256b01461e3
Date: Wed, 16 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752681593
