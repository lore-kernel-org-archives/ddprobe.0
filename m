Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E2C28695
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762325394; cv=none; b=e1miyPpVY0rmpaAurK/h6H1rYy0oZhaIRgRXIQiR/l4ZHZGOd/19YdJOPPC1Lvvbl9tTO+toCEcL5TH8epmMBjM7yK5Gc+P8LMeZ9GTBYQ3kwvNsotOmYK/Br4qHLHO5jSoUk5UG6AvxPnyPQKCCIe7wb8Ejklv5TC0EiUJdkXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762325394; c=relaxed/simple;
	bh=QJ2laKqt2L3MYBBT0SVuslJwvh+BQBVBL8RbwHD5Ugc=;
	h=To:Subject:From:Message-Id:Date; b=BqSdh39hWRmj2qZvKCMfr8a8QcNSAKMqFl0/eb8eTAVsy1o4G0MUmZIOogc/1MeN40XFpUOWx3McUyD9rvfkqhXuiBn4ApsnoPz4lPyWDa7YIy3kaoAIbk2fREqoguC5oXzECBYyuR4eW5ZcAOG++yllftql0aUKWj6OQ8W7qw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouVPbFeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouVPbFeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0CAC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762325393;
	bh=QJ2laKqt2L3MYBBT0SVuslJwvh+BQBVBL8RbwHD5Ugc=;
	h=To:Subject:From:Date:From;
	b=ouVPbFeKVgWQcz/gjJZLHg7AfMtVXcYTEq2SDoqSLWjg7XqVOTYvx8QVlksoGzu6R
	 Jvo8tSTADK0CPwm3DUtW7WcP5VCD+HwRTxo4I/8gzphOoJTPCq7CHY6HeDRyBqzTd+
	 bGizEsRTzq9AtOSlJQQNuWAproLopau92ahGlCianxdYLKVNqH7po6z7DKuffou7Rf
	 /O2VLJ3MgfN5bduCazmIjETAAhkC5jWuQ3sx2cv9PCSJEWbIA4xcGSKcjtdxwJnxsU
	 93CScUg+egt+uTz/VCfTO1gpm/ZU3dA8URBP8fpYltYwYf8qXk2l8DtWq6lzYI9e8a
	 aC+BFZRhBBIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ACCCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232539357.2793.416888464960587253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749b58bce3371227dd936fbe28abb03e6b0e7fe308dcadb04ebb0b2f139a3fe9
Date: Wed, 05 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762325393
