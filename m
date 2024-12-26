Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3731818E1F
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735248954; cv=none; b=iUe5Wm+omwGqwhC/pIWaodjNIy4vzZHDRzKtFkMY6CIBBW9uhz+lx7tzsnfHgTyBSA8gWJvRROmu25icEKYDyIffblrPnSA1ZcCvMxQbsecL1Sda2ZH+FGXcvQVILtAfv7iJ1DOmTntFuslgwt57J+q4HXaT66Tn6dRW0JrPRbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735248954; c=relaxed/simple;
	bh=iQ36jsPWaAxmtS/hUqrKsenKNhIiF0NACC91vobpwR0=;
	h=To:Subject:From:Message-Id:Date; b=FwYKE/ln66oMUjfx4SGCzx8d34f5AtDjxErGd4k9h7GpeFZPIn59qOxdLvebtQh/MuBdBntJscSf4gAQuKN33PS0BRWysV0+8eFFYyazSymqXMMyAVSw0sYpfqmy7pf6EYa90Q9HPV3s9IRdoJrG1ZUMQi7M3lAZNV9+lXvSKzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij2kH/2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij2kH/2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FD7C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735248953;
	bh=iQ36jsPWaAxmtS/hUqrKsenKNhIiF0NACC91vobpwR0=;
	h=To:Subject:From:Date:From;
	b=ij2kH/2P6kefHZ5ZI8rhsv9GVlQjo8d1godGB2JzNlgm2j2nnkrmHuz4YQgSiRdfc
	 g7ZT9mBXyIARaKFWt9w4DOjKKs6x5H/qfVL+bH8m90YhRSfrJ6nrOSnKefwezi+GIr
	 1Bi1RnNKsLuLMrWm6wFCw9pMUCLjZtQCWlspgi/oPg48h7crBv5vbb7Pd3mbxCMhte
	 ih0ACn8h5epdlWb3Hgjx7UOLmCCYcyp1/nrWMLRjRZS0/sAV8SgZQi0VeBhstN8Ie8
	 C9D4RXumOMj+lMNskiE/616VVt9qSz/PGT6pTfDtcMoz1h7gL4zR6tSSfAH4M9skI2
	 esaljYxXEvwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3D1E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524895361.5278.15511561545462427262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0311a856cecca45e2bdf94c304c549d40a24448e42cae4b77c2c7da88b6375
Date: Thu, 26 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735248953
