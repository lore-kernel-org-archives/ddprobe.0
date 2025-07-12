Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBF32741D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752332393; cv=none; b=GPcQP8bQtOkOSgPKDod08wMw9V/QzDOBCwgbPXjX6GD6wUc/rCoAe2ahyZaYaSZpLsGjRpZrDTCd2vw//e00+RW6b9HJAtF3GYThoSUFMBmfIj7AtZfdv7xMD9DdIPp+fsWNrmzuKvMKSPHegBwnMyu+ZeBR/h02CRofWT9oi2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752332393; c=relaxed/simple;
	bh=cRdh5OoLlmefWWYyzfLCE7bFll/c7mm8agjYyuDK4H4=;
	h=To:Subject:From:Message-Id:Date; b=TyOFBSc01Iuaadq+8LICIvn8A8ciSjjcoW3GDid139E2T7b1TuVzD7A4pqoS13ceumh3r+zQpWDWsqt2FRBUyoKue1IhaleItRJfDcT+YcSfSMbefpPDAGuCl337HKLNmNavFQUef3DxO188St3To2akbeV2DULHrK19NUysPwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtiywtUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtiywtUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C53C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752332393;
	bh=cRdh5OoLlmefWWYyzfLCE7bFll/c7mm8agjYyuDK4H4=;
	h=To:Subject:From:Date:From;
	b=HtiywtUREpfXbJnktgipTphJ2kFhw3I0MWRew846YT5GOrnKcEu8XWXTA1cKly6lc
	 GCYh6GBsQ7BvI4uhgzLaJ6EQDLhNH482BGTbWR9/imGC/yrYuw/c2xX5hNkLHmXv4n
	 Y6yanpp9hXf+uoazSqUuhDH5cu1YkuqQjnPhLToFQxPXvL/nphsHI8JGQgwPEEdxra
	 jkkIDWd3gp3moL0G1iTsiYzwtK7tovCgM0nU8cmrGEEUK4OnGpkVD6vSFhiNNbPxH9
	 nC7CLZbtSrOKehN3zrOqzz3ipiLK9FNdrRD2/Fzw5LJe4atUqT47dde6p1MoJyKo5H
	 53mJGR+GlO0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FEC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233239358.23130.13571967289746836213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30224da5b021c65dd31ba155b46a57fbb0be4c5ae584b62945a18ba268f5a612
Date: Sat, 12 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752332393
