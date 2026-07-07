Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF7C3AFB1B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783453114; cv=none; b=fPbODfsdLbeAj+D5U75rCAlB7yuPdNoMLh/84uRr+1Crji2gV0yiMqQixuYASSvRAdyUjmS+/5JfnolqwnUL3D6T7FYLMAUJhOPn2v7t1r/jeWqeJEfYG/vwL4KIEysKfAHz7aXOoa6ImxwVi8MA5SVsgAGo3/N3lh7Gr1rupbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783453114; c=relaxed/simple;
	bh=ESXr4MTyts5bX98CjC8fgeF6WYjSPR6NsZ2CUkeEWbk=;
	h=To:Subject:From:Message-Id:Date; b=mQP12mrjT70dEcIaGYuI1/YsmxBSeDY99d/9HCR4ZJndlCr+e3DjdH2Q6lHPQt91PzyUNBSxzuj2vmn/MN5VKENV5lHhImmKAmARjTZaJl6C1SmfSe7JKTCNf1TlIZBDwyT4I5wQ0QVI+SRlipgCwzOmrlAKE3LoEtGTiyBBrrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9CRZ8gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9CRZ8gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA245C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783453113;
	bh=ESXr4MTyts5bX98CjC8fgeF6WYjSPR6NsZ2CUkeEWbk=;
	h=To:Subject:From:Date:From;
	b=B9CRZ8gxSiwDU7PK966gXCV+wU5s9QnRYE0w87k6l45Kub0mDNxiJbO40/eWPog4e
	 IiECMhQQAvbV58kWVcp6nbVYHIM14fjUl1h9TABusD1m7R2qV//4KAXFFnOs9KR/18
	 b/0AJ++SzWqFrpiu1y/ZS07DOpGcimXCIJm7jZfL5Ko7c2Q+J5mf3fAaQ0tQaUvqep
	 Nh6/9nRMzk7M4xNNIWlCUz6f8WO2NYkpqPtguNqvt93KPa7XxCtFlVfXv3n23zt49j
	 d0isxrp93kY/Tnkn2+u0/613IZx1GcrWGZScET3p31AEpLZThDQuLeAxrS9B6WBbPs
	 CeuIqXno0J7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA3C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345311368.12885.13475323307279418743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5485e4d3b798fa765466e1e290c027224c75c01d7c223b68551c4dd849a28e4
Date: Tue, 07 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783453113
