Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FFC22F74D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249174; cv=none; b=aan6aSfdYDItBSd+zbGNhJBgJU5NzcauB47iTSawr22ISbuSn82O23j8ffqmD9O3OajPg0LvRU9Pqcxws7/9TphJirCHLxEUx4CrF3FcIhQBQsu+2kRaK3nwPg4WS3sW3phY3sX/Ergj1xmPxkTxVBLc8Ncq7sUIJgrix2Z8V/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249174; c=relaxed/simple;
	bh=6AaUrQ8gnMreaWjY5OXXfWlofNPA1mvMsliPbXRY4G4=;
	h=To:Subject:From:Message-Id:Date; b=iDaOAmcmytoAVxvyvDc98r7MRV6au13eIBxhGaAI40tVau8YTL4g55qBXzYsdLXkXgJDnYCyir7KjYhhlCi/l+N6FOrYuRDvmHX9I7N4utSiV5waod1BeSRDDeETB6dUfAb2C9t5jDwEgrlvrFhHpJEXcrfxVtLxkzWEwatXt0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0Ks3dlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0Ks3dlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764249173;
	bh=6AaUrQ8gnMreaWjY5OXXfWlofNPA1mvMsliPbXRY4G4=;
	h=To:Subject:From:Date:From;
	b=f0Ks3dlmjdrXl9L0PmbtdijSNorGLXmmy/hg18INyLV3WzvCLD/4znnZYMWi6jqam
	 m+b40txxSkPV62IGW1jdi5zVfOM4Pb/dGCbBouxjTtN5xlDefyuE+obWNcERKh6P9T
	 B9JpCBayCCCgWhIO9doKZ6vC2Mw5GEQEO45d14u0df9CY6Y61azy5NLdLgJaooOkOg
	 R0s5sxtihzhxLR0seUJcVC0hYnzhlU40rbf+6hI4dSVhD3VqpruHHCJkhMPdF+B7kj
	 9GNjl2fDc8/8HUh4pEu3WWWZdP96b2rLDZpIw9Z5J36XN4IoymOEY2lY1YCMbzSQGl
	 E7z9bP5PLELBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A1ED11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424917367.26823.7086709350693295880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49df96b27f853c5deb66ed93799aaa63e6413b120e4faaa6ca1787f2676ff3e
Date: Thu, 27 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764249173
