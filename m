Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729041772F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714221743; cv=none; b=LEgNA0JaUB9ufK56p5w0kVWg6POPXzECqt9d952zex1SdLfbJjoRb9FENsC6+FfiicHWzddV0wvnO/8b18P/l9CcgWyfzCFb1pLftzSLJcEYL5M+KqkSg1RvBQiW8j6mx9+xPn5w2MnepCL5vv5cJOMqqux84JgwF6IyqJevwp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714221743; c=relaxed/simple;
	bh=IX83Wp0UQzazItYNaj/Fjt1fFAjxD1ZLcqFZAalrgTA=;
	h=To:Subject:From:Message-Id:Date; b=FsgazKNtoy0oE4ND+uVhJAKXj0hKj4RREb0O6q1sxfHqTnnhUdeO3f9FMxFe0ds5CXr6YIvl/P7LooWOqiHw50yIswxOWzwrrYLeMwXOXzNYVwZI2toi+RGF4ChCVihpkbLak22K3RtLfGwTJNAKH7Jrt9q+V099deHUJGKBJKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnRmP4jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnRmP4jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED27BC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714221743;
	bh=IX83Wp0UQzazItYNaj/Fjt1fFAjxD1ZLcqFZAalrgTA=;
	h=To:Subject:From:Date:From;
	b=FnRmP4jvNtRdBKTYg4+5kjEhadMr6YhV5UoZcGqWLI3yQvW2WILr5UTO61bHf/z8x
	 qb/hJ6JdcDSfDe3Z5kc2+zgdC8B0LAQUV4utGP69fBriqj1psukJ1alMXlfDtbWbPA
	 bhOxOzNtC1Ow2krCkEW14FI+zN3qcGZXGkE0mR5CmRA3Q1sj9Z0Q8vVrIbFsUZedkP
	 aKUbfiRQN7fepT+z7rsZVadNnCdD38LUuyxHh0ihl4bGgitcB/loyUObTwdvLYpALC
	 dj7GrmkCG2/5ITaXHwhYowNTz6qGLJ4lcriQmQmiGdjNBG1qH0xF/QZD2+PVrzRswA
	 M6t4wQrfoI9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F9AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422174282.24775.3760993086258638869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bf337754b1ca85475d26df8a6aa85ad2fc2268fc1e9c6016198868396bc605
Date: Sat, 27 Apr 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714221742
