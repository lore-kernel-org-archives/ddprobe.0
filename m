Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC8D335C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734261954; cv=none; b=ZBlUEpCY3gglWIS2Zc4c8/Q2Y8OePf6xgWW04sga1YFj/EgKc0I7w9MsgebAG4UBjJKoVvTV0nXgL1MO2TGjS9kMRqD4gZ8M4XAxfod3nAgY+XI2R4WMWZ9b+3jABgqdUZGF/lOznFzDPnlhrC153oqX4qX5IuGm04Y4gJmZap4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734261954; c=relaxed/simple;
	bh=Wrgvqp4t3rhoLUD6xZ6OON4BLW3p9uCKuWRXvGP8ht4=;
	h=To:Subject:From:Message-Id:Date; b=SPiyJ2MEi7m94WZ0D9pp3yWn7jzrTetce/kuMM1EEDLSqh3FNKtHWLnJIgYHseIDEmN+8OWfQQQR9FmO9hES1RkiKSVeQIJKYwO8X2H2T/vvjSXpWtBRC5g/78souSnkTd8CpcEzuPOo0HpALLg44h/QF90osqu4tye/3L7dhhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFjvbRIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFjvbRIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB5C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734261953;
	bh=Wrgvqp4t3rhoLUD6xZ6OON4BLW3p9uCKuWRXvGP8ht4=;
	h=To:Subject:From:Date:From;
	b=pFjvbRILzTwM/XJqs2s1hcT4WQRBRV9bdvZ24gtUUyVBRKgp/qd2WIje3zAVjJmQq
	 4qKvcffL2Oerb9i1cRS39W2VLW0kFr02Jk7/c8gZ4f0NOWFEoELT71ol58OR2qSCV3
	 BhCs2LhGG3RczetE1iVCZ5y3sZs336gaxP7PFZHqntU0Ng+s7m502wtR969SzYzdWd
	 IhpoqnztFTDpgKK5n2rgrINBXA6l6FnpNv6QhxYcgBibIIRQtZ2qFSoaJYfcNfowr+
	 zBDJ2pz+cz7iI9WNtwuIrNqm3KnblUdZBSLJbI2KmeVLJ1qyPH+9YvHXSeLAPc7YtJ
	 7gPD8BoIfOWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96180E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426195358.981.5088001572215232674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34569cdf4a0684876682fb9d78b7fa6997e0beb61528ca555ff4f6f2b3ee3e0c
Date: Sun, 15 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734261953
