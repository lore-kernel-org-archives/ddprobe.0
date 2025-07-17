Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE22F7CFE
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752763194; cv=none; b=NKGhLp2JhyHACdggVGGzTjJbkOeuSvm2f06bfVXlbI/rIxItnwzzop8gzSoroNfncHCSz7vWtpY/LykPUeixJcHcsDvaSHFeKTDMNPDjNzkI50dTK7eJ8hMvYY+DRIJ72b3YShT49apODAU1hRAjz6R736e9yhwZmL/Rr8og1TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752763194; c=relaxed/simple;
	bh=wS7jkSHeuQVkavlyqmFwcEAoZyvY0RXN8vjwxScYvO8=;
	h=To:Subject:From:Message-Id:Date; b=qViMAqrobc6j3/B+fwin8u7PaPoTY+itzww0SJwyfj6Im7WHojy+ISoXPeiCc4/mramxLpd/gsLH+UPttt+urcPTzRNgUhlSU7zffUHeJi9XcBkSSNvKFaMo4uf97GQg73TXu1XKAmC5PaeVAjID0mKr8QBpLjR5P4fa/vtPgvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTr3bduP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTr3bduP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752763193;
	bh=wS7jkSHeuQVkavlyqmFwcEAoZyvY0RXN8vjwxScYvO8=;
	h=To:Subject:From:Date:From;
	b=YTr3bduPrzltRszo7tDkq+94iKUCFw1BP0EUIskurqWlmuYaWfZgz7Bbrc9eMxOjr
	 ZdoxoxclLLmgl+4RMUsVNhvWyvP0Ajohjs25Cyu3mOVXcHcHpF00QtmHjnf40qfOzf
	 sG7INjOqb6B+xywTu1O0pxoGrW3X1JVn2bkfaJPC5JBeyn8Yw+QG3VJUE+tmQog+RS
	 rWHi1tr3aZL+cN+6hbJF5Al9CIYeGISU1laNH9kkPcuj3MFyTzsci1Lzpsw0u2h03K
	 CqHQeNynAy0VNSGGTFElN73wCHkra/WX1lHp20NvySa7nyKf8pc3tt1qUjdUGrSHzQ
	 ohLNA9wiFqBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA11C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276319357.11999.14716760342904973053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d69207da07f52fc94aa40eaa017f340be771688b5a7adcd46039d934e8ad13
Date: Thu, 17 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752763193
