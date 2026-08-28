Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62D61EB19B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787910634; cv=none; b=LY0+eaRzTCnCK8hEytGT2S+5BolLfG0wthqKUKSzQ517zRANCgpp3NnIwHd90QZdQN2p5UHvk4VKE8bFqOaE8tyZ8+uyqOahRZsD26pRB1Y5cdfbtudztU6sScz5PBi7ZcauhqBVZIuqAKErGe835Faib3q6KqHXIivglHPpd4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787910634; c=relaxed/simple;
	bh=ovhmsgFhcgGZbl+4SbG0vPnIscQjtkfOwXmB1ydSwiI=;
	h=To:Subject:From:Message-Id:Date; b=Mlz51+t+2Xw+3xhB/Ot+TQ47Thf9tKkAbEKa9N6rFKHya7/N/p2+WvKk8LdtBpml3D9OywLeJAhrOF3RBIByQRgX0eR3S/yPLalH2qFfHpFGpfqrG0CsYNucovlJBzWGen3fozQUN6BenWmRWAT9x6fYf06Xodi1kVhNWS8D1pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGnJjhVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGnJjhVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF41DC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787910633;
	bh=ovhmsgFhcgGZbl+4SbG0vPnIscQjtkfOwXmB1ydSwiI=;
	h=To:Subject:From:Date:From;
	b=DGnJjhVKFNXezFpwPfkJupxNegViVCYdIbBjZTnaarI7MW6T7Ebq+1K2sSMOL6821
	 +IcV2GvkpHvr1XmwneZ7mf6Jl4qf9pXA2P2x6qC/H3i+/pOPlZi/O5rYH1E5HFGWuK
	 BmtGc44eFuWZGvW62CkNaUas9zJLAtP9wu82gMq0tyMDhYT7eimYlpDsr/9MAPMLhD
	 8yoN1NBDGy3q1ExNoE0MA1tB65xSd0IVdZiZzsM0z6WbaZFyhc+PMN70IZ+UYnJIRs
	 plsR38uWol2gpJPlrHy/aBOl+S7+vRDF8/TqvpBoF1oBkpKV1gXtjHgB/ozdsK260Y
	 rVpEIrz3txRRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3CDC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791063368.4435.12761412529275100488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb310506175ca6880325b6f71653dba5be2f98ea904318cc3a36a722df9b5ed
Date: Fri, 28 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787910633
