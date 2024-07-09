Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5897A13211E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720565183; cv=none; b=Hns7ScrOuKkSLM/oHQnzDZ3ScsFAfSAaYv0y/GTgdQCU5EKuUAeKNcaoczZd4y6K2d8B690R73cBufkbFboqn5wtxMVAx+VUnZ3mM+5Ie5+Pxk46H8AeEC3hXNPWnARJexnV97WXsNdmUsKdTFcuOOdWmeu8ehT9WsPgR3KGkYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720565183; c=relaxed/simple;
	bh=8UGAzEvRYXq19YbYynY/pTCgQx9vO+qwfQSiVPKNYzY=;
	h=To:Subject:From:Message-Id:Date; b=UbVoHvMVKwaakQKrs8XKJ6IxfZqR8fQSONgptGNRSQDWHlevUMFEEUszROOIcPexAj9I6Ixnvk6ga3O179jAbLpaRf11yD5USCMwuBIjXSgfA0HlI6RoTi7JtGonIUaIDIESV1rSucvLLTnwSeZqa8k3ko0Z4lzYJcoRLZaxnbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW/GQ72b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW/GQ72b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DA7C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720565182;
	bh=8UGAzEvRYXq19YbYynY/pTCgQx9vO+qwfQSiVPKNYzY=;
	h=To:Subject:From:Date:From;
	b=rW/GQ72b+yyBzUoi0yzjOEiCzKPisRmikbFXDFvscN/NO5QAzgHAB7YpgituY3jVu
	 mTSpgQ55TZrXzlX4TKZP7G/RQGMrkmnpj8hE/9gGdoZzBqMDgCQHFrkF5rLzpS6Vxh
	 r62/4vyN1n/jYdaZnJUPXFoTVAd+YwSWDCbePWQiSQ29IsE3Z2+7WQ26a7dpDdPMMG
	 EatktJ4U+95qLQ9LSByxcs4zKW5/vf3hwIaR6DjtiuwRsRcafcvs0qKXtDM25OfMiZ
	 AIvvJGwFthEzMY8oZtnuY5QyEUCIio/kY35bUjR3QJ/s1d9n3DrsbdmX3S+hf7D1kJ
	 S/LlLckN4COZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2064C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056518278.24146.14511823218240210573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65a8b4ce3bbf8d7e5aa7542871df98f88d8942e5bb43ad95575120b7c429377
Date: Tue, 09 Jul 2024 22:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720565182
