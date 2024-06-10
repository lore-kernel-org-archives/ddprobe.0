Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143C5227
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718009243; cv=none; b=Z+8thJss4DafzsLSv1AbCcGChwB8WLT3C+N5NsOnPolLdsVMP03TxOMwqEfdTQgkgOFZcbF+s1m/f+uYkwZXT5hM/ELpcav5h89QLkaJuplW8xpxJaUuOnLI1sSyQH9JVFWBapczz3wr64od4rMet+vTqKzDs5etUfP3EKOQ/4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718009243; c=relaxed/simple;
	bh=bU4fxBVRd7kOZ0wjWw/TOJmDFiKIdL3ZBeduhnSfiJA=;
	h=To:Subject:From:Message-Id:Date; b=q8oAcQP/a53HSHDq03dXljujXR8PHCB3pyGwG7vHkHBT2+HJkxcDgjnIugK0alcVKdNuBg2s2daX2TACUCvxMaac4WLn6HIuyTTwH5xUKcaOCU1h9u+mW9QKI6W0E36emUEvZM4HiBJlcMZXpod/iJv1jLDR+8VM5hZWMisonXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6ZeOYxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6ZeOYxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01C5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718009242;
	bh=bU4fxBVRd7kOZ0wjWw/TOJmDFiKIdL3ZBeduhnSfiJA=;
	h=To:Subject:From:Date:From;
	b=L6ZeOYxUOg/TDrapn6VDCSWBkcFRkPT2rgub0voF95gNoPmpMl3ywlSxQ0bUIa7kO
	 ZTwHuDocLSSJe1aRJXwLX1jzuPR0POmspfAbaNnUED/roCrc3+jqzALhUSRX1nqNKa
	 2GamsqdF+HUxKSeqV/+k0XgibwpmgtaVnfvdeqgRUFhXyePYj3o1Hq5vewVV7KZJ/a
	 6G7oy/ma/JmYgl7jLMTs5S5OkOUm5uniGSxHJJteG21Nvr7piq93SuWdnNDNqqZS+0
	 kEmXrPNKeL1ZswEf0uXep5tSt13wYA08+CfGmnDzFiHAsHdVVuNMeQSxPMRQ2tyw8g
	 gj4GCbQgWYWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C014AC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800924277.26124.8246670147008679452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8d3b106194d0cafdbd3104748157f18f1b6e25b357b1791e70479a86c7ae77
Date: Mon, 10 Jun 2024 08:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718009242
