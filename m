Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CF9DDC5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779930154; cv=none; b=CKic6Gm89EwuJ7A/eL7CaeH2poYBXPYVNHnM7bs+dihhBdVG0kG9x8Jr+wBxGPKeijKggiK5vpvk9a+wyexwe4FhUnOJ7df51hz7gLbKj+jPLP/QcSwOYZ6IK4CmC8g3cAPRjuxYvWm1ZL4IQ+sBDufkoqdyEDPMQaao2278LQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779930154; c=relaxed/simple;
	bh=45z6v3O9UIM+Y9Va6LiNoPg2lKvKup0RyoOPQ5kmyWs=;
	h=To:Subject:From:Message-Id:Date; b=FnqHoB0XusRcMwr4crG4VNimJObg/cPreRlrvEiLwrSJ4xbEPUF0t7QnRWApvcFL4xznwo3cTPDCIpRXvwo8C12ZwcO2Ilb6mvXI4OqiSCGfsQwIKh4jiMT2gwSkyWdqT2RzugBY8dJDPcwGC9pMzQv9FpoK3PFJG30akHr5WUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jet+HSyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jet+HSyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD4EC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779930153;
	bh=45z6v3O9UIM+Y9Va6LiNoPg2lKvKup0RyoOPQ5kmyWs=;
	h=To:Subject:From:Date:From;
	b=Jet+HSyc5XJBjrkTxh38Y3kXfbblnU50dGIBcFTFY5D5PQv2DlPSck5SqcVorb78L
	 dNG6DuqPZlE1Ryl1wmahz49pwLuGHGCH7ctPX7klF5J/ZZMcH8b+1kcGJAR7MGTBtM
	 Ng/ZoPHwmrbm3W55Myrkoa64NmHin36/AEJVUW4CZ216yWW53Ix94z7q6gkOhDXOEE
	 sE6nfWuJ65Yz4sCw7LxciymGuGnki3ZONBccbIjcSFmcmkVBOURhZtPOLCaguk4/1Y
	 ALXVI248n8JcoP6Bf+nGGztHpD/b6RE6COh64qWkyGdrQt2DOOr6CtuiQCl9wFsZQ0
	 SjY7MHOCl4Zfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8034CD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993015367.23645.4261615150631987539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564f4cedd6bd547d77bc3d789d5fec2841cc3d65280a8c37fa077cfe23361461
Date: Thu, 28 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779930153
