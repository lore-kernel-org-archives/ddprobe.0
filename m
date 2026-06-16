Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722873C8C52
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781583994; cv=none; b=PEIPfD3Dlkp/8BEpIaU8BHDHFkPjq1OIEt8kygiDc7Dui3rAOoYSP/zT7T4nUupd9gtB7Q6/+6DFPdQSI+3+EUu1IFH1B7vz0tkpj5iZAopHY9+NvSycXFNWilJyhP/XCGUnOCvOWfsanqXJKLY+lB2d9+3/hYjT0qmrqatV2ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781583994; c=relaxed/simple;
	bh=CkiR38N43cwcljc5sdoV6j5PX0k81CAJtSiAsUi94tE=;
	h=To:Subject:From:Message-Id:Date; b=Jav8E7OyzdJ/D8TE7Ba1UT1lsuf/7OIwEv4wvC+BUn7gEB4isrT/E6xQt+mrNEbe3PIidpmv+b+zQy/sUtyvZJ2L5A2NhsZt1iVETEzpwlEpIe2jH6b7kMEy/wrl/pCq7L31eelH/ph1YgG7bnfBmJSKhzxs0oL9fL1/d/v2hN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbx/vlAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbx/vlAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA91C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781583994;
	bh=CkiR38N43cwcljc5sdoV6j5PX0k81CAJtSiAsUi94tE=;
	h=To:Subject:From:Date:From;
	b=Rbx/vlAd4FzYRIzOnoObpLr86wCiZYvbpGPLxJNRoWehJ/5K9Yk/ZJn8KWGbDl9WR
	 igiTABBcRYV5AmrqRg0Tp3jz1OjbJvt4gcLewNJkTC1kerkM336XpOLFAEMDhlCd/w
	 C+7pbfp3Va9CmxGto3S3MwcsT4B4LhgFo5d9FBX5BtX4QN9QnJoyE8tWhoYatsZV7S
	 fY6E5SuVpVgXUhRK4GjabPzSYEjACpyEi9sRr3aC9ztlvh82I0qnn+TbhHZjLS+Qfm
	 qPvoBvSonDtcVq5AThFSzbhK9fzzwN4xWFNh8hfqLIU6jRO+IYl8CiCQUxw3jIz2r3
	 jJUnIU8osfFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EF5CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158399376.16592.5220596495705962454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66e0e905258e6f47e8eb4792d4fee57995e3c8a902115adb422c71cfc6ad489
Date: Tue, 16 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781583993
