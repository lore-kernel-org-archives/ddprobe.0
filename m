Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36081208CA
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746380394; cv=none; b=hiP6zx4w7caqj4l2BUZithnygQJeNaMjR03meq2TVLmXaBJgLvJvDl5IS16OOV4cUFohmtoc77nOB+aZqmG/kPtUA4kBw75fzRtR7wd4ASJfB/503pfdaQwmrJfPVGgEaGC95vmnUPy3cpX+IFW+BLxQFaNv00Br78K4vwJZTFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746380394; c=relaxed/simple;
	bh=VvWVaonyHWxpDZov4PdXDLzcGiept1GmyPy2OLDs0Xk=;
	h=To:Subject:From:Message-Id:Date; b=TWEoLUdUQj/r8txhfrZg3i6k2YGBpDmP48koj1FO5FKLM6sf5qoZzGwcOayvhsQabC1cy5VdsZlM96KL/hEsjPEl6duzlhW4nTwikyQ/JyVOw7xchYJdyqWnR193o0stXkZjZgVi6vpXJT3lsXDyI6U9/wo6k8lqfKscKjPTMf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfT57d7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfT57d7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4794C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746380393;
	bh=VvWVaonyHWxpDZov4PdXDLzcGiept1GmyPy2OLDs0Xk=;
	h=To:Subject:From:Date:From;
	b=SfT57d7U5PuCGn6BLeHrvVQe3PD0UvOI8MiB5wHTPbBvJY73u3BY+f4+TcLfHL3zv
	 2TQ0ysjhzEuFZkEJI93sp9s4fzDOheVWuUjmfmdAsEBY6HY3lOwEdcHN+BcwWwTp9E
	 UcC8d5JODRDYIIMyejXB/F+qvMc2yl+YYaG7Wul734wvU77SURVeENy4GJYRx2ORJB
	 +ZPNpvwSULF+N4qiCW28r31SPh2YsdsPqTOuoDvO/8pO/zkcAc/NDqZtYahhQ+NCso
	 LqEANC/Zva4ZAPEz1XOC5tEzQQEIhYBRa+xnhkS15YVpaF5LSYDgbaDyYAPzGp7fMV
	 w7u7QfLqxdcrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EDC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638039357.18287.4886721365794735014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a63387403f902b82eb730c36171be6ae7553aab802395b489b29f035c707def
Date: Sun, 04 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746380393
