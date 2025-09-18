Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A4C1FF1C4
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758157794; cv=none; b=AspMnHUlON8Gj9/jgh3/g2v8f4PFIDtuFBQNso5hGSKdsahzkAbH1kIrihLv8wz3UXz3TZvroBoCMi267W9/sKrjtMWL58bZLR3vZJEcBVHD8E3b2kTvATnqAT71SY7TFF7kre04PrtOUGyE8aHyrEYzCK/x9PGULQDfFWRXop8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758157794; c=relaxed/simple;
	bh=U1WvEK4/TucD1BdEIrjJIHnCiwXCU0pHEsvruMsAwqc=;
	h=To:Subject:From:Message-Id:Date; b=lhSYT8DYd8L/ySNTojBqg69e0mezYL9Ihb3wErynWQnoSid3sckfATsfHprsoP9sB1kW6aV4lqesum4ruGRQKfsUMzwlzmP2PjdRfHtChfnoHux0waXkgruuTpbxEjHR+OWjM178VmwCSXSe2vNn2fiZG//IDej1RsTpDV/lM90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1S3Yo2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1S3Yo2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0BC4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758157793;
	bh=U1WvEK4/TucD1BdEIrjJIHnCiwXCU0pHEsvruMsAwqc=;
	h=To:Subject:From:Date:From;
	b=T1S3Yo2NwZpNB3svThjxiaLL2nf/8JLZydL3hemHE9JrzNDr5qK3yuaCme56bBJoe
	 qVFsa2MGD+w4EF2SEMUTjwfiISopMRRcYnIgirdmrOwLq67k2WpCNe+LkZGs2ri9Ax
	 FLJBSUT5rC6ehUNOnwouuUR31+J08wAkKlx6bNsrLQ4NFuWMQtRjF13C08vugR90iH
	 w7YvD9xUS2h7xqqqOoh0vrBrK/BfZ7bNwhRfR6QB25OrfToarwHMA8WK4MfTbQWeFT
	 WCe1ICJRQxnf1fgZwU+0IdXBCJLfDdF2HH7D+dpr98krEmF1sdO8bszjWn6opCiMcz
	 Fezxg79zKk4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A20CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815779358.4963.14211333128820168178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ed7ad954eeed9cc0b520f7b435683c3da821c9357b91a689508e4cf046db3e
Date: Thu, 18 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758157793
