Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2498E3A4501
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776767854; cv=none; b=esNkOp+ZmalZZ4FdtIpwhct/gGx4EKXuLVWda1lj6GOc0vOG/RmV3zioqe0CXbnD3qfeaaWWepTlhDlaDLNWpqOCvCdNzPrvybvn4adsCpr9BeHy9PWsBZVHRdrwO8sGGvqrY6r6WRq4JFYyRxFc09JLD5Hhh64UerilfQBPo08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776767854; c=relaxed/simple;
	bh=0oFQh+ErZGpALWMnk4WOat6yXtTz7B06Q7uDVT3r90s=;
	h=To:Subject:From:Message-Id:Date; b=hJGgziRqPlKBQ53gGTJ0/QBMoe/gRepd5AJSWB3ESE/UMg95EcfyGHEngTStzEdEg00uQ7opYfBEn+qoFYANWlLkK3/aAEfnqUfHpqkD/B25sg/Z5umFDWSMxuB0uazeKS2q/fPQIYiRWg8B3bTXIQU6RUyiQseQgcSM8eKehes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ON60rAD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ON60rAD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADB6C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776767853;
	bh=0oFQh+ErZGpALWMnk4WOat6yXtTz7B06Q7uDVT3r90s=;
	h=To:Subject:From:Date:From;
	b=ON60rAD5EyC9+E5UfjPfgl9oezQSjldLPGVP/clSE6eG+/diLz7MQyPauuq/PE1L+
	 I1cE58MGo77SvNGJO28dALR9NxLNFXmxlOKh6B7nFKA4qGT2nx5fEmDHzbkwpw4cUs
	 Kg9YsTMCawBnklRrez5W5nU7gcGdJNFzo0f7n+cusrN5A04lZVz1w9ZfonjL6QQXUI
	 0pQ5O4W7vuhdD/bPdhLMwLQJpWRUgONKd11IOXmOS5VE6/LqFdgCn2b/7yUCRlzEEP
	 Sn3aWSMqm6Lu2wBOdt6asiM1lqXcAKahaRaeVQooHJ89ctlo8d3aI6v4iNlvhYnnCI
	 jDRP4d6JOmIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEADF89252
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676785368.14404.11393319173771263728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b23a2a7d56c49bbb8a31f5b0a33f817553d2add0a5cf106b14b55769cff97f
Date: Tue, 21 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776767853
