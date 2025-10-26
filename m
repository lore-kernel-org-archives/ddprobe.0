Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFD221A421
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761497394; cv=none; b=WJw306S/vD4v4ywy6S9eyq8OQrk8oBt6KcMiGu0dsD58rmoTbraqgIBNhVo4LNQr0UzWk+X/CKLVpKHafTjOwFiSVCr8MW/Vo+UOni6oH9A30/sJvPpredVBcJ3mqXDgNYKiweQ5A7wmAeSB2gKyCI3OQgR4lBgXUL40ori7Ouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761497394; c=relaxed/simple;
	bh=EMVSJUb34mIqG2jdDtufWakAxX6A9u+v5J2dgpmG0yE=;
	h=To:Subject:From:Message-Id:Date; b=iwmIe/34aTMW6uhfwl9irZCIDB/8/bX9+BkkLZ+W4DCYU5DAI5eyVrbvOZACUyu87/eUP/1cqoBBoaHTqw/wUYYh66k3aGCSjekCuP/hBMml/nrVI/fPgLJEeFR9j64ZNVC/qTVTkWOgAok/GRD//avir6BDJrS4CecAZyLrquY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WROozqFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WROozqFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D04C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761497393;
	bh=EMVSJUb34mIqG2jdDtufWakAxX6A9u+v5J2dgpmG0yE=;
	h=To:Subject:From:Date:From;
	b=WROozqFSRBb/ogSFEerYwGrInJmVQ+FLSv3lD/HAdLL2Glc8l5jaGZzyQdg7voaRs
	 arYv+PDE+qtkHc4L8SlASYFqQ3WvqtoCCn1LFsfTenO4t6nA9Z4vdhbgsZhgaRgEEW
	 UFInDAfA6UFz0bVHrxd0fzbr+NGfofepaKIEGyLZUyj3aPDkZsgUhNFGNxhoPqaSeD
	 qGdSFxId0nYlLmbOohy3Ku13NYoBwtUKtBPizICcdASu0oE62lJ8vtHlP0yO6M5KN0
	 8rxT9JrJThUxLehoTwdjvOnKbWAbMRlDpXolbzbYyX/BkD2PeXeCgoUAYkPijSgVhW
	 ul1EZY7p52dSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B8CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149739358.16715.16819988429586271876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f88a26a3e16a1da8eccb62d832d7a7a90d91bf2e2604942a8ca5c4db91d7dac
Date: Sun, 26 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761497393
