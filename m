Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024D46B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728964554; cv=none; b=UlhT2HVGFwY2EauTxyCrp4iy4JnPCcje0zGZ5d5syfZ41qZihBHStqMiE/Abvp5dxjrTEi145Vw4xBsFSkrdKnmCTuZPUzhCIqDnvNoQr29YAUnIi8x02kmdcNfgwfcyieh0wes9kL5xrff3mGoHeNoqzmCjtnJD8HNdX8NNOpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728964554; c=relaxed/simple;
	bh=g4aeBOMRV76o8OTgA3gzaW8k885JP5u+jNq90nheWNE=;
	h=To:Subject:From:Message-Id:Date; b=WtiugD2zizpnoz/Uchyr593qt5LVsjJzGSyPykmck8r4BWq8gfbIjGZcgpjQkqRMXI/+IWBl7DoXU41N84oWoeEBZBgnK3TVBjMXAMtFSqQ5nEZffmcW96xq7Sv5wBFhm5xnk2ulK93icMCWuK/nHiLysUsDIngZps1jPTiyUyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqaRC+ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqaRC+ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DC5C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728964553;
	bh=g4aeBOMRV76o8OTgA3gzaW8k885JP5u+jNq90nheWNE=;
	h=To:Subject:From:Date:From;
	b=VqaRC+gaEq295lojFtPXfSSMfUoY9smptZx+c3yHJJa6IuGM0oodncVEs4ktT3ape
	 jFbNAOH98AxUW/JrNFsEsVKZOye5PFNWXi9LBRDHgg4nK+Xbu+HFPoYqpEQdxIoRA7
	 oJmc6G/q4WmqjAbExMAi/kAFeRS8ah2pr92X1Wqm6OvQjNKwXMaCdum2WotklfnmW/
	 BE7y2+MXY875oK5i+xRkBzJ4JDFiIxhDJJq9To7eCiSGb2msbWmpOdkp3eppNp+qUx
	 gg+fXcpucjRaGwVxMf289js0QcY9Hzso1jOxaLSnUJGxFeYuszXuCuWKX8fNfOzsZB
	 Ol4aaJuvTS3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F5CFC263
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896455358.11632.2102892632131304772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22df8bbc37a1f619e29ec7ec2cfbf9ef65fb22878d99c4e49b77a9e2c6dfc94
Date: Tue, 15 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728964553
