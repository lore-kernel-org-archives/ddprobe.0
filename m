Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160E01C6FE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757826595; cv=none; b=AvkDxesgbTsKnX5Q8YcxC5yZIUWcVzgR25ujBoo1didT3Su2Ui9a5nKiPj/WcVdmjBMUbjEUCcwDED+v1NFG43ODYQfiOh24xt+PFvEeMezHU3rd3dAOBEOxmIuAsUfJ1eestN8RpjRWolDiiFmNA1EUyQZOl3AJOUR/zwso6G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757826595; c=relaxed/simple;
	bh=ZpXVws9+8CjMNdN0R9VCfXBnaUXBPXdqGBQwQMT+St4=;
	h=To:Subject:From:Message-Id:Date; b=FEnWLC/4GATS8meTzauRXXVXPweWPWaKGB1Xhhg+KQ3WwKyPrDnff1ItQTMS56YvnLwVHUIsN1Hg11oheLzkE0vxZPInb1ruas/q1p65x7JE5PUAa46hF1QjkNlxuUxBLleSyqsvTm9OUXr4hqiII2ktKyLyLhBvUFdbFhHKa6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZUlEvTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZUlEvTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757826593;
	bh=ZpXVws9+8CjMNdN0R9VCfXBnaUXBPXdqGBQwQMT+St4=;
	h=To:Subject:From:Date:From;
	b=cZUlEvTWU4VTXim3GB4qTOrbyAxuhiH+UR+mL52zK1A8wYGMxMEd069XDMWJzXGA2
	 5jftc/lC5haeMLy3Qrw9OvVHsmibXBBqtFlIUvC9HUb1kzQZn4LN2nX1esqE1wtaGh
	 CaO2zCKahbTqfNaBWwIn2NmTNeWod0Q3w7Og/AeBJpHX4/v1Hz8/D8pJrKG1N0ezPp
	 8iYZrbpp2xSRVl6MTIKYXPuRLrEoPNxDZNwh5hSICiI2izoP/4JUbulVb94x2JG7oN
	 9i9GVtUB0emG3qvXlRbOR0pMkaQzNkQxTEEjdB3Fbw4UIHTHfm9p6mP/bCKq/h+XaX
	 ulSBsnxqpx7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0DCAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782659357.14226.13340713605900834764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21729c8cdd0d48860c097d7e867b41ae33d57d2bd01f1c3f7c66c641073d1343
Date: Sun, 14 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757826593
