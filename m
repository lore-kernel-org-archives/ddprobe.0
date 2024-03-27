Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DB65F869
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711538896; cv=none; b=s30Q1SAde8jfN0/usFNwFcgKCDoLxqrwX+DjkJe4aorHfmWVkNVN3P7it/anj9WP3K9nBYWWYDIRTuAxabw0DBjR2AA8outnV1KfIyHJBCUr1S8798+MqNjfF87IZE4thu7A7NukpWDOq3c1vTq2t/DS9f00Wcy2I7a/YBTea1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711538896; c=relaxed/simple;
	bh=DA2X3Q6k0lG1LasqgLIctZllTEiFQFALwHVqEXsFeww=;
	h=To:Subject:From:Message-Id:Date; b=bp/iXqlirlAEL/cYneLdKtDUTcIcJh9whYWwgfR8rEOpN9wTjbdVyhY9b1VQXkemEfR+TYJ/LJgUQVSIKPXYjwhiOze/2jH0YTQTqLsMmWb0m3aO69kA+YYWOxqKTj3PIO8qlk19UeniBQ/kmCErERtkA8LTVXXBtziOcoDvNoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+g6oJNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+g6oJNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D85CC43390
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711538896;
	bh=DA2X3Q6k0lG1LasqgLIctZllTEiFQFALwHVqEXsFeww=;
	h=To:Subject:From:Date:From;
	b=c+g6oJNBZbVtkqQD5AamgliIlLfM0RFozrboLgcrhNODhHltY0XSqX03syCNnUHOr
	 JAEI6UiQtsFoursGCcqaRd9GSR5yWKZXqbzB6eOR3maCr4Uoiq9cS8Mp709AaYVgZ3
	 XCGWN33CChj0iz6xcIPiFUClK3R+Y774gXPUncVDCwtwYEEP71VssteMRvhfulUnuh
	 aauuOX5qkTC6XxYu/tNKAoUm5plAune7Lp4Q5U9YhYbjtNB354mYQy/PxzaIEu6Q0p
	 XWugaw3Xtkwf/1eLeXSq13B3UtfbSdamYR2rO+Bw9VT9hq/6oZ/S9pMXRaB51c9JB5
	 6JdisFKo+ATSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F0AC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171153889645.31422.4546701394470071036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a92fb745d83dc8e6c7c11af97cb36f5f272f12499735114d575c09b073caa7a
Date: Wed, 27 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711538896
