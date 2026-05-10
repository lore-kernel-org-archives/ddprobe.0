Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E87D35AC11
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778395834; cv=none; b=ciuFeu+PWIhmIof9M38g575CKNcwyOX7MkacLB8oijRI2yzbn/ORBa/1YQNQ2BBS/YXNOGHR7qemC372JeFB7Zacql3L2hKQG7NkLoMEKXD4vD/tsoFa7rROwlJvw7F2qYuvCcRxtczVuGixGwxBFIIuvN9Xene2uvMvyBTAbW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778395834; c=relaxed/simple;
	bh=z1GfrfXn/HXjlyvuCfdNf3bTNwd1B0cLIyPZQg0G4eQ=;
	h=To:Subject:From:Message-Id:Date; b=hxVKBY80KchK4IiGvIVeZzw2TgDgYgw8qbqK4k2TWWQWeF9p5UOVeINbGaageprDUFhB+rGBTV9J2YEV8TY9MGvkqBSWNoQDUtIqNh2ARHtNkieYVRlmlzazKFVhJlR7JnADq91zVwwcUciZwYi0aIlcwukKR+1J6VbbHiyEbf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3pbSLok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3pbSLok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF22DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778395833;
	bh=z1GfrfXn/HXjlyvuCfdNf3bTNwd1B0cLIyPZQg0G4eQ=;
	h=To:Subject:From:Date:From;
	b=u3pbSLokmQudJytf0tiqelsQ82uSSh45E0qaUjVq/rCYDPxVBmZnO9TGebrO2xBxX
	 JvFlWHbdZ4dAnTsj0SBWyNE/Sb0T5DchTivZ9qj8TMxCjBBH8uyt6mJDH9xQCEQJDT
	 4MXyEW5UnBAMnUpzHwxTHIFjsDFRkYKk4NusXboD6ZJ+nN/fdzobCDshVhjV3yG5oq
	 8Mh0RChiCBblKyILE9IZizrZjpdpdF/BLShbedC0RvdcmBR8hFsExC45sLsZtbT4nJ
	 1A4H8yrOdH2kZPY0jS+m/FAhjJFwmHmJjl5r9c7+RrFFEy5dn1AscHhm0qN3VdT0mS
	 RDOjPX6E4jHsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8F6CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839583374.32527.15740236306674283795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcb6f1c735fd34ed18d8f26432b8ad1f0df2451fe786cb2ad6c0ce3872604e9
Date: Sun, 10 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778395833
