Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525FB14B078
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720095923; cv=none; b=CTbEAgIwxYiad3freZYvN5EtJYcjAYS2uF83zzwlbc47UQ0609KTrnb6nOxV8zCbPyBS46aqE4aDmC/g18YJCyOEEsgLfSB7zdhY0owV3KFUGUZShnlH8Dbs7NdB8gxj26ippEaru/9BBPtQ58usKDzDqLdYN3XhSJA42WiWFAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720095923; c=relaxed/simple;
	bh=Fpe5jQjOmx+K3LOQPJzNMds6+ZVAkryBdjMmUdmXhkA=;
	h=To:Subject:From:Message-Id:Date; b=nZutXOcZANxZWRhhH7eLOM0nCWFlDPPacSOyaNYSiEUn79hclHw/4wma3uGjVdaQUgZQo6P4RSoTdERpDg+OuN2Mf1TOElN9RA2JtJGATKQjA08V4VAf9nnDuoS5i1x83/AIs1/q4EdVBcVONje9WnYBY+L2mMmr+K77Yq35teA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMHlkUnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMHlkUnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF9CC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720095922;
	bh=Fpe5jQjOmx+K3LOQPJzNMds6+ZVAkryBdjMmUdmXhkA=;
	h=To:Subject:From:Date:From;
	b=CMHlkUnIG/OiUsC2GercFfLEJ84FTTBGNt5Oa9ErRhNwk5uFBdK7dTYMVTd/rLUgv
	 0cR7t3Qxk3j1UTR9GlCU+MB5crU9GLX0tsqtYhj4XMq7wYM/lCcMHpZHf3FwpPA84t
	 dnc5Ga0qU7A6kVpBbAy3ocHmWY366ULYyb7WbFoArBpvQrpR7JEwmmwR6IKBMqp1xY
	 jk7eQnp7nzgFyxwzkY82AfIbBGEhFQzZS2GbG8A+Jv+8U80GDMhK+4cYlIxZKxDJDD
	 JFV+xhwZ65Pls4+f0LlNB4MiGCUDIi7wGmPWLZji6vNkLazWwGouKLABgi9dhAloCB
	 +g2EZqV/PZfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD395C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009592276.15191.2995505057514954086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7f01a30a6adf0b5b684b4e6617a95d4ecde02a888b554fabf61fd7d85f6650
Date: Thu, 04 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720095922
