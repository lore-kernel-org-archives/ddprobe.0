Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162338838A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781237194; cv=none; b=rxsGdOwfsObtV6lYLPSwbjp/CVJ1mUV/ushOEk8Jq4JEBJLuxSYZbbeQ40NmJZrXMxU6sye8nRE9+dA4wUU6v5so2QeEWUNeza/kxMHrFekRqEmYjqk0HYE3NnTDfnVai34cnvJUDE/myLo+h5DR0Y+mrB0arSqlYZ2ZacZ0Kgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781237194; c=relaxed/simple;
	bh=BQkAldtYlwoJ78qdhOJXDwd8UCD0cz2hCBjoxx+xauw=;
	h=To:Subject:From:Message-Id:Date; b=jM3fEPh/wiruJ/aPEG/WCwNyv+SPWfVkxv41QrhggR4f/2vYEpK2CR9OHiCce/FT+IWlu0sz4uvN8t3RlJU2gX0Fb3hs2wT7SNyLdXQ512qMNqriABlBVBjJL3XjDoIqVbGn2z49KC8YVmmPOKeVueZiREGuH4BH72lvsK8yrw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muKbqC0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muKbqC0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA19C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781237193;
	bh=BQkAldtYlwoJ78qdhOJXDwd8UCD0cz2hCBjoxx+xauw=;
	h=To:Subject:From:Date:From;
	b=muKbqC0dUN7S3ZwUyGH0y6YWR40qG5EHCV5SWKWjb3R23u79E6JTC5PatIy3bTU+6
	 pctS0nCD2NR8mfpOswoKAsbcDWQ1mL+5In3vqQcLSRKNsBWcYYRKZER8bCfoPxfIHE
	 JwGib4y5soAJkCLA7odVvuNbLQGwHdHlfQAsoyMqOhCJ2hN+NPRGgu9oQjWNrTpox7
	 CLAQh0mu2VrAV3dIlZyQYV6tftW6pbOpVbsnpqp+LQu5lFPjWUeltBD9IzJkJ9VTfT
	 7LcTUgBn6de89jqZrK7K0m4Bz1Uv9IpvvQF5PK8J8b8ELFuR6MrS76jZTKowqm0x7M
	 6TJLAFpIgH3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8286CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123719368.8445.13766765138000762322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc13708123ce8553e791d43c55286282a08b74cd98c422a301c5fb70c4b89c0c
Date: Fri, 12 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781237193
