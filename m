Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3867018DB03
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748534994; cv=none; b=Aq+rPQiXf6xgchyRsf24CajJ+O6rlqfiqYCi4v4sJcszElcdLlTSUqKLuu1cJe3TkKFTmGJ4W67kYOMAiQfAxZYC/PLDZXBwnM9SNMiUYngKTcRMPXQ4tqOVtHOI0+kiczAwBGglxY+ULD3FloRoqhCpcWXllSMqBAejQFsnjj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748534994; c=relaxed/simple;
	bh=1qE2azgBjUQQasMxZbaapC+h3S0KzUYLFjAzI+BKVCk=;
	h=To:Subject:From:Message-Id:Date; b=SCn7d7UCtYpGwDMz/ueg5Po3419MHVzcj5oF5pC2m6SFFD8svcO50qcaIViFd6NDFyGoxwfk3MdJKk2vEOvp0dnRnO159q7akt0HQyfQVZIfv3uK11EqdYbImBqe2IYyVvij1dT85i+SDqyZuPpoRle8mDTTwUQl4XvNsXEwG3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoczQ3O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoczQ3O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A65C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748534993;
	bh=1qE2azgBjUQQasMxZbaapC+h3S0KzUYLFjAzI+BKVCk=;
	h=To:Subject:From:Date:From;
	b=PoczQ3O2dhcsF63PGsaxwmL9683nd+eLm5pXkArrMbaRgnuoZC6j54q/TTA2t/Ea5
	 0MO5uLqMb4RaCL2Yl/zwzusl/cPOCR2eHBbhMX0+2gUReP6P7P6E/QSbeGbyz3JINE
	 bW7kWSOzeG7xq9iAnfXSSaDOSxPf1EW8smbVebVbWbnIuxTnf/EPZBiE0zS1DIv4zk
	 Z31ct7cS6YCRqlDxpeZtxuaVUZ/CBkfahXyjnoJe+BZCgS4Kyz+SYp/h8Ji79zNPNp
	 cGYHJuh5Cb7m6/O7hJh3N28I1+QOYyvYV9MlqJmHGUZarx+25IyHaYogTZNEQgFMbv
	 NtFChYSEru5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E12C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853499357.32467.6034716875195103900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e74f4fccb86de500dc7e10c65e2b558980ff29b84b3414b8bba3abda03a4a53
Date: Thu, 29 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748534993
