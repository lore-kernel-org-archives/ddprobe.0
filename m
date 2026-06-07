Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228BF2C15AC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780811074; cv=none; b=Iol0VqrW79PpBQ2v8tNCSL60RNMnLkEJxvhJ6jHAaePQ0QbRXwXFzvwQWV9z6ddsolK+eMZ2wMnRym3Z+xOBuJlM2v1G65pqf1LmX+aIdGdP9S1YokQviRuxCru5de9GA8kjHUCKmfAnsrT6g3H5wHen6p7WaBYqMGaRiv5Yj20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780811074; c=relaxed/simple;
	bh=8EAXEjilvI1QXjhv0EeyEE4acFOoLZU1Lb418DB/ZMI=;
	h=To:Subject:From:Message-Id:Date; b=llTlhlLIzHaWKkzjI7Z10IWlZzON4RkLZm2uJvbHSqgmkGu1wKTeObv8kDwoquc6V/5Goo3EaWiqc10PqB08Mm/JSLFVA6vS9aOyH0GOTsnbBhsaTptbc6k7kKXY1LPgClSYs7sD1tEvzHG0J8bp1eE/b8wFnWDjs2a9pdfHmqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PR/HpatI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PR/HpatI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD85BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780811073;
	bh=8EAXEjilvI1QXjhv0EeyEE4acFOoLZU1Lb418DB/ZMI=;
	h=To:Subject:From:Date:From;
	b=PR/HpatIgDyGRf45xzQ5KYe2hnu0mb0sKd27PVr5eoMQtAIwYt98pha5Jc+Alge/P
	 lHHJ4g195gW7DtYf+jLbyVKu51IldwS0cmoNy+eTWJFqxbGCpoW0d53THZic15Alw5
	 VwVq7A5xQ7khPPJds685E9kGs4FkK7aJcSer9xWmjhI/U4Yl+8Bu8yFyRg6e2P/X4u
	 a5oZTQ1EhIRTdS5lIUI9qzgyxVfUDS6slg5Exlfh3f9AHngN/YDeuBH/anKbRrKfnQ
	 WqoPYknCy02XQrGqlTeW91rUy/9cci/qlsJ+MIIt/CfbaFmcwq9KjmrDMcULvivO8o
	 39kY+yYeuLHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18E3CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081107370.26275.1530980737239040299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68bd3a613ccaac92963fd5a1da8aaf3c9358663ccd45799803699e4b0410141
Date: Sun, 07 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780811073
