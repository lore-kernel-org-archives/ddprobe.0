Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A92F0692
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762522794; cv=none; b=PRNlGFZxVUbBXNEFVrOc4aoZXL4wlS3Oqgg7hceuSsvnoN5FacDNp6B7F165M5DaalVy148wGPM3IEktDvckUu7VRzHBvEqqtXR7gdtSenYG8pIS7PrxGU/LBGzgEA3fZ6gZCq3hnPTIO7T6HOjK+nW7wgfYYr1TAKDScU4o1LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762522794; c=relaxed/simple;
	bh=4q1eYtNXjSGZ3rHRXOgsBHIujBMZyTOZwDP9+5hvXiw=;
	h=To:Subject:From:Message-Id:Date; b=fehkiQqvgAbWJpPAfVyj9GECmFmsag9YCd1vTxZqZPpH7j4vIdJA9YoU+XcWG/ogVLUh1ifA5aMHpLi6sR638omzppO4o1faqgwemO2jat906gZYvJBwbvQnaKoTOswxIOf+rSczENEzdrsPxAEsnnpzldg1BpYif5OPc+dz9Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzCgxbbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzCgxbbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFEFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762522793;
	bh=4q1eYtNXjSGZ3rHRXOgsBHIujBMZyTOZwDP9+5hvXiw=;
	h=To:Subject:From:Date:From;
	b=hzCgxbbjcB1SXwRCl5OoL75SD8Ni3J3bO9JDoZcB5/7fN2NHebFA90HXySwGRICxB
	 wXvLidywBIbZop/YKmXpOMLBwxTP9py9JbGpIBq/iZ/lf77VPIVxWuEDCmvKYwuczD
	 NTQY1f0lvhsTQGx7s8BFgY7uMzpbnIx3yrjyv3YL4lCXQN7vIDA+s1mPpCNDjLOnX2
	 Mo7dceMezU4aTftvZshZSHCulp1y+H64yfTE69sD7eG0l4vpBuLyqj9PEtNSFClQqx
	 0jz8faST7Sjd5fbgxuLP+J+fNBc4wO5rnZNSE0etdwZ+oP/J/bOIOqG/uuViD4Pcw5
	 WH7ZdkmWFh8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A0CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252279358.10947.3122715269909869121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1706a1c12b6e9df8f60cca890b67242da01753679ef71423992b6215de9f9fb
Date: Fri, 07 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762522793
