Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5846117BA8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713882623; cv=none; b=HVBljEE7g5jW8f2a+yeJwqIxYNSa6MOubgy/TLrXUdQFGloTMr5KJ+QVvOf5AJtQCyGtSAoLTX52GBfcQub1LVpfjOEOdTNEko8JZ+In7bbkZ8AY6/3Q4RI1V+0G/+Q8CJkIs0eldtY4Hvbab9Czw0SSSg28fRihUqbnTewNN2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713882623; c=relaxed/simple;
	bh=4UynAoGi/Yj0vTWMwPDqCryeeCOCn5CKLJiTyTA2CUM=;
	h=To:Subject:From:Message-Id:Date; b=QheUrOL6ncKSvTcatLsn++fcX9Wbmo7Z1oQvKCieKFqx2m2vbOdEOwftQ0CIHsRD0A/HTfSJ2Bncb/Enz13l1S51o+fQYa8RRX6lUpFBcxKmCeXzRpGlUD2cu3KKcc0Au+VQaWFhdW5xRgNU0Di7c18lJEzV9Y20650uLk+KEIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL9yLrw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL9yLrw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10E8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713882622;
	bh=4UynAoGi/Yj0vTWMwPDqCryeeCOCn5CKLJiTyTA2CUM=;
	h=To:Subject:From:Date:From;
	b=XL9yLrw7EKpKtBupucC8fUT0VeF8Yb9euOuMOTpAc250iBmfDmZzW6yAIsjS7XnUo
	 VzZZaaPW//PG8WELb+d36u3D8KpOR7QP5wVTM9o5o8irZff2rgMhKEgGFA+Zt4oPTt
	 alk+z33TL8t2bcBMBb48RXGIfS5kfZ/neRcpmvQO+bdAMnfwg/uvVDLBTynlx75LxV
	 UNxNetDR9bcIvUlbI1CyD1dnXG/HxLHtDg3sij+Xz4GLqwLULSNWe+ZN5lpgeE4eGX
	 pCNmCwXKJ/7uatQeeDXMx5n5X/qUoQHYuRqe0/I9R+OwpquQWjD1h0NDPPO4sg7cmS
	 m/74fRQy61mZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C048FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388262277.24285.7667989282807962936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15635484c8f3b585395a715ded09de125fa545399d6eddb7b66d946e2c3d4760
Date: Tue, 23 Apr 2024 14:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713882622
