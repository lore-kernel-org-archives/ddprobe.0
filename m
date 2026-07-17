Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493C52E091E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784330914; cv=none; b=Bbk3C5Uz6CX3VCJy9tl9I9oJNPBwNBKrfVf4F3OnbPBEq+M38FrqBrNCGAU4IkUzbcebQbsPnSAzonEsL0bdylCS2ltTzrW/Mdnv8gSUnkLzDJm5aH3cD3jL/Pq9KyLJXXsKZZMPvF8SzaVpOMcleXxOiocwRNTiJbD8pCsZFaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784330914; c=relaxed/simple;
	bh=Xf5YyAdDPEMaTcgMIuQNUg45glYP6vmtAeeESewhW8c=;
	h=To:Subject:From:Message-Id:Date; b=EnRUN+rRAEGD4/8JNeIQ/O0iBH354QDJz9wbNZxc470haom+AZzz7g9cdwsqDCd5Jh4KgiirJdTrZrqBeGFxXU2Pyi+/aOske9GM3Tywc7vfsz7s9NJVSRtN9ORN5cxtbT8tV3RbCcQH2OStV3zitwVzU+NExT7WoxJSfJs9iro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX1zSHyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX1zSHyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B00C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784330913;
	bh=Xf5YyAdDPEMaTcgMIuQNUg45glYP6vmtAeeESewhW8c=;
	h=To:Subject:From:Date:From;
	b=sX1zSHyFzGDSgO5t3IndZSVH656GyojzLzXL6v9lG5j+4jdrjX9ax3Ms+19nxdRmu
	 Dm+Uf5YemXeNysI9HodEpcHD/KWaQn+544lk5r6ywnl7M0QQSPKGcJeuMTtTFmcRwd
	 kyLiCxIQ1SbXajXermlfRdfSZhQqtQWZ3JBuPiVEnvmvXrJZortZVEUYiFmNwGblBr
	 4yDqD6q7cFd/peTsHcMi58/NAOsFLRn8hzZP7sNRspodnlq/M6j1PTAdPYjC7I38k8
	 NAoMnVloNy/MS8Ocsg6gdu0/kINDu+Sc3aGiK/ssbdswx+N7vvkB51xBE8J/JP2rda
	 xpecEH8n9jJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE902C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433091370.24453.8825462757331098943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b062ff6af87fd445b4cc9014d36046f48d99159b6b4d0485d9bedfc4196a4a70
Date: Fri, 17 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784330913
