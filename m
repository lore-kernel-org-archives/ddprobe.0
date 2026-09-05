Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D4C36165E
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788629434; cv=none; b=hmMmVCvEcuJlrwU06txz4P4MO+fRj/30r9BWwNMZV88AIUY0x+h+4SpdE+BVE1pfjhmiF4UwpAVBHlJ8D4LGrjjkDoW/JPF2JM0aJRDoUadv5tcrBokZEblmb9rmwwK8yg1gx/DzcpPaSpcqBQE/jrTIImS1dBqwZ/Bkw+SusmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788629434; c=relaxed/simple;
	bh=iKBsPEmqpXIhWSjywoTOwqRlZOB012IwEyVMEFReRWc=;
	h=To:Subject:From:Message-Id:Date; b=VxE9kAEoqPVUeshC2KihC7vmy3Us9WdX8AHsbOP1dJQxWYEjmaiYSCp0aV2zHfKO5r2OmOGEkI0xFXXrIQSF/qZ8CaWgbePBiw+5K9z99H8aLYJ9NAyDEI7eumg4JtLAi5qPYS6e4sHT8GrBQO0PaTRqwSCTdF+q4YSCEIcpTiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2BiXw92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2BiXw92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2554C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788629433;
	bh=iKBsPEmqpXIhWSjywoTOwqRlZOB012IwEyVMEFReRWc=;
	h=To:Subject:From:Date:From;
	b=V2BiXw92fBcW5qGjK4gErAwbGgHIFd+MHhUuY8Li4O7aZ/uea55BheB6nN9G0tCAB
	 wRlZm8WsOcCBVLI0nTBv/j74op94/+5oNYNsbKnuW07jpDpaPCPgvAAR6XlASx+MQN
	 Oke9gqfS2Zou/DxAq8D0bJO1roCj/+WYHp1pqCMu4r9gvI1YivJpMIGSvCYkKaj80l
	 g8b3+vt3crlKWuGCDTrL7r5TYlHqxNPDuOvZwiVpOUtWQfwhSMetTzdoxLIzNLxi6T
	 Sk7TdN4lSvhHeZLtsDIiNVUQW/6zgaxf3q6Xkg3+N87UL7SucO7kxqdkl8zGczHB8x
	 Jwt6v1gs63/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD715C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862943368.27751.8156776991072453482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011cd2e203cfc9a241bfb66812b7fd7eca7f8ace2b5d12f24f472560376602ab
Date: Sat, 05 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788629433
