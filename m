Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34251944E
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734875754; cv=none; b=E9BKZmOBPgHPnhGak26t7dNSiRwI/0HZTa3dGJ3EGqOCSCcwg6xVfC0Wwk9yijdJFGVAxqU1yTRtJ6c3aw7/N3xE123/82anDIiCJdSpn7dgo+psfVNPCSm4TIaZ0wJC7eOtwGRgF5Ek+VxHgFQGRiHFjXtCeJ4Ip9J+suWXkV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734875754; c=relaxed/simple;
	bh=fMto9ut0W9K6SmLRPFXH+SUXJYpYaZXOFHPr3KSZ9RM=;
	h=To:Subject:From:Message-Id:Date; b=Vt2IjBfalpjNfHOhW0w0Q5lCDNLPIxVowaDeEwGhdnePP9GQ2zjVLu2IghVA//9PFzbz5SuKUt/6S+s8dHKujdPaE3+68GHRBQwIKvrZdaN1l0tXpJBokkk5dS9URFU/SMVnJAPN68cqZQel9i63ATxmVIuwS5hiqBbDnHLpGo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxNBGXj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxNBGXj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7716C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734875753;
	bh=fMto9ut0W9K6SmLRPFXH+SUXJYpYaZXOFHPr3KSZ9RM=;
	h=To:Subject:From:Date:From;
	b=hxNBGXj0Te3ql5Qxi+RzBo9SarpC4N0olFx6JetY713qhrHe2P6WkQguF7lzSC42+
	 6xaM+w2qj089L5in5gbUFWmG1CZGScmG7hiGQA5Rv/skZ2Ku57GuSrmkpgZgELWALH
	 q0fUtmFl0GvI72VcOi+IzQHHawRYhM4qgb1wgDkn6JDD/rL3U97/33YRcIXz6Npns6
	 RYytyD7EO/awKiugo0oITMghKAZEk2qfziK2l661JbKjwAcSfNFcPhT8bliK3w9yK8
	 whCm9VzBRj0d8UldCLRJ20nRzBqMazQE1yCfmyFHBzu/kabjRmAVfMBSXYfcrZEYU9
	 RR+4vzSQSlz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A96E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487575358.11352.4603348542087924082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eb29b7b763e72ef656b030c330461e0dffd12edbcd55f189050fb950f0fd6c
Date: Sun, 22 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734875753
