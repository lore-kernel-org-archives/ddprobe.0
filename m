Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF99EAF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738107354; cv=none; b=d2qQdlPEHdOx5nSkMQDWFgtLRMby2tVSvr9QxYreu88Lyi1BE/kdmgGavXGNZmbmb4FC+19hmNnGZcvIU5me+hzT2sDTXibwycBFLoGOQckNRMpsdsMTKUqYM2li3H6JmtdhQQhEEpiZkdZyO4n/AhTrVLsLzEcNWjh2I/shjvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738107354; c=relaxed/simple;
	bh=Vr2q9Ir57BcBmUK6nvOMvMvzx0b5fRQJ6GqtI1Jcf7A=;
	h=To:Subject:From:Message-Id:Date; b=JjwZouDVk85+WVsXg6HrjeCr5M0H4vm0OyOrriwuXNoT07JUTatP/HTotL/doBQkq72YX2ZWFy+nlfdYr+/ssqdVjb8blhG31h7k388FRR7OZOaCq/O9Rm71ndjSnVERPOufkGXmqROLAAdF85mTRCOmO87kXI7vo9qMBhOAxMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtWqxydq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtWqxydq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9920C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738107353;
	bh=Vr2q9Ir57BcBmUK6nvOMvMvzx0b5fRQJ6GqtI1Jcf7A=;
	h=To:Subject:From:Date:From;
	b=VtWqxydqsG8gcKnhRaf07KmVz0+VxA9ZOXefJDxUIaUfTkMjYCtQ3yQgAdGb5xGM4
	 LV8/MilVj0vkmzQK6wZh6Xm7Tfq62rPdTgfJYVGLsYDq7C/2tVZubjwNsK33FjA0TJ
	 qelbyuzgzoDKMgeG23DdVu6Pk0KaDFupmocw0E0/u6ZHPNDAObQnuMpgNW+LDDblYC
	 fYGNzsKnUl6rbGSSc903fga5byDkGUdTS/dKdtE8CNOdVtDGl8nso3PYHKRAvd163r
	 4lcAy926ZbfexP0N9wrRqABRq3Bkz8BiZYZEqJPykcaFs5kO3StDnyPK6jdsLTL8Um
	 nIRM34QXviJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3EAC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810735360.7727.12454699546819970332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8ffb3a8f76e8ae1b2f3521553f89fdcc94ca7f47eeef01eea3e0509a035593
Date: Tue, 28 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738107353
