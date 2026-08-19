Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5652E3CEBA9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787121634; cv=none; b=J/iLnkbRpoT71bhHbzkoqmlri4bjdFqWfiRPH7RlrRHek+KBjtoHG+R2l4oz4AxdcPrNH3iT7+scWalNHHSbiKIqS3VP9gA2SUErrSJz2KJQqK+ZxBuvhFYCCN0k1U24ATN/UWfP8MIO0Aibca+CRv95zVrM2hPEdAVnN7H1na0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787121634; c=relaxed/simple;
	bh=R7aXG/OfbG7welgw0EhtIk6fOvt3n9HIGVGQS92rBCs=;
	h=To:Subject:From:Message-Id:Date; b=MQh5DDuDnhm4JupdGklZzoIjBNiAHkzGat2gPNPwJilFPKMXSD1wxCjRYVhQguncjNqk12KN27I87IdmRRu501eZ/cOCrIyj/sy9gvaaGdLLqX5pBX1c/fKQS4h1x4ci7PhqXNEeXDepfZn4hKKDyEqTsS8mt1m0Gm63gSoTPHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejgz/68a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejgz/68a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB740C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787121634;
	bh=R7aXG/OfbG7welgw0EhtIk6fOvt3n9HIGVGQS92rBCs=;
	h=To:Subject:From:Date:From;
	b=ejgz/68ay4f9z+qIUT2HIBm/kCJUs+vSf49rBcbeGTLoNp8O5L+0jJOfHTXHvr/5Z
	 3jnTn4nJ0E1ybZyHa+KuadopZsq8jAjmU3iVodE7NbeqJMT4HO/jY6wq5AeWP+2s2Q
	 DjBvipWTQz9igTll2OTZx6gxHLxRml8xKtLgdipWCLzu/WsitPDUmnB75zP4/ui2bw
	 HLKxWLbQ91IlqQ++HSIHSWzMHA/IiLAxr5tB8h7+PznLlQzm+c6eb8fm/tFFccC/kl
	 E00xSG6/ylfb7AfatOkk79YXf6K9RtAzNE7vqdh7qtl/4btI+gNYilhpWf49HYvxwz
	 epvRSFu7J6qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF98C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712163374.9387.1627784115856105503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243442516c7a87dc993f49a57f2aec29ed7e40ec912a1ca9e45017e17a69e3a0
Date: Wed, 19 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787121633
