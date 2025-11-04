Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4811A295
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762233594; cv=none; b=d5IjcOmEgYBIkkmKD1BVKC13oJkyzdnsaAsblgi0NN84XRwELdP1QGS2VarQBSTRXii8Y4ss0zbcvBixYAteegYVLfA2/60HR1JEvEo3Iu89r2VUyunFCxHAKYgVyFO3AC2f+R5LLpFtzmVhoeTMo2+lNobd8D1rQVwjQAdGvRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762233594; c=relaxed/simple;
	bh=DEZy/xxPl3bkXkHRO6Ct12Y+xPLmurKLEr3SV3Wihug=;
	h=To:Subject:From:Message-Id:Date; b=ShW9vBUphL9tUsq4miULubY2ezR8ooq3yPEhsN7OmmZkn3aLykGuKmqN6RHlYqn3UfjfU6PmJNOP6Mp4eu6UHuR4G4ojXOEooLOl4wtbogdAvl9iUcgh9FoNUZK9QLDHbmA51ZY/J0wJ2+OnqBYrryjpcjWBPafdHq/SQiMbDuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzfQ5Eso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzfQ5Eso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E1CC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762233593;
	bh=DEZy/xxPl3bkXkHRO6Ct12Y+xPLmurKLEr3SV3Wihug=;
	h=To:Subject:From:Date:From;
	b=GzfQ5EsoN+QifghZLgpJFtr4MJesYD5ptvwxcR56kiEEe8ESWlGE3BE9Wuxhzpkgf
	 ZHIjcgwb3c/Onz2D9koyRGzGUchdeCsyG0ScZNQBCWYLD9gV1fusCDFUjBP88JSrDo
	 jSIJhvkSxjlvll0+o7ON5/iPuwHOLGYyTLiyZcSMzZbbIpJL0VUmzJRwUlKQ1m7tcU
	 k88/QqDjC2ZA1v7XM7FjQGCF3qS7abHh5A/MZBVK/L4CVEYMuZ1BNQ4zqDKvrnqfdr
	 rzbtgFZtiPGeXIgSA+dEplHrTqYlcZtxStaNd+YBiPUnYH1nhtVn1tyiI7gZDrLFkI
	 59tZXQmyFKkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5720CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223359366.6390.14218105923389285037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8273e9cd3bb8bbc24103198022e39aa56950b43dcbe7f03fe7402b69a07087b6
Date: Tue, 04 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762233593
