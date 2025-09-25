Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363F42F7AC0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758799794; cv=none; b=T8gWL22qEqsCyEaXOi5raUtMaUcNttBxIGgXLcVwOveU4H718b1OQuuBF5BM4OC5rn9P9/7OvxNJoi89GhuY5wl3eiFbIs/YCOjo5NtKidnsu6e11SduyCoot8yq3DVDLLhWRck4MMpyX2tdt6ifThE+6z/kxjcGdLfiOqFIdBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758799794; c=relaxed/simple;
	bh=NgqOslQ7Caz6i8FeWA5+6nctHhhX+iXZ0lX4n1lj5Ec=;
	h=To:Subject:From:Message-Id:Date; b=moeGqjrSvcE05db3bHZLAYztSUvkf2yX9ftTgLezMNdSOWvt6e2SLThBx9AsR8f+VS5WoH30ltckJi24TvIBig0KVy2NZ4OmAAQU0qOpNh4PtAZdfwSkFITz6WBGud/ntCWsU9l7UNTv6Qu4blg3GZvs5bLAOtnbaRJnHSAWhug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnPbLvFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnPbLvFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758799793;
	bh=NgqOslQ7Caz6i8FeWA5+6nctHhhX+iXZ0lX4n1lj5Ec=;
	h=To:Subject:From:Date:From;
	b=jnPbLvFdKXdsaqoirVm7axNU4aTQXG0no/2kYARZmRHpn52QN+nfwwZJTe3iWFC11
	 dJ1wkmuIh5Iz7AbkqTI52jQA0Fb0U7fzdkGNGWU1hIfwP4oyf3cq17lhReWzqe7IHA
	 D1RsCGN/ot5Kpu6YhWujIuWWj11BQmNMbl0AxpZgNiwyZSwPVqVDLtEZf/c9Az2ao2
	 wJZOzzQ3RUwihTR2ikMc9uFpfwhZ3u1GmAUpVU9KgwzvAfMG+qcV6aspOS7x3csIhs
	 YVk9ccqYDv4T5kekYXQNcL+A2SYHrPeZJlbWyvXl8oczJob2ynjrXz/zmAuhdo91ph
	 uoR1EENyVDLOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9007ACAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879979358.25559.16379700279550907015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612aa0b04e0100c3134ae57305cf418b97b5f0627b7a7638c8f422bf255da39c
Date: Thu, 25 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758799793
