Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B71B1AC8BB
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723952754; cv=none; b=AkFEVltZx5bOq4bX20TKa2CTbwB7YyhnnysSRfwpJKSFjUa538PfcloXOL9MoE31CChBS8pKR6TXKaWKjAneKJ/W22fvfXIhgDgrCZtHlbzjlphOOcRH6S71nQYM8lkzf8WitEz66dJE24Rc4sfetHaNphF4sFRUl9JH9rVuI+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723952754; c=relaxed/simple;
	bh=cqp9ZxdCNpeGOvu4xJIncOv7jqLf3kOUxMhIUjSK2Bc=;
	h=To:Subject:From:Message-Id:Date; b=RmKJaxC56WYGmS+K0xVyLJXPCepALOco5En43Tx/VODIfi7caOQbff1gy0R01ZD9PmBmVZFVdp8l5wsK7tQenL1OljOalJ/g8LjZNHg6HYAFj/ZhCXDYPH76sxlyQYDYzoQ5PAjOFWz0pvGwcZ8ewrK4Ch2jmDn8+csaDWy7Ixc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArGcJGto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArGcJGto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5324C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723952753;
	bh=cqp9ZxdCNpeGOvu4xJIncOv7jqLf3kOUxMhIUjSK2Bc=;
	h=To:Subject:From:Date:From;
	b=ArGcJGtod7DyCPdZcTh4JYDZukjJItN+wcN0c3nr41U+2HkLmBseW+y8DJeit1fQE
	 RIY7uxlhX+GcJ28m8xFHisjvD1t1rGd6vTpi5zCyE0sq+glbXWFegCoUyOQpU/tB7u
	 JbycgUdL4jOOIHCUZQbiGGlhhyDLpgI78/xfGRdd+RRWQlsMfqYm+IYCJhzyGq82Aa
	 zot91ygr+91Nwwq6+iOSZ0wOTYdEU6tKzkexXDQkKq4l64x5d+xNV8+at+Jc9vtgUx
	 6tU+XiQ/5Ix0H3Mdgp5500PqYXoMy3EnxGe5vihXu1RL0MeZiGV5bJrT4bSV6l+VtZ
	 VgffuF4o1I7cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A2C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172395275361.26158.6397209593553518326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8226d9a5bc96f660b8fd8b41ac3e67531ad1cd00671b3fac3a464e6709d60a
Date: Sun, 18 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723952753
