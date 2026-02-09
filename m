Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A692D9ECB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770673434; cv=none; b=fWaAGCb4jNUlm6Qvc0Gw0EjQN/YRrT9NxgnUt+MiPeijrfg77SOYvoqBll1Ly/Tv8t/cuRPpPUpUTx1vRPah6u832aIFhXjaRwNkiuEtHVAuajz/xZOLDPkzdsD9bVtdfuVBBPouRH2xpuvoK7ShhrXnydM/9H73dfzmV8U9e50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770673434; c=relaxed/simple;
	bh=9wpWadbayecK3R+kBgLwqbNNAilhPxui9erZZ7cLg08=;
	h=To:Subject:From:Message-Id:Date; b=kVK2m3xG8mzLN3Nz5gPIv7CUVblr3fbI45uQ+9EWIjQXXRe4fkY7NQ6h2edP8eeTGan59KqsKPldxo684iPYcNI6F22KtFj3y8gvQBBPzbqhYDZuJSgpzqpM7Psoe4SUdlVqccy3Sjwu8mGcZXEfPVE6oicnfvJkvZJu5ca0mzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsIkuVnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsIkuVnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE93EC19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770673433;
	bh=9wpWadbayecK3R+kBgLwqbNNAilhPxui9erZZ7cLg08=;
	h=To:Subject:From:Date:From;
	b=IsIkuVnIgo4tMgo44Gxp+9bnqxA1R9mXv/2e3QpwWtcZgkhVAh6kTzoq5cQ+8moMU
	 3dg5jK3Gb11WjjKp1mF67eauUojzBhFJYiM2qKv7iD8mDT7UWyfwVRMdF5nCkecpYR
	 vO47Pk8c/2mjuegI0qc7KvagG+H7m/ML6YFvmJrmhqgRrZGJKlAjSCcXqQwP30zSnd
	 3qiTefIk0DktZBuajTjP+7Q97kMumFnuyvy42dZWsp3lt8JAd4oD6XoaEMSJvj5Nv2
	 JZz2vLQtGbKDKnOjaldbmzhnMQGgA5pipM9NDOMtftv5+DNNUh/f0Nd62rVxMQotmm
	 MoRFcFnPujBEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9894BE94615
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067343361.14280.14739018577072199996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edda95d96f8a1c529f2f48cc076a2403a733a9b8c41ab067eb5307c0d3a1cdf8
Date: Mon, 09 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770673433
