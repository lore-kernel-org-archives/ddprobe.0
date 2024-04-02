Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071744414
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712017097; cv=none; b=CjeWGofjQjFgTTFUPevjWyNiM3nAIfYYq6Uj2hr4QBisluBPzyrPoOGLkFY7smcpmrfq5qJIeO4wyFXZpTmkCH7gYGzeUk/m/cmriZMwUogwLpyA23snVmWsr1fS3ksW8YuZWvNTlQwByKQgxACWUnOVd39ijOGMDX/4rf99IOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712017097; c=relaxed/simple;
	bh=rtxwwqbozmrOwxLuwNdhkVxcP08V6RFDMIsnXEVNVlI=;
	h=To:Subject:From:Message-Id:Date; b=ePrmQ2qGgdzEyIulVq4qY4mokgdqTb5DzsOXILjA992gx6/njgPpyOWw30gLVKLKgEouDO3GR8l8MaNkEUTqbepKCs1NSsoKI3zjC801QQj56udZxBu3le7fgR7vduBx5M/84h/L3e8efWLumULhmtBpk6w3bfrnWb1EJVbPjo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZQyk2Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZQyk2Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96F72C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712017096;
	bh=rtxwwqbozmrOwxLuwNdhkVxcP08V6RFDMIsnXEVNVlI=;
	h=To:Subject:From:Date:From;
	b=fZQyk2JxKDVqhVKppbZAjBEp2SpvfsdVQwuzT1D3ar9QF7bYlCSgcO8PkFdK/Hwjy
	 Nu8E8BuX4LrBZwAL0F8ipFwxCp7Obif1cOdTDEIIhkF8VqocVNdRduhFxpkkxd0rem
	 3tnaElvQbnMQ2Rx7TatQNq5k+4KB2RMG+cntTg9H9t7lgep1iAb9CrgpTZH+7CnOwA
	 2R5dX2UJszC/wny6a16Rxt9TMiAMfbwIH7uxdVCkYFRnrMqNxwSieI5swLd+K4ygdq
	 4bAj+BMDlf4+YGDAtkoyUY+gvjXv7DPfLzXuXJnguL+JBmljZs2MnzyFXnSTzJ9uEF
	 yKT5o1AzXCfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B2FCD128A
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171201709646.2661.4207753589170612021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a4041e159671713a0c6569886491af7c3d920e1f736c3bf90cb96c4b5246fd
Date: Tue, 02 Apr 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712017096
