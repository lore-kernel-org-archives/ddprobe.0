Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7A1208D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777171054; cv=none; b=sLuFT/zXC7btVZdeh4Ll+asvpB/Qiw4KreJmJecSJXDScx926KdakT1JEqE2Zz6ywABprsvuqwW1ivr29ylke2Va0i5oyfHjJZ+YkNLZ2DZBmrwKNZ+wN15phXhHTZaObAUd2fYC2EK9LiAcYEEZ7ilIC85wz5hSzMoIwwAKbiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777171054; c=relaxed/simple;
	bh=l8vKcreUH0X6Jea6QM3HBlqdVZKWnahL0LrGxb50d94=;
	h=To:Subject:From:Message-Id:Date; b=SPM25PJ8VuvpsLglnVyZnZTr3yycLmaR+ZxfzbhHZB3uJNtYJK+8tvSzQveabv8qWW5lX8cK6CTskuzkkx+qmb5XvboT2bVhPmNmMmzzoQjlmE8Lq7tac8kaV/19BOD7vRasWC/R0g7rSGIGd/GDtbFhGWiubn/CAGSBn+w9qM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCzfMAYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCzfMAYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34BFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777171053;
	bh=l8vKcreUH0X6Jea6QM3HBlqdVZKWnahL0LrGxb50d94=;
	h=To:Subject:From:Date:From;
	b=CCzfMAYZc24iwe9HpxG0FeSG1LoYHWbQyhNcs39mbIs5XsPadNgoGQkKuAGRSXwty
	 vbkRD6UR62dVqBamNNGoJjpnMdOcSpka/dwI8bFCjIJQLetKDyYxBjcdJ4ExK1GKf/
	 W9AUiaTFucIIjEQfV3WhthyC6kVHfnLp3XBGwqMBvGo+FXs5UtP7E5wnT7Rocenqit
	 YlC/rrugbDl+iUekal+wbCr0qgg4Z92OUpO+QWYIjO0IS/RbTwiuER8Oapdqtye4jy
	 NMH8MekQeqlGYHtPYMzla7NFlYijOK6FVHa80e2+3SsHAi+rDJSI9izL7YUAWO7gpX
	 cDDDoouZKN7Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA0FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717105368.11507.716932872075068488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721f402745e796d3dc70c24a57150c2528cfeaee54ee3ab9efcc1fbcf7cde3c8
Date: Sun, 26 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777171053
