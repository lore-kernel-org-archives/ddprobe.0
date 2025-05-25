Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD723D994
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748216394; cv=none; b=pQHFgWvjBmUiYVbN7n1dlW0MsQUH7mFK514DZtlXC5xH0uu8b7CL346mXHIJguJ10+K0GEVdTcc7Alk2qjzSmihlLLPf3Oe2jf3f3XKPpuYCtkzAOYtKiHanpPzEUcgfHPkpXCMHYwCIfvDApD5vpQernwrCDWn1yIkFyovYE38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748216394; c=relaxed/simple;
	bh=bNJeWR+pqG0RQO1bQTtXjGX3kyWmxL4zz9DamR48Xy4=;
	h=To:Subject:From:Message-Id:Date; b=oYXkencvm3dJqzDu+MUPIbDsZNoi31v7LfQYHZfbd6ld3DpmuN6gjpJlX/l6Aqzfnm9VKGPA3vJyQbHfkMar5pzmH6lv9wjXqwM98z4lli0ykhLQXBkweKNK8xqvjCKR1d12Dx8XrTX0K6gDQ/lgoujYqhDT6Lo5AIDvEtclFCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdcPF4nE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdcPF4nE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8DC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748216393;
	bh=bNJeWR+pqG0RQO1bQTtXjGX3kyWmxL4zz9DamR48Xy4=;
	h=To:Subject:From:Date:From;
	b=MdcPF4nEJ0PTbJdtAcx7VDJgeGZQQ6a1YIITm9ymGjcsU4Yu+Z87C4GayhNuibvL/
	 +FSePMW5kDW1t55vPg4gGZHcYL9ifICH/IG0g1pwksSGL7j9kAuNTIh2OMLKlYGLIA
	 57DBq9iw7HW3elNfIcuz1VxY5MVuHqyGlQrzRTZ4lOvg5IkWTgad3f48cK69mCHpic
	 U2znhHlL63ov0LEyk5OD8UL4uxaHNK/NyaRbn/zBPu9PbkX3uNPOuPWUJFrDARXV/6
	 spRVoe9vE/Q8GWshzvP8koGG6rYTmohbhAEqZLX1QE55OWzEfubw0ZJA1XhyLq+0sS
	 3gDxUws1fBDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A35C5AD49
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821639359.1849.7465228264694492610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e8a94bc46f821204f97e55b91cff8a84beef5f434b4be6927efaf33e62797e
Date: Sun, 25 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748216393
