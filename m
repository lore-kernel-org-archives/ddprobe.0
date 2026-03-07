Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382B8313E34
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772927094; cv=none; b=uCAH5LHu2lT8yqs09X7IfXkvgVLF19wdCJddlfRSEZPr+i28Q+1sqF2JyWtawp5VF8UgchAuPTjal7rwQhJathezR6zrJUuZ24QYR4z8IyAg9zeod+Cv78KhP6gT6+32HnGEHm2sMeOVFfL1OgLZZ7NfO9982dSX0OWLxo2lz5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772927094; c=relaxed/simple;
	bh=sl7yY8V2sC/9a6ZYZlz2cREIi65Y7xyIA5SI0muOuLo=;
	h=To:Subject:From:Message-Id:Date; b=BYPPr0zygq81DDlssUyV8/hbhq1DYVX2q84xTyJE1yxVy7Uw4G9sxI0u6438KDruUFw6mnxTB5aTMcYdTtWXMq1j6QWkCLJFZn2/gSh1nL1Rnyf9MXVKJNfqCCzqPasA6eH3HBXgD0jpTgFPKsbUhtnQ8fwd+esksfoqUuY5TF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKbzUCwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKbzUCwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B50C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772927093;
	bh=sl7yY8V2sC/9a6ZYZlz2cREIi65Y7xyIA5SI0muOuLo=;
	h=To:Subject:From:Date:From;
	b=JKbzUCwnYCbh77P9SYy2gKcfXXjMh7ce6mKivS99//FzFyTlaHJHJl0S6SqC9AIbZ
	 hzxn3V2gek0tVtY81k2JcOT2atbNTZvh13HZEBqqMeNDexz6q37U1Rgq+F3yXlPtbL
	 aQKnoQDPuW77rgFwMYPDzQmpC5vKgadZNM0XWo7QuB6AYoCnjYDnPX4sMy8wf6Z7PH
	 VVgzao7oW34etajt7tklV0UOYW/KF65Rg/QtDlSmzGrqIL56upOuM7BrNt0zQGvKNA
	 EXYgrffzrwiqdwX5N/xtawfeAtjiviW+1vsSKJpLnaOtYHwpIxtovGR83XzK4QN7Z8
	 S5KX22sQ/fC+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C5F55121
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292709357.29323.6656753804604141215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32dd885dcc96ad7689c8c4997a5382cc08847a5c764c6df1c0375beb6debf7e
Date: Sat, 07 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772927093
