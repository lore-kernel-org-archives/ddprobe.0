Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE04C36D4E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773820494; cv=none; b=SGufqrvQ+XmvwpDUOCNLZ9XRcipLwli6lv4axht1Nx6jXihNMSIZzv1tqW9i7EK04pa2UdnxPWa5SdfIIBrJBnVX378K/WyXlm2BbWvdUDqX0Df9i39dpSnY1IzhyIEgPJPcitJJZ0/WaPaHjdt8RqtiidJqKZOZoCvwyuZxVug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773820494; c=relaxed/simple;
	bh=bGv5ChvFnJh4XyNZnJx2s00YpX2bi4822MCHBWWo050=;
	h=To:Subject:From:Message-Id:Date; b=K9yt7P6GcdM+LJfKGMHMpLBUue+3QMpUWV0NdPK/Aad7g2qHE7lfEmZxCiCQckY5taJrFiIOGPxtCaIwGiQxjr1eU/LFL9yZ0+UCo0nO7ZNxdoy28rCXYHGPGtXiJjVC8KB62G0ShVHdkc9xH7NCIf1f4S9uKcXVfatdauFJoR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmrEiv8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmrEiv8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEAEC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773820493;
	bh=bGv5ChvFnJh4XyNZnJx2s00YpX2bi4822MCHBWWo050=;
	h=To:Subject:From:Date:From;
	b=OmrEiv8ZBaR/77ngmIDEqGnFh++BMo46z+Cx2JHxWG4Z0NptCCsyf3MLVuNZg7xQ4
	 DSMCxpC2d7CBoXh+6btJA9gpkqGro2ldNvMFL/CPUWWB1XyIcxpX/1zLk+qmpDoqSK
	 W/6v6K86E06kUyinn/HrK+1YDmeZb2aQqElUHqtTPbPhQx259ImMat1MX9t45YRnOe
	 fF0ZI+VYKhrnsKFCUhq4PY+9bEbdijUf2tmiahqNDLy1tYD3b2swSEbSb9mS1N4yKd
	 0D7fTWp23amQs3CITZfiKyUuFj9DVclpwbHICfXlosM1c7L/OJHvP4GaXJ4i/wrZm1
	 t92nnig0bI+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77DFCD0CC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382049358.11983.7040580733755685868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdcf2f05e3f0780a49f51ed6f052759b91ee166b6da3de54d405979724b7e1c
Date: Wed, 18 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773820493
