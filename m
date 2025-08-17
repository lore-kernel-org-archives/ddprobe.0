Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1D137E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755431395; cv=none; b=Gto08XMxjvivr+RzzLmhjaabvyp6FplraUHwLsE//09Ye9wp5x0LWz7gnzMhUJ6U2nbEqGNUAJJhtIahyvJ4+q7rPNb9fia69MYLjyNA8HDAL6oxqitUoC0seD4wcwp+4Rdt8ur1dHOZIEJikzjvEMKtJYg4NaQBBuFu9SV2jfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755431395; c=relaxed/simple;
	bh=Ez9N9Iv1e14K036/3pcBK7ZgXZSEzrbWw7ghO5CsFQI=;
	h=To:Subject:From:Message-Id:Date; b=j+jWBmply6k58BRyZd/gmrXMKJgsF7cNeaDgxjNJNdR/2VxSGamyZ5ombUNjP80S7QZwP1M4tdC/Ij/ZtiKIhK8GIGok36adVUETannYfyKWdvaXWSbnJ3Xb5DG+RVSJNaQw+yoOouSQ0qeKNH5uXD1DrKf9FR4oPSla+BIEp+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3GmvopE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3GmvopE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9916C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755431393;
	bh=Ez9N9Iv1e14K036/3pcBK7ZgXZSEzrbWw7ghO5CsFQI=;
	h=To:Subject:From:Date:From;
	b=Z3GmvopEdD6Vr9jqu9ukIOxsDWGM1isCcuvCmtnCuMzUtTGEuSANxgyiu5o10duCe
	 e2oxPaBorheM2nKp3/Honap+8epBbJx4jY2kNydWHO4aoLncLEb6Qe6tQhPn0luCsT
	 ox+X3DYiw8KMT/Fccl8ox3vIKvtWAwmDCABDcFf4KFFZP/yyulSUxGp1FKPYulSmf6
	 Wgc2KeHGQx34JwqxD1RqgOF2JpUQi/H0bpPTGlvgkmY2wBFfTRuVyZHRRFCjbABe5z
	 bz+ap6uNs3KBnXnVBXVcdwJ/zegmlGtbj2LXE9rrOJIzGPm/8FhGJyWKpX0IYg7/wr
	 fD4YUecjaa5ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91649CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543139357.3747.630337039241911180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc63fc4ef672f0b737d1175645f516178a3aeba83f6bec1331c27bbcab9456f
Date: Sun, 17 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755431393
