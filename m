Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392153A59B3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779360034; cv=none; b=oKvx/rVFYqY4XNmdU21scOKKu73PCYK79r0A3NtsSYmrp+qdTUXDIPYZ9pq0rN8IaztDKECjSpOTAJrhExEl4hI/7DBkBayFdX8zKzPNsB+liX3Cqi95mOLbCeFtFX+ODbDsT+a0v11/sFXG//Kd1oBQH1wZX1SNpT9TLPzYNUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779360034; c=relaxed/simple;
	bh=h3TxDUWbLpa/oO4eC3nt26cQWv0+66PfXDmrcF3hqaw=;
	h=To:Subject:From:Message-Id:Date; b=lPdyeyXOE+VenTYfNC52q+VXLjTvEhESkQ6Ny8u6sK8pOKvGR7VSFW1pCeI3qFC3yVuf0Yp2MgEdknuxr/ErNVhEEAgMxFYMs+5zgHuyibSxpsjhhpwQ83pprvcaLk8ePBH6f3L0a29CuEwY6mgw5iLuulQmGYrSmLkAGIa9yIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNYyiTFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNYyiTFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A81C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779360033;
	bh=h3TxDUWbLpa/oO4eC3nt26cQWv0+66PfXDmrcF3hqaw=;
	h=To:Subject:From:Date:From;
	b=pNYyiTFXYnK9fjRF2KAbJQyajzwL86dbfM31PUbPvTGOFrQX0JexRBB6inngcqPuS
	 s4hftszTQb7Y88DFgwfNRSeFcVxLZ3FB4pc+pzFl4Y1rnW3nDo2N9ALiAB/iepH0Co
	 hb3o6OCoSCD1kMD6psujQNXg09IgX37nEvg9LdCrLtUS6bkERnzCRVpzM1dOh18ymy
	 E06MUffKUcUm4/7lAGGBwm9qt27nJ9ZXNYo79d7SfeipnyCqCIDKfurkDDXGbdw/4+
	 KdF5EeDp2eeGmBxcsA50ptdmatkaUL6eWKm16OyylgvijnfKylFn0mD4Zi1gzd6Z/c
	 qAWMq8cCm+yDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC56CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936003375.24050.12688493604916648649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd73c1dbd1a7c42a653014bab5c3bea796220cb4fa318c5747f82eea4c3560c
Date: Thu, 21 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779360033
