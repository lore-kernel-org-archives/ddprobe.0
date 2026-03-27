Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C98C33F8B1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774637094; cv=none; b=IrFRLEEoYwQNMwxVZb9ZV+zjMcopuseDeO4EaDytlq5/eSPrFC5kTaQ2EqlyP4ZfCESg5TWWjX+e7cBB2bXDPxyjtfltlFg59h8ujduCC+gT2j7lvZFhrg6JRfdWMKvg0SOCjIRj1rZUhHs4MDGDnbj9pMq6eylLdquRe9UMmLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774637094; c=relaxed/simple;
	bh=p3/42dyG7BT6Eb6Dzz7CYoDD3dPSj9nr3LYPBtuI5/c=;
	h=To:Subject:From:Message-Id:Date; b=tH7x0KlHFeX5Up6Uz4lyH0rvvsSKENpI49hi7XjO3JLhfh7LWUlaUoDQ9TMoIGQxVgtqUfEDyf4Y+MSI5x6E14Vh9bfVOPyghdnkQh+i4q+IEDfqXgRrlhazqwBxR/Yz3sja1zfyHZmcSlJN2tYEQvNAydMlkrFDVhV9mt3wys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+hSKw5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+hSKw5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1F4C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774637093;
	bh=p3/42dyG7BT6Eb6Dzz7CYoDD3dPSj9nr3LYPBtuI5/c=;
	h=To:Subject:From:Date:From;
	b=m+hSKw5sz/ZCfHJ3ohT9hI5G8FaaUGfojIITi4TrTqv6gi3FgiFWX0eHoy1RVBhQE
	 9InNC2uZaml5TBZBxU/E+IHkGfBhSNrthokLEQTY3ZU+ugvpzHLudvFiRUjZSj1R+Y
	 RqOqQ6CSFxOHAFt9PW6CykTFPBJLgTRFMJsWzBHPlfb3ib448n6umls7Ysjr9ig2/d
	 nvhuFp4Bwo1Wlm4dy2quUfLQnUNxWE1oILher+e/dSdbujXCVCfNheri5vUBsv879w
	 vpWAKdHtNJFErDq55gJC6UFYkAglaxVUzaL8r9iFhzg3emPkYMWnmG8GSPfFTHnuMM
	 q1p1jbwILqXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13F310F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463709362.13590.7808315882149165192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4451981d67547830a40ca7a36a515c40fefda00c7ad70349c33df76904f3010
Date: Fri, 27 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774637093
