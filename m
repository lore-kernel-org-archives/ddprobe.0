Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E243C0B
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712393897; cv=none; b=WWSqdTzzCEd6UH2p3MKjTRrhWenqO0T2dRXd+KmWzaz3MV2K9btYE9cqm395gllRgkzPkr4Ibnr0PVVJR8PHuXJXFDFvkI4Zfev3qpt3sW/I9fs2qSiJNEGE/vtGwHNS4uKTKy+3d2puyftmVcBoTrMYoWsU8vyat4KUh4Shdcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712393897; c=relaxed/simple;
	bh=yC1fa2GnTUK1SCDubxUbskP5Pui+ruk4v2SdH5rtsyA=;
	h=To:Subject:From:Message-Id:Date; b=N7wjzifFLbaS1kipBtNe/J61b6ELnDEyyDQvv24D5KWEX3bKzqIOMD7PBA98eQUaLdBykOQdIHbU5iZNlU4pjY8/uFgKnoMXRx/DeDuGzROc/CtRoI8hVTbPNlkFgtq0dbg7C9fLutUHODzNbym3lAbVOfDrOyrdEkipy5/ZrDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDzf++3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDzf++3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B62C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712393896;
	bh=yC1fa2GnTUK1SCDubxUbskP5Pui+ruk4v2SdH5rtsyA=;
	h=To:Subject:From:Date:From;
	b=RDzf++3bIrHCbDLYCW6man1k2ob4UQEa4TpETFWV1CT8TuhPHk5a76hPoGPQF+MBi
	 LoBlqBzs6Fdq7pmqhe64tFgmpQh3DLrxx08Q9MDstA/oktGELrPJ3+23z9fYv+yeP/
	 6qId1KnqsatUYRSzMIz3zeD4ITfzYs2jRq6dhX7zcFtLRAVFdGhGf+5kS0FYWo7Kf6
	 fKUl0QJGxZj0mTrJM2vRkfelSgOplTKtfbNBNl0QipEWleMp3S5S8v0hmXMwTVwZYW
	 E542G5zcr3zErDtq2qMw/fdGu154oEDc7chCEuVnBaR2Wr1uq9U7rLqKlnE3vVKrmX
	 STk14F88KBy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C54C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239389638.18196.1516212986176488355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c7c8afada6099ce09c6269d27e36e1de92868250232fb2df9c0f971e9be624
Date: Sat, 06 Apr 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712393896
