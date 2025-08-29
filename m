Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F741FDE31
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756463394; cv=none; b=Cr22hRcXbR/hgEsgzyIfevcz2rTRO7CYou4LdZDlbKgEqS95fOjKz0KqqxnZe68wUMevgeAcjq9cvO9PUq1LAcokouqyqkdeFa5FyVt706CNTmOAzfZJ3kYiQCHUdj0TBTxHktd0ONd0PMzfq1rMdD2f/ZRY2qru9uRFX7NDvVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756463394; c=relaxed/simple;
	bh=yRx+P+2X7rHbXW01zCA4fRqjOOTiTx3Z13Kb4BziSU0=;
	h=To:Subject:From:Message-Id:Date; b=jtdHTKw7yYCCpo2Tf4gQeXEe9pAEXLldRx38WyBZq46jHDjpvtabLItRL5R6t5uKM/Qo81Jhh2GR0CV03AnX7SgkuQMVp7mB0ZutHFz/zO/pjpHSxF8GKDsEipnsgsaKdQJRavCjeMDTjTNbMvn+TDaDSarxyYuS38ulhrWBDKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsgg1PUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsgg1PUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756463393;
	bh=yRx+P+2X7rHbXW01zCA4fRqjOOTiTx3Z13Kb4BziSU0=;
	h=To:Subject:From:Date:From;
	b=lsgg1PUlOp48YiV11FZQoLhgpzQ+FQdQIuvyzqaSfxBNeu/ejgUmeOVXs0nFo96JP
	 VR1dBJd6VwpKX64UvNMA3Ims5k3GlvpnD30vOwX52jh3hBmjpYBNjuRu5N9NX/kZN1
	 hEJ13AY1ZZWPZQG8+F+UC0vOHPnrUdD16g/fptLjQ0kNvHGG9cHf+dtua2/uxWmsmt
	 OC3ehaYXJFAFzAMzBZeFV/PWjVtO0gSQP4iaSPoLXkAMSx29lHDQfTwLbVE5XNvIMq
	 p47gSHJSx0XZFOeq11i8zWcy6aPPjvts6dPplu9/LHu00EzdGqqmR1nc7P6rSAFp/t
	 VeE3X46BArhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B4CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646339359.12287.13077429337111751662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2728f47acc48b8b22a297b575657f2eb107d523490f3ed44c13603578ab1a622
Date: Fri, 29 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756463393
