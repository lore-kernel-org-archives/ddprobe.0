Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B00B2C80
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724478354; cv=none; b=mH3LcJQLKq7FfLFAZnSFGkLSDyGGEJfTgkvemkMFrySR2k8QKWakVByxUnvNW3XDH8oNsUT8HbqDrhx1kNsQtCeYmIBYFpY+tvbpJaccL1R2Hb8Hdh01q9NXd+67whFBGbdq/4lNTHOSUkY1JY3LyJbLwZnSbDPF7MpdS5utLbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724478354; c=relaxed/simple;
	bh=gA0Dj597SYX8/YblcVnmyp34iV79qHRzDgFJ1SUjNgA=;
	h=To:Subject:From:Message-Id:Date; b=UlTpOCJjXPX+7z9NIbyMT/F1VGkewryUYCFNzrHorLjyrm1W7pHqEdbpBK8arVPhXAhI/DUmyzCOTf2t//2diAWYmVddHZLCNgpYpJtO4Nskw2l1zf5P/MAB5ozkHYiiiJ4qGfiQLAZpd12C3N/0Wtv0QC02oUJxnVGNSXpnHHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYJaBBv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYJaBBv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC139C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724478353;
	bh=gA0Dj597SYX8/YblcVnmyp34iV79qHRzDgFJ1SUjNgA=;
	h=To:Subject:From:Date:From;
	b=qYJaBBv10Hnnw4tzW4Ad7XNj0j1DFlak7rpx9C0i/cWIBQl2lKdeB4/HcTt8KVTE8
	 A99LX7otZ+5XRnf8MFze9Xt7rtj6rYC31O95MCjkoM9rXkXX32IMXnmNXiWUXXwzop
	 6pBBlr1E7Slj5WinFSHCLLj088FkdrQ45SUi0QU41Cgcm+0yW61mDJXFXFX1iUumIq
	 7MBFMKVUB0Zsm2jBTG9IucZCe0LtC2CZmCykNxei706UdTG8GDKWPJQXEogJQ9zIj9
	 0rXBINRdb9JGsxrSd/9sMB2ZRBCPkUK5GJ+8VGk70A8kvcf2A2daQrBLbCp/6dxV6L
	 nNv6ZxkWi910g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2DC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447835358.22668.5852597163412059540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b770f80f5c5cb582b92486becfea5025741366099c3f30e8e930e70a0741225d
Date: Sat, 24 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724478353
