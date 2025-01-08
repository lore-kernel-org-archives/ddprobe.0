Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096361946DA
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351754; cv=none; b=o69h7C3bw1u+B0LNjoLFZOqKgVXwXyjEIfYLU78c/Rr+nNjG4xkGkjqRXTp+tSz8V31q7xbInYnUyqObfxXUpKCsm1WicJycWDBtOfhrRU/vsviOtL6pXa5a0/NIvILxuOizWqABV/59ePRHG9LLX24/NGzO8Os53qlOmdsM8hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351754; c=relaxed/simple;
	bh=hr4INkcIhSYVA1DiXB6P6Dh/IsQnCVxkkool0TSLLoE=;
	h=To:Subject:From:Message-Id:Date; b=JbFEKge27Tc3IZwrgcx4uC1lQlH5/hvd4/48D43/CFmHgfStjaaa+ut3831u8qrxxZ7R6qjFxeGSQlTHW7srB7PsmWMSokHW+Fts2zKA2lABoIaIC8pW/SAzrLZfbR2UH/JcXo0CygMhYSUNhtldgbBqa7bLWpULMS4coTJ6lss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8wRLYHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8wRLYHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EECC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736351753;
	bh=hr4INkcIhSYVA1DiXB6P6Dh/IsQnCVxkkool0TSLLoE=;
	h=To:Subject:From:Date:From;
	b=u8wRLYHesU2mBF8w2FfndUxmGEtMBS9n+qb+oqOi2c10OByrF3m8RDpDkecLsUFHs
	 5HO2BPRdxyaCm8uUx5Ll64ZOGymVnCpdl1rIh61mxpmAj7S8IlDhfuTLG3JZCIb9zm
	 G4JAvwQ9CuGCj5GWDg25mcH1d2G+KoOxEaVJt912IdA7kmhjtNaOLVBVYga3uEunEJ
	 HRCclbYCG9UlLtARdVhvLYjzdcuiIDzBfzB7w5fTi/O5DXjnPyf/5mvOg+HBIW7kqZ
	 zwE6fUG+HD6YkbLOeszVsbX2G45RSMLx38owRpLDGfkpnR49t7eRBmdUtg/KIQKjy7
	 le70vnNbCdj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BCE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635175359.17637.14882331226278288774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a5a87ba6aadbc82abc1fa3312a6596352041a39171a9dcb3462ff7ff2321d
Date: Wed, 08 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736351753
