Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE84309DA5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477434; cv=none; b=RQ0uMIxM+5AnYgBkz/1NxaXtJFNu2EmEP+CMjspjtAsEocsVmjao5cl/+CzgEtda1khdpvYe1hUHtXnDAce7VYd8oRGMZ9hqSnn+d7APQ+oBM7oXEHO7QWWvr9yMNTDBNY4MuvE4BQHndkRZBFk+SlGCpkXznlAbGZzRN3GKH20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477434; c=relaxed/simple;
	bh=26KQVOQQXCLGIrb124aMWDNMGx0wJLe9lbPXlgwOkuM=;
	h=To:Subject:From:Message-Id:Date; b=t8DMAEmE5ESTbI8r/bhsz7AWeIDFF+C68ktslch1aBo3wkhiPapPwKC2la4CUdR3yHQP5Z0IGBRWwshwElQGK7DFKefhR8vGoyoJjAKcNkJRWw1p0q3hR9BBBdCKFwqWYNvNaCnC/oSQcfdlbxiAb6TfpWNmi1kIdGFCvSQeHU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdE93KQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdE93KQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA1CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768477433;
	bh=26KQVOQQXCLGIrb124aMWDNMGx0wJLe9lbPXlgwOkuM=;
	h=To:Subject:From:Date:From;
	b=gdE93KQAqENUZHdAYNxruyHjhayjjeSp4G3krm9EQzR0y4HL8aeQsCoWofRYQ1FjU
	 Ogm5e35r5Ma36UJ0wdENhseMWiRcZ0f+amzrO+e555RVUexzg6NTxpUfwcok8bDSa2
	 Bum/pansc0TntQNAF2hfENEWGDqQ25rfiwplVuPrTJVEshjhCVe2RNcD7WhSukNI0l
	 f7hgf7pPg2Du3491cTxwzp2KhgB5mwNi9SxqU6Lqg0LFNqkGvPOKRKdEej3OWiigOz
	 h4i/43urAfkt+oTncYsoA5fKi3q73bOFRU1f1KfZraD1tKqxLfPhNufTOPB8H6WVGE
	 CMTz4X2kYTi3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9BD41176
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847743357.2410.10139696957192060841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c5b8b3987373104f60c9b7c3e3989dd7c3a40662af3517f38d41931d2e9555
Date: Thu, 15 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768477433
