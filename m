Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D861D63F0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752391194; cv=none; b=R8JJ5CMeTo5iCV93XepkikJ3F9u8BSGrWWoDf1HuwYOxwmqUz1WRBNHAopag6cRg1xI7m4Qi9sNrSvrcKYanXcJbB61It9ty0JEL2tAubtlmjECYKJWbrV5uZ0FISYRSJfIKOaTvVwWqmxYcEOpZO9pWnu/3+eio2az1yvx/cB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752391194; c=relaxed/simple;
	bh=xm9IarPe7L1fIRzbKBkowZmqXisURznPYC7mNAdbzNo=;
	h=To:Subject:From:Message-Id:Date; b=sxYWywEKdsRurUq34L7CfNRCeJv8Oa6+R1uhTwU5PdeUc+wO7VwGy7NtCCtA3XUaBoXnVPIiSv8WnqEmVy1S0pTzQhAei0PGpQe51K5yvp3eRi4oCDlv3OG/wHF8upjg/fdUyXEYSneyV/kSMV2giC4OjB6Q2SPwNVc/JqmKRCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHPoo23Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHPoo23Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD69C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752391193;
	bh=xm9IarPe7L1fIRzbKBkowZmqXisURznPYC7mNAdbzNo=;
	h=To:Subject:From:Date:From;
	b=LHPoo23ZWbpBGHnazitQHHhxsskbbXg9jb53HjRAJu/994GSnrm0dJ9/T5VY6WPp8
	 8HSGNdTPXt9QgC61ySTCjbEdHA8/Zcr/9Zzxi4c8LJIdBfUJW36gqksUA21nh1ModS
	 TLbC5DQ2PICYs514bmJDvf9hZI0JIT3sqqLVjVnbt+RMq/5LOMWpmhCvpECRNmqEOT
	 MksJB1E/BfQRtY0sUQUMGstWhsBzqt3zShS9bbFYS4SEja5xPxVutGx1X/W3VO5dbM
	 hj1bk8UdnEg4rZA7MPV7Itof5WBum1nycVkzCpA3Ub7CcEXgRIwlrURJtH2McZYHCu
	 cFgHpSovrK77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1BC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239119357.30842.14848498905197647977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af2b9bda3d23261cfc4f2c866a9a62bfebd73799202b9533a3f6b98c675968
Date: Sun, 13 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752391193
