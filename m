Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE731DF756
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748330394; cv=none; b=MPkmkePduVGA/ebCV1kMKl8qK0lEwAMHVqvOxfOG357ZJPoDDUE60MBlpJZez0lZFwrK1iqsy6thxOpyGJN8VaRforiqYoPPYIQlr0zfK3gD1/9JE6sYSaRzLSu9GuhKg6JCSvfXDQFVUh6Uh71YDSV+CRuD/ZyH5J9nWoQEGUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748330394; c=relaxed/simple;
	bh=2rx0GJweJgEcuoCTDUOv1FW3jxYLcHjoFS/d3HEcV7I=;
	h=To:Subject:From:Message-Id:Date; b=GRR4WwIfsoiJtXsoVW6gq9ow5vv1c0FKtm1dtLAYj6XuqTXmbvOl3ZF9OP3u+2cAsVY3ToiwRZpuWIiBrZ0DAO8dlUfrSPxBELtEZiCPtrFXFank8auoS10FhlZ+GW+9GXvWn0gBy2+wkyR2zg8W5PLubo9OggxhWCqNJW2IYmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c87CMZwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c87CMZwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9FBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748330393;
	bh=2rx0GJweJgEcuoCTDUOv1FW3jxYLcHjoFS/d3HEcV7I=;
	h=To:Subject:From:Date:From;
	b=c87CMZwkA0xfDtFxOYuXktMT5JxwnwwpVyKJs+lQsNumuYPnbfLE30BIfEXpS+Yq3
	 trfUhQDYh/8JhKs36ObyG7oOp4IAQ67jphBF4onkJFnqdex0C3hy3Kqt4UwnMfOsGG
	 0+zKiWwEWuQPcSc9Z/wQAXiaGDqOjY1LYtfIjG5ePhjmLRADS2o7xZpBTsSow1XQp3
	 Dvii6F5+lPID6ZjDfzain8kP/EnMf9UySnWdtrAR2f1IAbMPDictSs7V0iqCQx0w0R
	 1/4hweHBWzSzvECgaeqOr308vh2DGxsOWg/fDtDQfhooPGeU8f1ib5pVtrvzNb5ijS
	 vLeAcKlryX5rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90560C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833039358.29268.17866937950908553844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24067218c1081badea78681b88f185eb4c78d8b3adb66cd88a51028d9962d1ce
Date: Tue, 27 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748330393
