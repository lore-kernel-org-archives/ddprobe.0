Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385AC1B0437
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761462594; cv=none; b=S/E2RxZ7Eu0WjBGpQnrNOYKYTPnSAzLfNlglRetL7O54whR1OXNHltci/txWR35x4xU1d6ZXn3cFRpNvzVhYctnbbSqFvGOpy3DUnDVdPZ1LmlNYky1R8UqwaDKcIFkXdrXP84yAr8ijStdgj/8IMR6DTgN1U7rEmIgBSPRN3zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761462594; c=relaxed/simple;
	bh=5qSYPkohD2duYvumA2qfxPD4kUgOT1ujPm3JQKMt7NQ=;
	h=To:Subject:From:Message-Id:Date; b=nLFK5vV1Gr34peJyTRLnn4W5sH+53ozsqN0TVnDAMXgvAXd3fnH3ZEysgQGupzPScgMZn8pQ6GB3GorYPRQ8Ig+4sBc0Mx9mM1fEZVQu4cLHafDbfw5dqE/ni4EQ15EgnoMM7sfMDQxtNdGtF93zmnYYWjgJuADu/ZpkCNKpts4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKIwlV5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKIwlV5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761462593;
	bh=5qSYPkohD2duYvumA2qfxPD4kUgOT1ujPm3JQKMt7NQ=;
	h=To:Subject:From:Date:From;
	b=MKIwlV5RfXoX8SnJ5i/wEv0g+texNCMacrQ3KVxHICeHP86/GnrhA332NrJE+cxCR
	 T4vh/yY9sgljl2OeERNgThrOMPQlFbz9ByawjvVY4LnbtrAclGeSogjP00hjONx4Bt
	 xs6xE8c76b9eTCgzZVlzirNQujMg5rS3TGoheqX19WdWsssQxp9zx/L9by4vSfzUCs
	 Q0KZ+wYXVwos2AmJOq26J0fdLfQdIgTlLqRIAij3emU+DuvMwSNpNMbwOQ1fRaL5cC
	 352jmXdunDZoDMR/n/EaOVA5bHs7O07DS6MTS91H4pzpl3Y3gyW+JOYbWJfkSdNEAR
	 vg126lbJjwLVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F3ECCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146259357.23848.14039100675064582355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c0fd22d5badd524c96eb5ec90df20443b17c87d27d5980cfaba5928029e07e
Date: Sun, 26 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761462593
