Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAA5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733034354; cv=none; b=nc8nJqIT8sg+93LL8gUE8fZsNldQkF833cAmgQq2NWaQyvZbKZYen6OOqyPty55DlnCu/Pehg6ZQ7wTz2sPc/C4VZ/pnX54dJiYAinIpIfHzwvx+6UswyMjEQYxM/HzjGu4X9bg3+Zrmd3F8KnpEbB8NCVorwc+u+2QW0Cji1uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733034354; c=relaxed/simple;
	bh=5kyOIhMfYpMR3/ivj9qe2rtE+BiH2wM3hnacWffMJLE=;
	h=To:Subject:From:Message-Id:Date; b=eI18k9WdkQ1eFC2Tc1psJJWHEi6SnOFtS37QewZEkpQLTHZ1yWMJNRzX8IR2F03YJ5LQH2SYUOvntng8NDNoDU37pY0klTl7SfTDv4o5iZhG+ZqjiTXUB5zMmAqgyAAx0FCd8tVBkuiJv4RxLCJvdgWlZrcbMfSimGGd5OdWLM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWba2Mly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWba2Mly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B350EC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733034353;
	bh=5kyOIhMfYpMR3/ivj9qe2rtE+BiH2wM3hnacWffMJLE=;
	h=To:Subject:From:Date:From;
	b=OWba2Mly+iv4nNsBqR6egE6VgikQ7BNNbOLrXrcLiFRtiHryKg+9eL2fglmm6IhMR
	 SM+ebNvc4Es9cXsBF6YvGGkiSPSmfyVZI2hJ/EhronwmQ0Cv61pIgI1dpKyFQUilpq
	 l3bIRw+s0Ui9pBgc8Aq4LWu5Pcij1gKr6dHXqtcljsk7W69gmFRPA808ubq2YEpjqJ
	 oQyfp7URnpqGqYlK4MYT8sH+NcS/vwHL3cHSHqFKFr+UNa+c/MdpLC1SaU7VV3rcRM
	 zjW2uy9Cc5q7Di9cHGO2gka5P8NyH78LAwsJV5K3ebozC/VSqOz9VUOuUXWFgCb4uC
	 UIJRQ17sYROOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F1D729EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303435361.12166.16449062958031211694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4673c9be293387ec02c4468244ac73f61c10b02b73d0f82cdc2369195b74be75
Date: Sun, 01 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733034353
