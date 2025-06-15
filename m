Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3715619CCF5
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750023594; cv=none; b=h9DTZIyZnrF7TYUwseoIbGjbYo1r68j9EuS8gFFS7SqSz4VWxAg1zdicaJ6vn9GiHplZMCdGxi0N7kb/15B0MV5YeJX5dIRojE/RFrwSMBVc+mZXfmWyGez6atcTwYbE03nUIV7NS7p+OTYqFJWmS29QbW/+pIcag38uEYviZBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750023594; c=relaxed/simple;
	bh=JEnAcMuRvXbv/YVdwBhnjaL4JPewcNQb52qN/8Esxw0=;
	h=To:Subject:From:Message-Id:Date; b=M0rac7wq3bvXDTJ+H5Lmo1kN/JWrF4Da3DGHlEQ//+ho+VQvCAXfypOJABn/CfJ2CnK55iGwQ8BkoyV79VEJjeHfFrNTa/qBkCA72E3GAS/i0Mgb+jNcB0ieOwhQ+GlkJCFiUQAYWDl/nUSEz40IhZOP0LO2ArS8G1XBNDI/pCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJWnfQoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJWnfQoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8698C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750023593;
	bh=JEnAcMuRvXbv/YVdwBhnjaL4JPewcNQb52qN/8Esxw0=;
	h=To:Subject:From:Date:From;
	b=ZJWnfQoZLMHDRs0ocisMw0xkFNzWCsEU81Z6LHVLmTy0uCaR0iMnr4Ul6JjhpSmw3
	 /6URpyaHLxnkvWA/NccFIsgeUcmCXRwwJEZ8llv1n2oRfbVpAEkV1fS6oRTd0LHhG0
	 mL/64NeWUCD/TTmmrf9ctUPv2Dqh42KwzEAN17Za0tXEGn81OD5G6FEEfxKtlK598B
	 R+ekazRU1g3amZ4gYee+R7jaLmVWfcIeK/NCKIKT+qj5KoaOucXa4IHYIxsSE2iPV4
	 xZ11inZGfGXmt29ujBz/ij+5MHrJLx7ieCq+hFZCxPbaZ2bh62y4w9rnbwBCv7shp7
	 ZmhhDDT+LFoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA4C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002359358.31009.11874677748441456550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5345e66705b9232dfb7a48f78fef52b7fd71c4a743fa71a26edbc0384576ae80
Date: Sun, 15 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750023593
