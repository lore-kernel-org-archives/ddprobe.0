Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36DE222582
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770434034; cv=none; b=dTVHjn0BVl/TbZYoWYJSWFxyMQVFGxIMVU3NieJY+/HwCxBEjAZTNEAkzhq1COCnidFb4/GRNn/dcjn/CYODs4A0SUv4qoJDNmlff4V1xkz89H5W+tvbv69N7DOIiTc8xQ5rBfes2zBP2mziyHtr4huPBLznypfRjfmRcsVQB+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770434034; c=relaxed/simple;
	bh=ODUgiIK8ahOckKYKkq290tU1v9gfouxLrWF0E8nJNWg=;
	h=To:Subject:From:Message-Id:Date; b=MYuPZf+BO/yq2pWB1uy/TSvqxkzvb4oMbiGS5w2CN+iOn7JLjms2L8bKYlxoYJqqyleoblcB1dJ8c9aFNdDV0UQYkGst7odkKOZ1Z1O9sXgjl3u67+BuxKa3x7bqg3U/UUyi+tT2AOFHHYcToiRxDjAqIxbsjAQbE9+tA3Af8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hulc4Lmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hulc4Lmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF2FC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770434033;
	bh=ODUgiIK8ahOckKYKkq290tU1v9gfouxLrWF0E8nJNWg=;
	h=To:Subject:From:Date:From;
	b=hulc4LmhQXjHcAjLCxLaTZNkN7fSFBEyL1YLGrIYjo3vkKI8aqmAnRCsUYeUCP1FG
	 nRWnOq/ahXeURFPruP1ftX90q1aaulZA3kih99VrR+NZalWbdkep71OrXSmmf+DVSX
	 wzRo96Sb9J1rxOk9CTzXJCGqleXaIRe2/kzSMS36jWJyBlbJV4u2lLsWkXXfzyuJ/V
	 q6572hyQ91pgp69i0wxpPICbTQwD6ctsCXdf86pnJuNuW02Z7rS6u1BzdKjchPbQwc
	 VKMpaIQppantOfdVu8ZI3Mw5ANRXYHI+jhYhPDtstQfRq0j0CD1L3p39mBnbNTNu1G
	 C1UN06VfNIDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA623EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043403359.30066.10487216314762591714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66b29097270de66a9566d8eba0b0629646bffa9afedeee51fefc5c7d5335d85
Date: Sat, 07 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770434033
