Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6231A23D291
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791110434; cv=none; b=AJiOrKdwe0sY/Aw/GJuo14DXua/dkqUqJW31KBjynYd3WlvURVZrDnvbCwcTlECRFmDeO6aP0brzPmYNun38XpFbjinobvgCYuig9xYcxX+ZKy4jPGgQAJODFvhpVDLueavxSW9uQUPc0BW52YcyvALgMbdLvFnssXiZCZ22heo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791110434; c=relaxed/simple;
	bh=KNZK7evJ47eEmdfh6aTFDZqUEnt3kUEAseJvu5YzR8Q=;
	h=To:Subject:From:Message-Id:Date; b=Xo/clu7zmCAcYS277CrrgOQ5yamHTNp5OZQMil9p3TWN9MDGZYWrIzoVf558stflC8Cug0ugvIRvmgW96xifjLaZ65hlz/mXGfyTHZyZ89vS13jFH9kysxjQaSJgZlj52ykcIkTFu7SOt9xLW7UuiYQnGcgWcj2N9mYSmVAVPxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNfjQSk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNfjQSk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB5AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791110433;
	bh=KNZK7evJ47eEmdfh6aTFDZqUEnt3kUEAseJvu5YzR8Q=;
	h=To:Subject:From:Date:From;
	b=HNfjQSk7qHO/Xsp5IUfkxnrGHsz/7STi9qyhp5GMfCTRHpg9S8o4h5VS3fZIz0ir0
	 3BovvuWXJOSGkvLSryVpOwIk2yevLFUEHXQv0An3OULlzeMght2J1w+c1i51RV+cbq
	 OKAiGxqVi5kxdUHrN8xoov7aBgxDBhm0ml2fYuPkhwwqFi8RZeC0nopxGv0u53yfQ7
	 Z6RXXBcfyWGJ33FzTCHUEk7updByqraBQFjnkLDpP3YRinPcdmAx9mNb0aN8NHsyXO
	 7ciJYvrWYIcLPUh42+u7spgsgcAcC5i8wTT26R5IZfEYKxKKNzC8tCinUWJeNuNs/n
	 +gpAb89svBG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A6FCA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111043369.10227.8434644307367505312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5e5d2bfe0e44a41eb1ad96cc856b018b822a1815772f99ac237821f4f042ff
Date: Sun, 04 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791110433
