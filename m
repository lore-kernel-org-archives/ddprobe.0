Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3251259CBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749478193; cv=none; b=rMiG9ycDMn5QotPBcE/+t2axITuTlDJeOH8Eo1ieRplpdkm0tWxuRvdgV+XyO4ClzXA9qudObx8OWwesVuXp494xz7BCcY2LGbBeRj4Ru60TFn9+GnJJixWviMeOs/wGkTtELGPZb77GwyQwDcg06IvJIIWXobOGOfeD2oKDbYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749478193; c=relaxed/simple;
	bh=71dgX6SweHYf++PUjtGXch+3FVn+ND3mf/UK9UC/0og=;
	h=To:Subject:From:Message-Id:Date; b=LkI8Q0rSjg3+vyIiet8+BOybvXNAWAST6NbO2FU0n0ev1L/igg7e7B3cDcrEXYMEx+A1syscRiQY0tEUfvqq5DyV32Zuy+PamI/UTEu2xVcaTL98BTADeeIfCwrCgUhHAga8tt5BCo6aaSbEFG1YuQLUIQFPAWlY8PzQinRH4ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFR12TTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFR12TTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD58C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749478193;
	bh=71dgX6SweHYf++PUjtGXch+3FVn+ND3mf/UK9UC/0og=;
	h=To:Subject:From:Date:From;
	b=OFR12TThN5Ry1NrXWzrNAg8mWF1oIRnmMfVhyBiJFs5YJhGcYEt8XFYoHXq/NQyyJ
	 QnQ1pSIvcnkpEHi/gnCxfikFwfisBLztEk3u3r6ZXCL4/+5yfw8LwVYWkA8TeXWZUl
	 EW7lz2KnfcjVDqdw3XYLaC2KJaNZrszHbeZORG7va8pwQTjr8QNDEUq3/UCtfx56Js
	 7emciTk3HRzbIHcl2A4XAmNmAy0d92G5p85nivlQKmMrPVilBOzQ4cJNJXy43krUl5
	 p5g+S+hB/0N6ZPv+NU2fsoF8Cq1KwGLmW8nz8y7s9OYifSVSo3po56yhnhwLbP6xBq
	 3cnhLvW4rTztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90399C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947819358.28292.4913938616789735481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc86861c78d83184d7c9b8ff345e2ee168c87f0602f9292bc49598e53aa26a66
Date: Mon, 09 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749478193
