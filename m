Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DB1400E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758437994; cv=none; b=nouow6tt9eRbvTl7Ukm2hsFg42AQ5+OLKF4xXdiOesOV69JMZ1cYRQXVL5VT83deFq18V4419AeKh5LMHjHHkHa0kOKNwymShqb+WSGfkbirV4+o+EJDGWLhAVvsS6kHT/4Dj2tMvKhBAxYfFhsJ0FPAdeXBb4FsUNojQqVknI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758437994; c=relaxed/simple;
	bh=WqoWNsHrEul9m4U2slEA9QMCQaRCQNS/0KyrX5kJHV4=;
	h=To:Subject:From:Message-Id:Date; b=mT3Ksf7bUvSrPv7jCn8h741zdsvwYoaBXLmeSYnjYi1h0lnLBXOANlmUlVLomhMWrh16WalckC6bx2Br9mnmB7ID3kXBjr/zUTLc8WDEhas5OniVIteuYZCaIr+84I0yQ5Az1rUKcYgqg4G2SbyBzD6ZdmBx50lIk4yiOrCehz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk0Vhi9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk0Vhi9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758437993;
	bh=WqoWNsHrEul9m4U2slEA9QMCQaRCQNS/0KyrX5kJHV4=;
	h=To:Subject:From:Date:From;
	b=Xk0Vhi9tXLY58nKYPKhBLiA8HqkI1MWpikrFBvjFVWgId/UCTQcP8bM3N/QW1Msiy
	 E3vEi1rqDorgCWBRj9g0G7HL7tFOMFJu6ulC/dlz1xACSI6SXbqu77yxsxCeOLCoGG
	 IvpQqNW+yGyDIF9CNqmssjg/LwCukK8lz15qxKc2lVokO1VzWs6iGex6XYbhh9ep8+
	 oB74Je+HcKd82pSv0dQkrzblusSA5I+NNkZyL5iBpRF0ZrIgi79W3dc471cltI1yRw
	 iA1ALgrt+axOPv7n8OdUQFp8KSTzxLRhbs8e9ZZFjrGiWYIe3QTSfxxODpHtNziFFf
	 FQSuV7GgTfbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168CCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843799357.3115.3824839629496437072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e51d1270f9f971351bd6e0ceb6d62fe6105110b354b1c8257a1eb300781279
Date: Sun, 21 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758437993
