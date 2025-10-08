Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D7A190685
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759904394; cv=none; b=iVIaLZAix0dwukbTLp3uE3+TN5ihnX5QjwiO1HTGyexfFbXkwkZHld4W/bGHD68+OFEnlvKA/z1YmG2FZsqz9vOOkRV2ZGfk3OAfSJxrADQwqfyoT9XCptbrs181nzVppqzpOw2tGR+xoYYEcX31HyNM+oB/MzicyyyZ0tCB6Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759904394; c=relaxed/simple;
	bh=JD/+l5jwiIgZixPNYK4r1QiVtq0m3SP8/GhaMdsap08=;
	h=To:Subject:From:Message-Id:Date; b=sOGob+iKZzx4/tj/HZa/n6m9DLjaTnGQxt11pzBumju1OFeEPfqAezOzlrkLAro+y2wXlR5bZfs+WzUuDd9mU3wXDqE/zUuE3/f7vM8hENJwVlfMZjvSdfk2++WXZr/zKedVTRBa+csaMebJb4DSOCmvqPY92hU05RTicfEff54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J92F33oe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J92F33oe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDEFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759904393;
	bh=JD/+l5jwiIgZixPNYK4r1QiVtq0m3SP8/GhaMdsap08=;
	h=To:Subject:From:Date:From;
	b=J92F33oe8/DBQLVn+SEihpQpOQI6HKOw/TTTjSNIpBC/sxnVTKJg9m9s1Nz2fJfOv
	 yjNACA2lDkQmL3xrfV8Jbw6RDByEScGuWpxkwrhP8aTzzcIm4/a+4KSW32VUQgAlbd
	 xTgzMffRoOGIsjrDEKHpI7OR5hS/pMBlkxWBPXfeB8kblxV54QeFLlpALTAVsx3Qu5
	 32XquLeSKMO3mCmzIMXjQmbb00bOeyMT5Gusf7MzmhTVIPtkCPGV8Rjjt/pLdQPIAH
	 R0RreTB/stNIQC8AjHVz4KYM0Dwd9O+F0dtDSBnJcN5PFDwZ4Jn7Ib5bHj2FL9ya1d
	 nD1rVYjEifoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF7CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990439357.17799.16390284548032155120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8e4b88f2e6e7b4f0b03d6a35bfd2ea1c417dfd6280061fc4496bb884f865de
Date: Wed, 08 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759904393
