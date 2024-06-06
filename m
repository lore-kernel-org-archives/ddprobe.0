Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B41C3F9C5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717702643; cv=none; b=rKea8pmbjjFs8jxKazzUBtVBcKX3VHJXrL5beZWhJGWXO7ZC9Jm/nvtw7rZyzd8v6oFG86Vxpjgf83pAyus+TI4bblFTF2eabGP83SJLkPlR4G/iidvXnk5NakdK9Rq0oIbd3t45BPwfRwVNkcozGzyruTNQgrGdnE2438doKac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717702643; c=relaxed/simple;
	bh=ezNoYXyBLEcZansKE0nL+Hd13pardfbbYVYjtc81BOg=;
	h=To:Subject:From:Message-Id:Date; b=HRvoyukFtfCzBWl6IzmP7It4qtUoMNRSHi/RK7rWmnHl5ItY7qZhmYZyQBwtIFSKqfp23rrSG9R9ewKhNE+1S+Lbsxp37pKsVlZzZN6HueoWBLRKYtU+rqE9n2mApcM+lRULn0kEKv75hhDJdjPsVLlKwkXcSi3QTUkeJqSJTAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRXPtw97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRXPtw97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A01C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717702642;
	bh=ezNoYXyBLEcZansKE0nL+Hd13pardfbbYVYjtc81BOg=;
	h=To:Subject:From:Date:From;
	b=jRXPtw97I1PsFt6+qKB0jAG+jGEtnKfPiySSxiXUCENJANZYcWDMUTXpzRM/kFMb5
	 gDwxFaB0QpovEEkZNgN7sySnkjeMXmKdy9LaMKFlc6+566zJLyiFjgfta4AV2H1UQx
	 1/MhR15wB+fG93vbgLga+6FfYFOAbaBAnF152uBFPFi4ExT/bdzdLwc8S/vOAoNQbi
	 24ixeH/PoYMiuWpvYc3g28m5MSGLhtLUc6M4ApbDPKr4pSXVnezf1X3R+HPuGVHDqx
	 KpDZ5MV9Mhq3tytyi+PK/5e76JIyjBk6ihBfSSEd1YkWdDfPv5OLptL6tmWqK6oeSr
	 rrMF9YqBfCRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC174C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770264276.30116.5613630345276378303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c339249b4220f70cb2c04d13ce180fa8df16a8d9991db02f7df58987b0b43fb7
Date: Thu, 06 Jun 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717702642
