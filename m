Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE86725BF12
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750853993; cv=none; b=TzYt9SHeknapcwAHhs818W7MFcaIDYoCnA8ukVQ+P3wU9KA70l4Xy4q+/n1OMjI+gkWlg38/da4uzn1/3DUXoI2faQc4re+hFIMlwBEToeoj1UY0Uq7qrTLFZha7SW2/kSxbfS3WCLGsA8aiHmPJCGjLmGTzxz2w1zRCGxvU9qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750853993; c=relaxed/simple;
	bh=f8xbpE/1YuwWuud9FWDPyhn6PzbQ/io1HbqYMAaTJe8=;
	h=To:Subject:From:Message-Id:Date; b=p6AD2MmJ+laTwbJTlyaqvxDZVNX+piNnl35Y1PSJNhJBhsejTSh1sc8LWfnybN18pSU82vcu2VPRAb/pIxk6FZ44dwbbKFm3ngBajvb8C8QwJNeXyAhmlhH+9Cdl28n8bhFfjj9YJ7n2b0KBx5dr/OcdO6dPYnbwvAjfYpgSeHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieiZwg28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieiZwg28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D7C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750853993;
	bh=f8xbpE/1YuwWuud9FWDPyhn6PzbQ/io1HbqYMAaTJe8=;
	h=To:Subject:From:Date:From;
	b=ieiZwg286L0WNuhZ96g5eJqLsJnY3ccitt8OCOs9Tg5tMguM/DYrU7XW5MLF13vu0
	 JJe4uKMthCZ5ZDI8rXgmd60lbuKc4KWhXqFZ7LXv4NMF7sY//gvdYX+6t9siZU2swB
	 5+m+Wo5sbs3dt25D/oM0ITe2wUHBKMtAU1ziiWov7v2t1IyHuhas2HkWLZVUqgBdnG
	 iVv7vsuZa7ghWgvttYjCKmRImt4QxpdSACyj6reE1VKqiWchxnHrl/7r0fZYaKFgCU
	 UYec6ilxfQPaHvAtC3QlCxmFreDqDmTqaGQDxZoR5Qyx192bXZNEYI22lPheUoyAox
	 DqtbnENGlzW7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA4C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085399358.15536.8833446271774641767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a59c27c5a76ded4cbd22c42a738538431fd02a94e2d49e8dc73e0b574148075
Date: Wed, 25 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750853993
