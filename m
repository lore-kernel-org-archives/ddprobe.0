Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4199910F1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742827194; cv=none; b=KSYjbS6JTK/4h2ZJqZj5F3qjf3MM1SWpiOB4+rCPNBp6BCR2vtIV8soSmbnBENLDwschMauC+V0S9BJFroBd+FzFTgT2UZ/DSzXblHq7cUQV+r9fxG3tYMXtyvo7AMRFC+YHq1oYgO1Ic/vn6dZ7+9Bp2FWvMSPh4pnRYXTKzVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742827194; c=relaxed/simple;
	bh=IBAbRDWsi6Klw+5QaSFfq0OqANqS5bT4xodxmgFLTzk=;
	h=To:Subject:From:Message-Id:Date; b=KomBzf9x0um41SQ3VHTc2T9Fp0j/YAt/6mtrXngglu0e2rbFxFlQfFBjbxDmGfedKh+nqgwNTWDWdHbqlghAXU5+2ZEf9RAujwL37hXvtQVCHfsz6ArFEMSJLCZSYEydYzXS1hvwL3ic26nimFN6L675daOm2f9evodPWSh27jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyGgDKmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyGgDKmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA35AC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742827193;
	bh=IBAbRDWsi6Klw+5QaSFfq0OqANqS5bT4xodxmgFLTzk=;
	h=To:Subject:From:Date:From;
	b=NyGgDKmi4Rj0Xdcfd61tV6IumoZz/Q+RrTz8J9fBkivxzRbZSjxWdYEqtQDxcJrTh
	 PARmr6QgxKI13gjAU8jPO8gjaAVeLcow7OyjkDK3Aq1sWKHVk7HLb89rzglMYfsZto
	 u2Fq6Cr0FrTgmnrJ7p6h7ieMGz4fVKqNocu902GQef420puPHER/ajLMChXN3a1HcH
	 QMcc/rwamBYHorXoD/YoH8Q/nYX4ypxczRz4kJ4IJdscqnBimrmxsBTLNMX5P/qkyr
	 UrWtk0wcdOVKgb3g1DR6NR6EUOZ2sUuzHoj6qKy9aV76coMFRVsalGSZ5Ny26Hu7kT
	 sBCkWL5sbocjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90FDC3600B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282719367.3520.11726833360653235741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87cbe85f7f21369b35a6c981dc9a2a305ef91fb997d78534a108fc799ce2c3a
Date: Mon, 24 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742827193
