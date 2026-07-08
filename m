Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F93ED5A4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495115; cv=none; b=JCKvtw4oShmK/mWG1SDciqxEhLfK5KktdYMUqcU9ObP0DMp4YOpmuAkS3ts2+37nDpN41YE86K3PFcYA+2Iz1p1DyiHFCicbk7qgsgkzxenTXbxjwbid4IOLeiNdkLZCn8PpRyXbGh3j4HmbLK6HrBWtbekzmqBitl4TRXkOaV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495115; c=relaxed/simple;
	bh=vEfhhCFyYQu48H5bMFVZozOULnlldn87BfZGmbJTNOc=;
	h=To:Subject:From:Message-Id:Date; b=R0cQZGv2udg/9b5bTFE4HQxyyO55XCAYmBJwJ7f2MzyuBREkQsarQ0N5BXx8b8ds/ZgrAm9CX3hq8EtDOUKQMPFjRtDz1PnlO94iV0FY9RBHX1+bOmQvWVDfzZwvP4M89zpLfyv0c7V6kHDXQDg1UUU883b9FBCeEi38x1UzqVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P09ITWCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P09ITWCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C885DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783495113;
	bh=vEfhhCFyYQu48H5bMFVZozOULnlldn87BfZGmbJTNOc=;
	h=To:Subject:From:Date:From;
	b=P09ITWCD5wot13y5yHX9oY5736C2bV9oyXzxyNIstRTIYH94yIyGbIRZiIE0+e8o+
	 ITXEhhSNC3laon7T63WZqdSm04F/WJML/6/0HDczXIMs+Ju+4ZgmSnVx4vnrD8VGRE
	 7AreK9fxJDm/zpTy7F2deVHNRCa2Lz1O6F9Br5GJFMGIUl/VjQ6QGy2L4LXZ8gyS/B
	 y7ezOtXEi3ezFobVkSCLZUzMAAAfP9KERhNdWbmOPGDSQasEK15bVk/O5jFoNTlvKf
	 Ox5qxYUG6843rXXc7dkCiFsPiwwjlfQGRYDOcxXzptsfLD/NiszBZutmcsMfyIJ44W
	 vuJgGx55CFwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B55C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349511368.25206.6203278921887150902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201bf5f69dd8dd08028334d22e0c4357c20cb77825428923e752334ffa55e5e2
Date: Wed, 08 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783495113
