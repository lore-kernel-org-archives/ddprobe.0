Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7561D90DF
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757817594; cv=none; b=B7b68fS9c1jB/FGu+EQo3D+J3bIyDfI7TX/u7AGZ4quXVij3Lg6T4gSPQ984xwVsYilj1X2wMtaVtr/1Ci1JG2KZdvyW4tVcKH5J+Sr/C8QXYO0m4LF4ImLNVCF5rL+35N8CGCoIEZdMioYohvrvA1yj+aMgxUbaQL5+tF8KOnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757817594; c=relaxed/simple;
	bh=kitiQajpm/olKiM2KZci3w35Z9uof9IDtr/ayyj4PLs=;
	h=To:Subject:From:Message-Id:Date; b=JxmlRsXWOEKHUh1fHyNr6Lr4QZB3xaydEOFcYH1EL/Wz/mIpSn4Wzlmu+3uk1JJETNfy0IEs12W9teo4GuMU+ZuH7Wni+PCeg+xdK9oJDTrs3a8B/2ToEZVzjFfnvXEzEja/Dz9bmd2gLuoYy9yHNCpf+7kOJ6MjVcoPQhBWISA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwr8UIO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwr8UIO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F86C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757817593;
	bh=kitiQajpm/olKiM2KZci3w35Z9uof9IDtr/ayyj4PLs=;
	h=To:Subject:From:Date:From;
	b=Bwr8UIO4AkhqWLoa5J0PiBS3NsWuv49I34iWTV628C+alR0URZRfz8QjYu2GWSlYn
	 Zr4cb1PLEoPZILdLdm058NnxdQ0jC/aZTaqfvCPyH67ijrmUmGtb/gFnl97LKy2bDH
	 ahueJEJQe7yw6xiFsBOZvzQNhCYAaiNOBuAosq9Dvl5NGVOgcjt9Trn9NP+bH4PpK9
	 PKKt6i2u4biuQXhYgzUIQFAur18b6gyCSIaS0nOwdkAeBlROq+PD54gG2Q8+hvN4wV
	 /bPzFBbnaudU5LwoB6P0YKdR33qagbXV+Q28Mi3Fl1KLs0I1I4PivSzQUXE6WV+a9W
	 JGvFvxHfDe5wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F9DCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781759357.14881.13133359770565536565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c11c4397c97568d7a2ff973bb0c293ae2176c711152974bb1a476e559836a5
Date: Sun, 14 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757817593
