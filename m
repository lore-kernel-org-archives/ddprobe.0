Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFC91E0DD1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737380154; cv=none; b=C3+9vXnQEVHhWXdv8TaqInK1HHPYr6nqNgCXhXjkpTOgMLZHAkJua6Hh6yM33uPfj4nMpeEMLcHxl3znWwmoMXq+h3gXBY6ec3G21QL2qAZxzRVxCT1W0e4cKCtcCdQt16Sd2T2d5u1u39l9CPevNxz+/PRHePea82lzd1XhO2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737380154; c=relaxed/simple;
	bh=XZ9HVh99B4SRTuhsv9z0/7wN8wmdVkN3DulNTcUTrJg=;
	h=To:Subject:From:Message-Id:Date; b=oyK6O4wa2TalvRHpKqlYKMMxbud2anx5Jj7BTHcwGdBpycSgK66Dnhw1J5ThTmHEEJYpv7vSrf9MX4YibUSLBKzA9RKCTPtCM4dbV9vBqsSPxr3IOthX875b46psXG4/QBGGvPG6ReqF4ZZ+5nqZxPV9Q0dYhkwmWjlUSn/RmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwnfOHHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwnfOHHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737380153;
	bh=XZ9HVh99B4SRTuhsv9z0/7wN8wmdVkN3DulNTcUTrJg=;
	h=To:Subject:From:Date:From;
	b=QwnfOHHh02KAaZmasSjVwt/Q3PBQ5JOFR0tr8G7/XCfgbjoRr3wE/pQDBxlAMsYzn
	 ameg+93ngo3wNqkNSznYUlXu5ehPEC3QCZv+YAuzDao4CqLL/n2vx+zLCWr/sn8n+m
	 E7ICYitG4Sh4hZgMWTOsH9vX4ay9RPwe6eX8FsQeqXZRzyCVRD1BleBYys488GkMTk
	 469NtRJmXZ0MSS9nAX/gOnPBfqQdHL18g2OsmA4ZVU3M7I9I4ApFB8dz4Dx7JxUI5L
	 /274biNC3uMvoB+OxXXkHnBJkP8epAYCAad9GLfIAafRGghVQMRg7XSmiX2AUIiTy+
	 7qsGjiQmaSS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DDC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738015357.15212.8611424809333328017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa928b4bbdf9d35f067744f5f1bfd1a78f376f520b5f1d24e5028d0e4e13659
Date: Mon, 20 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737380153
