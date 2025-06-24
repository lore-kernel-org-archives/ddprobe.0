Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FAC28ECE0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750768194; cv=none; b=uasRCjbFqKtCTX/OP6NQyWobFRxL6qgPlvwVl3yxvzwstQqTzHEC0JCiN6dJFySU3Vw/t3+2573AQbhtJEpRnwQPO6fOphZ2UxrvMj1jQevGr04MBpOvPkTh/pVXGtBNwPHdyA2uOjIyThaaRIhr6fOe1pNbolQ6FXV07zGPa1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750768194; c=relaxed/simple;
	bh=Bon7BnBr7otg00j4n7lKG+uiMgHeMtlbQ8XQ/FhbSzg=;
	h=To:Subject:From:Message-Id:Date; b=VNB3JHYfleLifYaNxFZsxVZewbnbU9tFQh6pHL4dRioAhEgf5f4YnLcU8nir1EYOp3cVwDBIFH7ZC9adHz9/hdpKwL5FsLZmFY/JY4mM7jxLApr5Wip59zi0lR/EOXVIzeVt/ZRO7vij55fQApRFznJzhDsHcsBNr0flCnTCmDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu5FcDm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu5FcDm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD1C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750768193;
	bh=Bon7BnBr7otg00j4n7lKG+uiMgHeMtlbQ8XQ/FhbSzg=;
	h=To:Subject:From:Date:From;
	b=Gu5FcDm8aN8LF6ULYZbQHhjpOMyOJumGAjU/Y+7w04PWslZyuTfkUC26wmN80t159
	 JryHdfIJLUUTahcnjgIKmZynhlWpxQ7NlaaRaMDijd5eMx5JSYPNbln8/t92YUO6t2
	 ZA1Ho/BBT5/3BCVMlrPfKcoOEGC+FyYFclYCPts3/XDk7eCwdhIEnmSC2dkcHuNj6B
	 0VyBI43ESF8HORfkp2pF1AGQAroJwULzJfOlrW5n6rmeRIibpr5bIWOYRpNYdMfYxU
	 1VCpARewaX25lC34S4SnSgGr9opC3DkQMdHbgsAJ4iW7uQxJXm8dlWSo8PcDmhQ2Ef
	 6vaAJ0v7JyIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BBC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076819357.23810.9321305736882339343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc5138f50b2067ca7e8a8e23976051415e989433061103f0d63cd3985f33106
Date: Tue, 24 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750768193
