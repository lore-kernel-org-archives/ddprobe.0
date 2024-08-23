Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160331D2799
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724446554; cv=none; b=kYLDVaSaSE0ylksoPfBk3zK0Uf4Qv4OO8Vx79f3SX+ka+AUrkhSZHKjQ2sN5LiRz2DHWwHGEPdGBkqEttgQB+EVcvPwLTxQUb5fn4p+laASo+fdDNOXy9cFFKUwwRWAiz6E7ZiFCYLg6mxQBDTiWQp9Zpq+ktfHN5hAKEl4IJb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724446554; c=relaxed/simple;
	bh=gC6qu6ZN68vAgz+d8Rx6jTSF2gb3kfGJ48EudRPn364=;
	h=To:Subject:From:Message-Id:Date; b=IWU0uG6XE5/T0EMvHIrz6xN804LqOAMwaoFfKUHPuz/akNoGcpdF8TRwj/efWzijKh6x1bdurxkEPj6REFb7x6BswV3UxW2CN4PdCvz65ybJURrpNap9lmQR7Z6QmsPu0pKvS1ehUDSu/UplWoOoi4Tb1rAerOx6JzqkR0TprBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7lqnKJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7lqnKJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFBC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724446553;
	bh=gC6qu6ZN68vAgz+d8Rx6jTSF2gb3kfGJ48EudRPn364=;
	h=To:Subject:From:Date:From;
	b=p7lqnKJVjf/Hyxvv3IMDN5Dr/eHJfrmTwAZFgFExc3aSSOMYm1AghmSevc2tGPGB/
	 OWigLhbx/wKCDdFqMmvzsC0UjyaKVJT0Y0TCp6qsBfvU7FmAQ4rql5Pdv5fGzlZBOp
	 XHYBTZe1k06uwqo03QSsIQKeVV+bpNJqi4mQR8LLfdeC2S2hEVoCoeahUq7dt4VVnP
	 oS5VMi05Pu8JJ6Yu9F1OjmN+Y4hDHNq5nidIVUKq15uRVlN0So8XUsCgQcFRIACsIk
	 eAjTgzulu0hYDOB/xtZAe0i69x2I0r93nNJOb2DucXOwfA505e4Nx5dMDdPut3TJAR
	 KwxhbyUwULSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C72FC5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444655362.10206.10598553771565189742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e39923869107b70c291205f75b37b8dd3beba0a75ee681f54ea2d689c400207
Date: Fri, 23 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724446553
