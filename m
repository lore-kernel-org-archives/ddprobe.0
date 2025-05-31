Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C1A182B7
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748713794; cv=none; b=I5uWCE1TBjmawtIkEyfMrMFY5aeWu13wttBHxgFKbhjyqgxKPN02iNSdqsBMn+wbkFfieGkkS6drK/ixq0VbnEpCG0rjDt7y6J2CHDP7nXZlgJVrCg+yyR9GFtksG4Az49P0jxY9ITCNAY2KKbPGcdQgQ9VekhI++P58x9Q79ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748713794; c=relaxed/simple;
	bh=C1DKXnJxINqaEMLYTV/8l6No5JawdViW334K08MjuXk=;
	h=To:Subject:From:Message-Id:Date; b=FxuzCgGSWmZ4A3v70b3SpOotMPYRIeIT8DEnC8jtQnLlL0O9X87WZkUXm8W+zXm0l0Zz0Zpmeh3bWJ5yRnimQmVRclZJSzgbjNTmxXR+GpECq6fjvJmZD4BVRqCkK1ugbmu+j3NWz1RGuO5OtW/P7zv4gcO7syFyQejRcg5c0EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jESP9fR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jESP9fR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4042C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748713793;
	bh=C1DKXnJxINqaEMLYTV/8l6No5JawdViW334K08MjuXk=;
	h=To:Subject:From:Date:From;
	b=jESP9fR/5mYvLL+ZxjHIsdM20eEFuOz9Qu91JCJXAl23EtMScq8cjt1/JKqDZQQRt
	 VUt/W6+CLWGJm1RlPXyb67mpEJ+KCewH614dar2/zBJp+Ghdvo9VFDdgdt38q077pF
	 QhtM3xyAy9qYFEULsjBH3TfPUtUDUb6SIBqbmZXTwm4uRwDWK9ZrRcK8WbZrFiENLC
	 Du/1yy6lgdmTQcFKPvAq3iXzmONWjUg2J4T3DSoDqxRGavg0L2XjicFI4kYHV3edVg
	 iNB/SPPgATXHie2kadP19WrWwOewFQ4fy7pSYF6kf1CMnU/ZvhhM99/AHSDxroZSb+
	 dJ8/3+The5VJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F5C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871379357.3735.4862264845432656155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebb9a187c9aad847590027493f185cc6890c316115a4bf19444b1ba001db2d3
Date: Sat, 31 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748713793
