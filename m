Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC202E62DF
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752856794; cv=none; b=jo1QpAdGDaJphfY08wwl56WGOIHH5xxDBqJJRyzP0RPlAEdmPmux+aWTA0d+wF7eMWG28vUjlyj852uOIgQIhx68HUcKPzF2M1x2riGN6ZDz2FLmx8phXQ3CNKEBWwL5DfAtvJ32vvuEeADJliMvncqLulclBWrWjgRWTDeNe2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752856794; c=relaxed/simple;
	bh=8WBwu+ZvrNWLDVhtkd0sJpWNc2jeieORpn5KbJDj5Fw=;
	h=To:Subject:From:Message-Id:Date; b=YU3MOIPHC8AkgGmElw495jvPJtYM+OfcX0q/kXF39hy3M3cwtoExaNDc/NjBMvPCDEbW9lQDv/o37nY5MJpv/cEoVNkqFF7jfUQfiBFToNx+2mYEHYPgN0wtVOhL5lIdCr7w5+mtNIRAGbofm69QVYHnZ+SH9BLuunJBoXvJ9fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt8PxK+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt8PxK+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752856793;
	bh=8WBwu+ZvrNWLDVhtkd0sJpWNc2jeieORpn5KbJDj5Fw=;
	h=To:Subject:From:Date:From;
	b=Mt8PxK+FJLfKKB8jzNtKabWKEsqLpwJtgDlWoxcJrQ0NWMIS4/IrMKaIHttZEulib
	 yESp8kLpwL7zGG419k31MiiHwTxyta1FpsWwfbS+TYyr1K1qvyhZlHMvRrHHPoC+B+
	 CroJsmYuzwBlKHA8RL08j3saLptqtDrpUFqvLswlbsL25Xzom6Mjjs2Gd2Kqt6xJZX
	 9VFKmJvfa8amvlfz0AItBpw9LrmrcBkmYQTp2oBWHnDdypXQwmgeW4FDyV77i8CWXw
	 MZgyb70OmNybO9hlur3TTxh5g2JAvSe1TQnk4NHTg3zufQyCcM6QdkoldvkjJLrEDv
	 82PtwMgyjXn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92880C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285679359.21518.13386287963490887393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edaa9d57fed16b144d731d4662f6e7aa276ee2fa1019ca39d834370fb43d5a9
Date: Fri, 18 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752856793
