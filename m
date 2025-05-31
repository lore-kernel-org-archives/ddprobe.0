Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372BB22B5AC
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748680794; cv=none; b=HjsfprQvTBXa96h6LHdLMXP/EQxTC+sRG9lNahgz3VE03jb4yPFXHMxgExHYpp1W0d7a9hHg4RpPRJn63mMSZIKter3IMdJBsebFWNbh4sjuaL9SGn60i8FC22r31CG2tfU55ySZzKlGNvWTQNM/1F1xVAJVeQa7n/3YgGIQnFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748680794; c=relaxed/simple;
	bh=uGQ29qvGXB2qyfrG/DYmpcK27hrxlciN5PXEQxaX/ZM=;
	h=To:Subject:From:Message-Id:Date; b=dZeK9KC+de9iDVsU6h1JNd2AQWlbebTyWUDau5j2uhXxinS8qLWpCizOwv96wUPTsqTUi2jBgcQO2ohwLbblzD8KVoMwfa77a3c9KnzPwNtlWTJzpBZVGeiVn0NDjDtyzci3dxBiO+LwswHjf9pOc6eRArEkq0i0ZlPrruVyIAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUVrOhaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUVrOhaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C70C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748680793;
	bh=uGQ29qvGXB2qyfrG/DYmpcK27hrxlciN5PXEQxaX/ZM=;
	h=To:Subject:From:Date:From;
	b=aUVrOhaKjPv1K7KhB7eZNGqo4OACWxossS208dUVz7Dd+Z79haEGyJc7h/I2iIYrl
	 xDejD1x+PDmRwrzfqCyWlKINaJ7LzLFbffoVjifVsMhKW31HFEqRCnyMVb26mfJB+F
	 Pz7PPWAevYGfm5q0Ifkut5lWCmUGr8auURoxOTddPESbUxJv+UHwld638vVAg2l2rW
	 P9v+9iTkM2nD3y2+C++S8PnP/HpwTes9Lc829O4nZJT3HNCyn3PIPrmQjPz7Q8Zfj1
	 4Z+ceQmeSzxftchyGVdAv/bIBcKZ3rD0onsJnQtvxli8asnit+ZA0wNZi4rCYIUc4X
	 bJWgoxlkPjcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E962C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868079357.979.1253968370848086538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdbb80b848df0c428fb137597ed3f9ee5e7c1b3529753bb7ba1faa514e9353a
Date: Sat, 31 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748680793
