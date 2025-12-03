Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C7F257459
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764787374; cv=none; b=UmWUUG/Q8TR8zLThUicZRuwZpYjp4N3gpz67L9SF5Mf7Q1rIJgWiJ1uln4wSz8KhAs6IW4peDmqT9mk2OaEhHIzBEFP+m8d5ksGHyuvDFFTJEJyzXPj5nfVlfkl7OWh8bNOWBIsdQqVhoOnkDdoTKPsokEsAUUXCPu/3Pn+7mOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764787374; c=relaxed/simple;
	bh=IONVR+7t6SZHv/TVqM73GaNCDixxhMQ3mwlgaqyfreY=;
	h=To:Subject:From:Message-Id:Date; b=rpWXI64e3CeZyv2C3ehvDTRhwrxPHqIuzk3HNKEZcDpFGcF2VQ0Y4h1XujitOxW++Gnh6vFRGl+68vS31GRXwL4Q3+dW6J2zQ0WJP/lu/NY/6mJ0fs7Abpkuwg2hCwhpb8Z0sax61t0DtmeISEUvT+h9fGOnvIMS754mouZNl6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzXWsz7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzXWsz7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E7AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764787373;
	bh=IONVR+7t6SZHv/TVqM73GaNCDixxhMQ3mwlgaqyfreY=;
	h=To:Subject:From:Date:From;
	b=JzXWsz7xVclgOsvNy6fc/HLtJTIuK2d2MMPj/XCogSqNuSwove2WZu1IrdKelqqaE
	 rTTZAmh7UOu6+9eo4C52iiEvERxfNxA16/zu4MtqEitf1sfXZoUmDxQJl4CH7rWUEJ
	 jDsGTIlzrwBhijMWTsDYVC03N7QSM3xih2pCprzXfd2T5PKKmcwa0J74lXe7TpY5QS
	 kziwpi3v2HWJ8XWO4oDj3XC3uCpR8bfXYGkJBAUZyryLksRUujOmmwA3Pv2W+lhHZ0
	 re1nuThSoEa3IMvdMn5+TYYtdWoKlgzdPR3gy4TZ903ttkqczMKtqrVkpfzuq1LN+N
	 zlRKzO/8qsAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7AD1BDD1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478737359.8757.16142305055086081913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656e7eab7fbe1f29704fcf0d15336fdd3e600b347ba59231f9743bfc292c01fe
Date: Wed, 03 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764787373
