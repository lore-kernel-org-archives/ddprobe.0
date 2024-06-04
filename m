Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D6148FEE
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717517783; cv=none; b=KTyEaLJldXAt330SZHKqqckCNWbCYoIz/vGK7Urnywzr3EYL+3S0JHmx+2IuwDphyXl0yBMHr/MY9eYNgZ+G1faDsjySmpwQj1JyI+9DyaQGV3Hi5nFM7F93fqXZf/zHr8SleueHkoy4wRJ3nYMiEiYJuD2jhKFd2jhRr/2y/G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717517783; c=relaxed/simple;
	bh=WojmHZcieAY7w2HlVjB3mQsQ1W2lFMEnjCZ+M77aPDw=;
	h=To:Subject:From:Message-Id:Date; b=NHwtSUzkgb2cWmsI73IbjAj3GrABT9Sg9W+RRBfhtxIDEiJ0ViaH41eyyTgbA1gIo1qB4tO5fjGGDFa61V2vmlBY4mHxn4H/vVo49HBDHKLK2eBZuudnicZAcTg0kgqIX/Ph4th0NaJH7vRKG19TxQtzj4in4Xuzf7I6iE7wJFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABOyehGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABOyehGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BE0C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717517782;
	bh=WojmHZcieAY7w2HlVjB3mQsQ1W2lFMEnjCZ+M77aPDw=;
	h=To:Subject:From:Date:From;
	b=ABOyehGPCLZ3R1wI1+iFY9cMa5va6C760mWYTWkeQee6Jx4MmHBVAJyU0P49Jo5fc
	 +EPfGp+3lLM60NHjo0Qy/EFnrdaOGVnVpPP8ICOmUM2R/wTOOJXbaeRkk11AYyOvly
	 qZKbGuY/jTlBW82I45dh63qSrQNb+1SvURJK4mgKr5nq6V739Hd6FjERZZIuFW3AwM
	 VAftxekJ+ImJ8ZNy0GBYp42ydMTsVU4ilmdwaZYc1kgtqPRJlCWWLUP6tY7uec+f+C
	 7f7NiTyUFZH0C6Bp+P2bJokuREQIT/+De+1bAkzKOIta8/aIJbZckxz4ej3uslJgKk
	 5PZlPiDdpzkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1456C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751778278.32361.13796691739338964258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815e92888546640e2ec3ea93930cb3cff438fcda09bbb0c2d3e0af670a83a111
Date: Tue, 04 Jun 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717517782
