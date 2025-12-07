Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F391FBC8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765123973; cv=none; b=TvDd55FBXlmEKJmZbFHR5IL5vmnhdQMhP8C1aBunC+dLqRABmSZW0w/Bf881A4KRCJ1gp3WNbtQ51pro963MR5Ndf09D0vqRCQnFv0tesisE5KlpeEqsepRirwzgWE3s+PQilfYtFEC9BPmCTPZXGPQ7hB92pd6fhywUXkfbu6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765123973; c=relaxed/simple;
	bh=TwrOndNUHjnO7fEWCnloD2G7Ivx7ru2T8WHqMlAeHCU=;
	h=To:Subject:From:Message-Id:Date; b=t9qfxj67xoD5rMHPJC/Sn+9GgpAYyp8u6tzvVqfsJd9wZildTpaokG2rYNYDOFO0jZD+5CVPCQxm9LQ8tt5w9A/Qyx284/UKrIv/f1qQec2TGEOyD/oItV7br8AoxmYn7yXz9OP/ak6EVoE01yumt6/1NBdVyQSB9WMAXmed5kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5IJ0r1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5IJ0r1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765123973;
	bh=TwrOndNUHjnO7fEWCnloD2G7Ivx7ru2T8WHqMlAeHCU=;
	h=To:Subject:From:Date:From;
	b=s5IJ0r1cxgHLo2LgdzjgXGfat+M/IwdoTKZXp7ShYr6GMMJitbfZzQPypcpQ2ErAd
	 8vVC2p0biW0XvxbaEM0hv4/fRY7qJm0bAFYEO/Ja+4+O1lxRy7SO504KwwL+dZRwH3
	 FaG3phm/NVIjci+3dN6TIY4QScnzAAXFIcSEL6ygVQiJO1A1ImKFKwHDMURIeDqjC/
	 NEfQtz5ARTUdgo9koxSZ9KJYmKETXhhlNPA2cfRd1F/lhBjRNgAXpRGPcN5trtn4SZ
	 JgQCUcjyg+Txo/PJFm9hZ0fLNOzrrLoVE+2JmUTwB6gsSJ59STh0ntKJ9wVdN8DMUW
	 z0+yxGTO911XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FBD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512397358.29161.861615000402179235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfe4c1d21782a4227cd3ab2ba041f4273504318ebab11d4af7f6f52a1858715
Date: Sun, 07 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765123973
