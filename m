Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E8C3019A3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762418394; cv=none; b=YUHF5sKyLIjXZ5ZdyUUATj5SyUD2rWIg6D/sqqaCrT4TtqZxGBEpfGS7WsUwDEehZR0rzIiGez3dLX0/cEHclY4mTBFsUS2Vtwnh29owpw4I99o6KJImF90vx5aDsrAiL8pJLQcl8DPgX+5q6EF/c/B6A1RTYBe2D927+epAVOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762418394; c=relaxed/simple;
	bh=NFkqDeQsYsoZDIa5XUCYlI1a4fbp80wBgMFRjiaNnOo=;
	h=To:Subject:From:Message-Id:Date; b=X6j7x4t4D6j8pXwhMyZu5zd1cv49saD9DsXeHFKHCiCqZJ6x6Fwa2GjzllSgY51Tb27XnQco9xRdIOd9E1nZNJDVNt3gQ6eMA6NUasOdBwcPUKx23fCRRICdMoAFicHOsU2OpNqqUwxQsr7GeGAwqVNwGXlnFl5b3NMMiy7jMJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulP7Zh4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulP7Zh4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762418393;
	bh=NFkqDeQsYsoZDIa5XUCYlI1a4fbp80wBgMFRjiaNnOo=;
	h=To:Subject:From:Date:From;
	b=ulP7Zh4zIW/vAkHVTXPhTgf6IhmhUXdq+VJ7GD6qkST9RzEhePUg4FH+TMjUDW8CR
	 QfG2IvwgzGoLGKsqxMHPGJU12IUMKnmRtSNO4vRnHaq6DU+G/OuioRxo5+mMdJ4NoK
	 YibLNplxll3IydbSTwiMzbt5k9oQVdDgCI5lzKEsu8fRKilrml/lhbPsueDkMKMHWJ
	 JhUOhbVzue1bydGlK9ET2tf5Qu6HkfTqIpeqgJpmN8szHDE5ndqBWppS5Aze4fMEkq
	 +dXqcKPdB9aA7J+XcvDv1KErgQ0xmqDE/tluBjs4pWpfM/zUE+zFoZO2/57u7s3DNq
	 L4k45s82pJzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438CCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241839359.7217.9875016385841757670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d421d8daf9fc37b2cf5e432a17dee9b19d884dfa24bafe7f9f88a58d417dc23
Date: Thu, 06 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762418393
