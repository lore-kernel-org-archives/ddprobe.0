Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F877519923
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790679034; cv=none; b=T4EsuYyQABo8fd2Uy5pf4hH/5srsc7AWUXpjADFhymTJVSMr912xyaH1h6u0q4dokvuH4AOvnKp2xuGWIELv8jC7AYYAxWRUQxSX01ehvUEW0KSEiMiGaxKuHOeVcE9snr1XCajd3HqaMNVioj+5A5a/A3X6KchOWKwXBaFjx0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790679034; c=relaxed/simple;
	bh=zeBaE0jYcFeLC16jOzfY4qQmZy4XoFyIoIJ6zyiT31k=;
	h=To:Subject:From:Message-Id:Date; b=noc0x5k7jj9yGyvBDdK9c+YxxnuLF+y9IhGNAcRJr54kTtUqVCbNGQz3hj/NNJoeEJrchFtp8RweF4CgBplSv/edJTln+YiLCjsFxng1y4ER0y+y/g3DyGyZH87YG4TQKfAFyORvTD1kOxOokCWuxjeYmknj8Cp0GYx0GrWdYww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt9vAFAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt9vAFAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D0EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790679033;
	bh=zeBaE0jYcFeLC16jOzfY4qQmZy4XoFyIoIJ6zyiT31k=;
	h=To:Subject:From:Date:From;
	b=Pt9vAFAVR2TY0FpcMtJRYyKnnqLgtvJWuE25vS1bfLVndBUoZq09JZ3bmBFGkw6bB
	 yfzpgDxEI3DiT0vP50RFdh18ZcnxuT1XK/BitCFpcGLFAqcJyo1AsyJpPQ7Gcqnq8g
	 j5OrDvqjlOpBgzHGv+WtDgGDcDLKb5nfFUOw4HTKgHDdEHXlkS0GNDl79wz2pNzKap
	 zv5n2hj8ilXxps+lcGVASnI0+8KqHCeC9O2AXpN09WlWWdU0Ow0rU/EfxPFrgaEHtx
	 2BkepDo2AIOwQgds2gt0w5Too7HvoNbWZr4rWgnsMKNtggglhkfwV2+GqkueRIb9fA
	 MQcKTFfweZwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC25CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067903370.496.9904435121871450447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8a4815df697c08e391923873874ba0631fed4c9ce15dd3543ef7b835a5a5c2
Date: Tue, 29 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790679033
