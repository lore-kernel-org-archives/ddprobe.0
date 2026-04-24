Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD8E39FD9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777047454; cv=none; b=jwEO4ELZ+EuoT7/irrqEeYkoFGw4tWRCjDa3ZZ5LJu0nPTUyPhLhk9y3NUIHQ0x83SaPVWSMkYI/EDosR25cZY6DCbIMpKm81ab726wZtWtJipcxi68eoWZloqcnWnP4yn/8ooXT0Lpoh1LVNrt/LX53uORx1GGX03GyHN4CxO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777047454; c=relaxed/simple;
	bh=8b4EoclWtCGg+TKCwg/8FsVi05VflbgRfBp+fXHugP0=;
	h=To:Subject:From:Message-Id:Date; b=XFepo97XK7mYU/Wd73hdau1nVLsvqZXyu6AHVQOueCwz3fjawGsrOCNuHrSrBPMfNfM/yt4jfuY9nGDOLXiE3ANLG3Kr5X5G+9yfmxZlCgJ5xr8LMdiRE2Fc4q98IG97vUuFsyfB38wUh/Ke23z6WoVKJcgVvJmNwnv53vnRguQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lki3GlIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lki3GlIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE89CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777047453;
	bh=8b4EoclWtCGg+TKCwg/8FsVi05VflbgRfBp+fXHugP0=;
	h=To:Subject:From:Date:From;
	b=Lki3GlITUW8KEUGCFCHbmtmv1EwMeONvZLioxSUWnbVtITqrmxyVtowVILUzt6HpK
	 dFBxt3ZYxvtwT32TEbNKIK1IMpPqFBZ7L/TnQ5v/t0RmbFJdNvkRj32K0b3PkZC2TI
	 7pzNNCp/RXp3qlBvDrwuf9CztLloBFgyYoqj8LlpgvU1L1PzgduN2serW094kALS27
	 JneLmB8TcfQtLMRKct8oc4rtxEkC7EPmy/o8IMLbHpoDT8IaUxtmc6roT6MVvc90D6
	 RmGWn8sA5BsjaSB3Ii6ffcXq48l96thBkXGOPCwlpTuJKbSXZse5q/0m+nlNVpcBgV
	 flA2DeAc4Eing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F3FED3D7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704745369.15919.11699414046614645596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d473a2dda7d8881b9792bb84df906d44d61982329335996daa322ce3a8e8e7
Date: Fri, 24 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777047453
