Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE0C235C01
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759879793; cv=none; b=BEq/9nb7AJzTvJEElMvZBonFWgufzXeOekR6eg/uEOwe8T1JVBB+n6YNk0IaPubZzI/iDRkONMGPVvni8YjzbBlFQvWNqi4XBZLz8mVb2LqK5wqBI/T/OYxMeen4trtpamDZGbp6n8Gnnp7c2ZPWdjzrkiHsW0FtAzo3NwMCgSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759879793; c=relaxed/simple;
	bh=y7ECnTDPoR1mzdI/bSJeNQgb1DrHP+PGlBqg5af7qnM=;
	h=To:Subject:From:Message-Id:Date; b=k0KORDyIFVAr98kVa5iL654Q0kTsaDqNO25VVhGSFDzJBPRxWuyBVAnt3Ku0BOIY8YaCtcy3S/d/PM1z8I5T4t0plaNiPR4Ck/s9mqxHzl3wJoyMj8acF7IvgtBDcB7MB3B+wKQqoZvfU+d/c1rZMP/hZ9pYMCyoV+r5ZxNGMdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7k4TCiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7k4TCiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A01C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759879793;
	bh=y7ECnTDPoR1mzdI/bSJeNQgb1DrHP+PGlBqg5af7qnM=;
	h=To:Subject:From:Date:From;
	b=O7k4TCiqeJDHbIANFXLy/I+78YyHoWGSuD2i3kwLvz5ZeU8EBoU39ZJ9sL7wrAiwV
	 DcgORY0UITX6MNFtraeMcus2J6RKCD2Jy8/Do+LunQZVH//budif32S3UnpR6zy5BB
	 JNzz7B8sX57xBz8a6iYAtuOhKfkxFm3xwTBq1+mJEos+Edcf999SfF4DFq9YmD5BuT
	 v46WwgsUI58OOeW/7QWhSW+9wVtlkEHIvc3J8hFiRQPtamtCuJyheetdzheVrOPISA
	 YE8SIDQ8ejveFWjmvy9R2XHoEy5EmeUbdB45g6NTPjJMcN2cS3Ax1wYOqTWgelecVF
	 AL9TQHtzGXWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCFCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987979358.3019.8404164454460618738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c61049b07944a9531b62c93adff991949216a43c8584f9201140e417576f4ab
Date: Tue, 07 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759879793
