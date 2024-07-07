Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3B61429B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720377983; cv=none; b=O9B9p9e1W7D/KebV0qdFJ+eZGbKp0Ad1N2bRNwpaOod3HagT7xMe6SF/ALagbLvbgk+5tAXeDSj37mMj29JjYnS6pntiCULXSQhhnmAGTWbwTQ5WqUUW74nSgJAKarEhsI10hTtAQ3GSR9ybpYpVPoEjAgFWTBoHU6uxqWhtHvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720377983; c=relaxed/simple;
	bh=Svk4e8VaMdbSH36qHTeGFb7yF2sncUZF4eV9k0xx9lQ=;
	h=To:Subject:From:Message-Id:Date; b=NBY5FJ9dFfHkJ5TGmWvwVV3qqq78YLJuEVCKFTKrSMbaBwfde0MgxJv+U3oFC9upvKvHP66AAaKik2qAhz/6f0LkeIlqPlceRxmnLKmOMuYvV+J5s027WpjYJy2iJ/tIr67TWPEUlgzofZKy1ZkLUOveEjxqvcx1fpmZqTeCLWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKqFG5lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKqFG5lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC303C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720377982;
	bh=Svk4e8VaMdbSH36qHTeGFb7yF2sncUZF4eV9k0xx9lQ=;
	h=To:Subject:From:Date:From;
	b=dKqFG5ljdKak6d+CXHDMo3W83g1O0puR4/utiIsJyXboJkkbBQhpExFkKNWp0QoC7
	 IlYkuhW9PZ9EFI0LiXysvHJ4OTNQOpYilBVb/VBBQAEeBhP94Z2Y8f/Kt+ZnsAzHRf
	 m0sOd5TS9QV33c9Ar6xiET7gBWJNsQFMUjOJUdVjDm0rquhapXWVkMVUg68pHLdBJ5
	 17kf7M78QP/gUPuE52jTct5VkZabAFWS8/Niv1cW4pABwhTvonyZGZB3ZGZ6On5UrN
	 LnjOk8fA+QJgM8HQvcSeRhS7HNkU9igNkpAKfHGwOJ5mavddtzEIdUYT/LQ9WxtL56
	 wBZTs6iRzanGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76D4C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037798280.19284.4932006961444471330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303a607a2d5420afb168adef8fdf552c3a36d8a935bf3bff14d673779c489b3b
Date: Sun, 07 Jul 2024 18:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720377982
