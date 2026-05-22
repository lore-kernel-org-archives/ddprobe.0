Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D11E5207
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779412954; cv=none; b=OYCxNlTvsrf+1u3B+zMfwgIMWYxvVyNbH/xmqGSx1NzUJw26dA0TuPhOeqF86bb8rg7D/iddPv4s9mLyUFs/sWCgjROiwF0vvc9o+r3MhsJMc94RL410rNf80tLYme/ObdpYShzQJ/p4c0AjMD7GGSzn5IfMh+WI+8V9kzGL8iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779412954; c=relaxed/simple;
	bh=5i8/ysTLPnmwr4FpaLdH/ZbiHG4wFUc5dkWUDYZrVcc=;
	h=To:Subject:From:Message-Id:Date; b=AU1UKGPcqdHdg2e8WnjcGc6uTP+GVenXskxeV2J7Ezaj20lUqrfFH+QmbMA2aPr/mvFH4eCPkyxDkBiqcTLmwXahytmtRHl+7kGsGgxB0CVmbUBNl8aIgkUricaBnywErk2IYigTrh4xkMecIGvBsGq//zX0rmotPYswGEuEDfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTLek1Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTLek1Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D90C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779412953;
	bh=5i8/ysTLPnmwr4FpaLdH/ZbiHG4wFUc5dkWUDYZrVcc=;
	h=To:Subject:From:Date:From;
	b=iTLek1VvYl72NWgETWzOQDK8PLy/RfIaVUZQUh0imBx6fWSi+e9FqBnWijrdb6Ko5
	 p/DxgTUVPVorWJpzuBvjjIuCKdeBargB8F2yskakMIH+/17CGm0PbKcfS4Hi7sBDZM
	 Wt5O0YNIrtDbtt4ug1kNDSMI4mabTfkq9Ts53mSQoD4/LbklN/EtwMyVI4GBEnk0fF
	 hFmOmSjuvkf/uFe1RY0BauSXAtBTUCyrUYdwOUZjggPjzp7yErk/+Pxg50zCYlQ+wx
	 JL2wa33DpTZ0XrAdmTOSnCgjtAUMLXFJwURhW2q8NtME1/GOF8eOsSvZ7lJqmBFpkk
	 khqjfhlFEJKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B76CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941295368.19375.11639557672551910151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec8d1d53be75bd6242c20993f3279836c4b8d7c82e97a9b0cd4d31650e1bcc1
Date: Fri, 22 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779412953
