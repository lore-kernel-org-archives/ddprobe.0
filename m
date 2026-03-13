Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181841EC01B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773438894; cv=none; b=Dog+25dUm9RErSvbrnZskci5AP7LE3wqf5pUFsa1T6OLeGmETK0rvzHjejoFL7Py9ieVTihHZz3cfEV36QrX69vzvRulJH5e5+AZ5kSEBcLZlHNer/Nak9ZySND2ZkZ6ggHvdE8FYJTmC8iwhfyyijnEHrWbCjGmJQdEu/MSIw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773438894; c=relaxed/simple;
	bh=5us13e269gLazNI61YpMNcyLeUIw6AeqiHMRNBD42MM=;
	h=To:Subject:From:Message-Id:Date; b=XkhnUslKc51cwJzuHu8LEEuE3saxJ8E8++4eoxipuOBSyraPfEL55j25wfs865D1B3Or7wyFvmFbJ1oN8U1V21wgINQj55zqStc2ZyicC6E2PmnkMBDNeBnLZaw981jcBvzDAwalbenjCQ25+5ZxznwWDxWFtm8d91b1nPmwmKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOe0g5Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOe0g5Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA8C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773438893;
	bh=5us13e269gLazNI61YpMNcyLeUIw6AeqiHMRNBD42MM=;
	h=To:Subject:From:Date:From;
	b=AOe0g5Eu+vLreEzTd3auzk1fNC0F1G6TIhrDtq5cto4gqCYKVMQcoTleR6szKTpGG
	 FVcq7d4ewRk6a4Jbkq9Svvm+Awv6eyseRqDNF4Gp4//b8szYoy3g90agMBOLme8B9Q
	 Zwy8z9pl8Jqoaw33jjBA0EJO4tQ2pR9ILYpRArRrhx9ks28BPVsxrwHRYfKVuXNfWx
	 7QKUVbJAYEaLsGmWf7mIlJP8vVxYmT3ORvpPpyGcFHubH3imX1FcO86cKmup6iD45N
	 oINEHE3Q9pUkCu9v+aeYXkWPCd12OzDarKBbFJmL2xmwBEuth4yT7MSSgvc1H9bUH5
	 qZBe08K7KEsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9927C107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343889358.7433.3760460196121930377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e36f46a76a26d99b4549f5f23b75520775252d1b6c3ddec2e698ab7e1aa9a94
Date: Fri, 13 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773438893
