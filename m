Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AA0FBF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764126174; cv=none; b=jJIVaHDLBqxoTQ1K/CUfEaz7ls1xUzgHCNL84hJkDrgmgmhbtDirLi1nIeqHtEFb5b5ae4+uX54liomMnSd+FuS7tUZ8BOS7d+zAWIkW0o16DwH6NYn4PvTugjtqQt2xlPpm4FhQ0HR7MSTN3MSPYOu8wV93hbIFiTEWpBN7BJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764126174; c=relaxed/simple;
	bh=1AK7v6tgVbtCRIsCiwKFazjhZ0edSqteX/gVcC+Vx1I=;
	h=To:Subject:From:Message-Id:Date; b=PBu1w0/H/ajg1t2yoF/bCQp3VzXDtdmF3s0F3hHEdcqSRLSrcPyw2wu0c4AwqWyVh7ws8MdjaDOa9xJrlYsN7CxNAiSmBO2pNs8Qg5YBhBxMPGYxbTdGoCl0d65dSXkrMSFYni8w9obiwMEue2ph27gffSS95zz6ebDndhDHVAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHgxtxcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHgxtxcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE83C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764126173;
	bh=1AK7v6tgVbtCRIsCiwKFazjhZ0edSqteX/gVcC+Vx1I=;
	h=To:Subject:From:Date:From;
	b=ZHgxtxcwSLC7yondCkmj3Nl69x/OEyBtblaIIfgzkVRBHXH9rJNhHLKMouyQ+IhcH
	 eZ9k9jOzQZ1HUhmvtB+WiM11+WUR/NGPQVNe1jdQzubVm+Ju9bhIhD9QjYEHbRL27f
	 u3e2YGgLvf5i7TMhgmmtoG9+3/1ZQkDWfaAlFhOUR6HCHslfxteTAzdHEhMbwzFDfI
	 E3+naEEtF4Qby7pO2yzig9j13r8laKBmcDN87tA6sliUI+IWW+fZCkGLWsSGFHa31g
	 6Z4DwrgbuIwQahPDSBk9CNpkjZ5yXCe2hipIHI77b9g6nVgEnxbmQtCcz/DZjKNqUE
	 2z4VnGifSFQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7673D10374
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412617361.25214.9719453409484881493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57dca77dcb8dd55d883b3cc77a09402a55534d2d9bd419382318bec90891238
Date: Wed, 26 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764126173
