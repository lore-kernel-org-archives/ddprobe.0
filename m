Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22381312808
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765187574; cv=none; b=q1JF6tE2yNI1LplGEIZv9EVa/cZgDEe7s1FYg1eMEY+nSnCjUrJOjpFE5ioG2wRGivuwc4kUd2VstFtIJWPkhs4yYaoBEIK4uY4vJnRoSMAkEqEnnHEEOEfH9wiSKIfXGsqBA8AaR4ZWzwcS/OTJ1RpvOVWUHqZhklRW5s1BbRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765187574; c=relaxed/simple;
	bh=0giyTPtMJmMbQWY09MS/s6X6RghrO7NJYuzcEq3vaMo=;
	h=To:Subject:From:Message-Id:Date; b=TUPyIwfqZN2HVGGxTcgenxC+luKcD2kBg3OIz3ZpjxpYAn9qn+b5tu5pU5xghVewSdkngBVagKsianZOXjD3Bc00cAe4KIEF4y34WVOpkBjxqkgiXWMZJ6wt154se6Ajf2cuwKoSiUoHKS85Xfimmz81ooVrTpLY/lJVqaGAUB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKUWf6Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKUWf6Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A516BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765187573;
	bh=0giyTPtMJmMbQWY09MS/s6X6RghrO7NJYuzcEq3vaMo=;
	h=To:Subject:From:Date:From;
	b=oKUWf6TmemVbF2tI1QZEuihOUxUS216UXWCsg3gI8l8f/0a4Onb/eZt4M6RX6QLM3
	 m13Nyq4bnNIwmFgXtQQZlVvVxFfwDc2mT1gA5X5uiMuWbbEvwbIumJqFrpxbAsWR4P
	 EBbCYaDBMcPmP6ItQZaGVfBQnBIlgiIRRkjgMAJAlJVXdwNS10yb7w/8DfZFatSiVR
	 927qzO1JKj0K0aSAOVCqVh5BtJ9rGIj7UaiRwl943wXFsytASkR/CTHnfRHXXpf6D+
	 QiDdTn2rJSLDNOwu0YgI9ATnZkC4IdJtvIx3N+PYKfPlXN47QAx66ocWBFaWDfIL4g
	 YRKzQ8RtlKcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92454D3B7E8
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518757358.8035.11497723888270551957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4f984797e1ffcd52a35cd695124f04d2176ed7ec09c2cc98f6c0f97e9de55b
Date: Mon, 08 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765187573
