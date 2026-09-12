Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F072594BD
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789221034; cv=none; b=cgog5NhqUW8+mxHY2ZqASjKPiKpiEPjdK6ZkZYujrI0jefBuw6+gfpedZ28JhXtS3Qfkkw7JyMx8MBfh759rBeCZ/wmfAT6T7iAioq5yoAfXmZwzFs6cbUnELa0TWMYmeMIDNwZlzNjb/zTln+wa8kFarolR7zNwsCqesknqFk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789221034; c=relaxed/simple;
	bh=zdOzwikpuThhApy2z1r/n6/OVrfN5qg+NI8HhWwzbRM=;
	h=To:Subject:From:Message-Id:Date; b=lMx6gou0vkN+QYslVNAyKw/8owNj3GV3X6vtKebIs/C9U8+jLGKLNPXcWArFHlxtRcr98P69not8FdYSKgxGCFMC1r7WhB/RQS6HMsS8BMlkGr7lBQH5f8knhJso47tt6HnZgQNGVZ5ZMCddggwFs9O80x0WfWlu8V51aqWIEn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHMFzklk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHMFzklk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20EEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789221033;
	bh=zdOzwikpuThhApy2z1r/n6/OVrfN5qg+NI8HhWwzbRM=;
	h=To:Subject:From:Date:From;
	b=eHMFzklkL7P1lJ2tgnTpUwjQB5+4qaQlFKekXzOR7Vf1+UoHDwy2sRywqcxk7A9mt
	 eT0u2FebpU6DJXP4BUePpKBqEeQI18X3N0V7r1n+u2MSSC1DaGPNe89fUxG9qNIAMB
	 NvCIb8SaFuAclVJAk8pjWSDG76kalNR9on2cmVKTGvfWeKjmiU5X9ew/LK4dz6+FYp
	 8DCyJLGI09tdAwj4c7xX08AErY0Hlmrx83LI9axWo/UaapcR7uQHzzNtjKsVPA1aXD
	 AwNwKR1XBFbK++Ll0KSQJaj132x5W0UXMcBaljKxnhHGTdVxBqv9b0qHf2DnrL8xaG
	 2tY5CNyxwRh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCDDC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922103368.18953.15894472834756208580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e24d6abe210b6a6c96658f903c5bc4d45a799461596731c1fc9b1c7cbf0afad
Date: Sat, 12 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789221033
