Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1878A13C3F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732970154; cv=none; b=GhKZadVXzsHcnXAULf5O9fWDhbLKa5aeE7VrC5splBfIwtZWBM3D99CVdLBMdycTJPsUW/nektUCowMVAIG56zWrNKQfkiXPZ7vI/jd46XFFfg14AUwTn7soPGZqXAo4skm7POvyUgUCT0FSbPenoGO3m6LVLub/QWjkMkiR4PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732970154; c=relaxed/simple;
	bh=5H54F4/DEirO685qwV5NBaVBGb8v7qJpbkUY23nz7SU=;
	h=To:Subject:From:Message-Id:Date; b=XGEzhmEbfsLXpfWv6c+U+NHMYm8VBEXaIixCmyEivRiWg1XZPoqI6gbATAqw6Nw9tzdrFWX/o9oidJcvP/EyjjU8STfVPlgwyfUMpSa8WOlVnk1nsODNADBvPmxJV+N/9CTymHIxrW/sT+AwbVZFk6OeTTF35ggqYq7EHRJhXbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWDgCTBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWDgCTBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE5C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732970153;
	bh=5H54F4/DEirO685qwV5NBaVBGb8v7qJpbkUY23nz7SU=;
	h=To:Subject:From:Date:From;
	b=rWDgCTBqaB++14LWVMP0PC9Yu+zjvW6N8HgpU/Gvj4N1vzq2VbhCWPhE/J8M/ryDi
	 d6CN14B7IaJ2GX6PkwnWNnVNMwN9LuBf/tuVTNvLZ8uxzyjqpN8rQh2AfDObG5Ga7J
	 4UeEwAD2oWeKVVAsO0U+nQ2cEcgPFtEO73H9LMoTssXNGMtodflGhew1kUyTx0rRP4
	 X3YvF8Dzk/yUXrY/lhLoBFXh/UASXS6e503P/kS/n/HGLGxAF06H2O3uGwxR5AZ0v8
	 DzHoRDwgwClEmRx0GxfaLrltGtXRvLR9tyJNs91MN8GIsgDgsFegRVfFbAFAotUqE9
	 N6XEoPPQb3wSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702DD73602
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297015360.17553.11902952572354638300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d591a388a8033de31ed792cae231bf7bed09c9a70c7041e0a576c9cde23daf
Date: Sat, 30 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732970153
