Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2430BB8C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775765854; cv=none; b=shvllFvFaKiV8Bna8sUiLt4+QrWBsO2WhqHoi12vq75E+2wfRztHaMgud00fmhuevkcZ69qPhLqzH8qq4Gz7VdmYRnxE4Cb1jFSMB1WW3mQFJ6uLMs0r04X/zSuu6KgqfxwIrP0uTmcewNgjNwPR6817O5NjzKAp1EotL4je9qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775765854; c=relaxed/simple;
	bh=zfuso1Wee7VMtsVEhnP3JSOzloLwPzDVryiU5cTa4Po=;
	h=To:Subject:From:Message-Id:Date; b=rdGOEbeL+OTRXX7cY+f6WXUTWkg/2KfVJSD09JWFUO5Z/t97AYNHpvodLUgY1VZ1+cqjMoaK17dt6D8B0CusvXdpBOqJlKrsKjTldtczTn+LS6cY4WhPkML/jVid2G6iuNOyJMgi8K91UivjyHsjzb/dLxs/DIfy2230Q38AoJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaD2Cvij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaD2Cvij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF009C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775765853;
	bh=zfuso1Wee7VMtsVEhnP3JSOzloLwPzDVryiU5cTa4Po=;
	h=To:Subject:From:Date:From;
	b=kaD2CvijG2nPc/+bFag8G89prIPkblkgbXRSds6yFnpifYjjzZqmknBzG36rXkYYm
	 ljIPhcBY66ZylahGb5CFS7n5gPPZxNG31v93b0Q5oURLrczlRt8D5QMCzy+KYgf08+
	 KaNTnhroIERuG4dcax8qjIFskhmI2Hn2nbFCJLVDZ2exu/Lk6WLajDoWbb/2Ma6DQJ
	 K1YE3Cv1P1z/Jyf3dmY7sd8FjGyBVg6FyMnQVn3uF3Vx3qgJkucFP0ykf+mrdhFXl6
	 98n2/uMX34A9ElCBaftVnbGcGT3LlPKGo7LtbzMDfF76nL2ttoXMW3GfEvPMkyuuIj
	 X6+cL0VI1vRZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE5F364B8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576585370.13289.10856575504767721153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2a4eea1d9af2d8eeeab28dbcb86e7f4d3aa04e49c3a9a319fdc647ba211aed
Date: Thu, 09 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775765853
