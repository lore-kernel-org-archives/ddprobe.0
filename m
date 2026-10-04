Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420A33936D
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791145834; cv=none; b=BoI6QF38t445QmKpkzfbYoY8ax5D/GHysxTYONyfmKowfKJynyeIg7wHWQJXwj8xNmok2TpuJX2A4jvFsFKItKw5/7qYY7My+W61ieO5foNZNl5aGAIvWNgxToEBvrj8OIerZiSC6iakbSOFze6REyGoxzLNkMJIxsTqbig21so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791145834; c=relaxed/simple;
	bh=LMDBE0KA0hRq3vDV69CH8Jv3o6RIL4JfgI40WUorARw=;
	h=To:Subject:From:Message-Id:Date; b=UeBxc1U4rL4EHhy2K8Lzs/qhm3xjHWTx9fHrC8oGJoWXdQVbgRt00Bn2FsE5AUIegPXYw/ujdenl01SfKv4B0dhVJMWRu6vuzFbMF7WrtnoLRA3apB+r5yGO1Ndp65bBlw6rCwa3Lhv5/Wyf147vuk227tvGU3wzdv+sV4ZRXKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GazJTYZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GazJTYZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9E2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791145833;
	bh=LMDBE0KA0hRq3vDV69CH8Jv3o6RIL4JfgI40WUorARw=;
	h=To:Subject:From:Date:From;
	b=GazJTYZ0m6+EYpe1bky/LGaAG3+Y1/nUUjLQZroXZsBYamkaA4zPEAFHWEmeltutp
	 dQIpDPDgPkzTe2IKFZnWy0eW8t4M4VvSPGKY+1MaCK9N9C+Dt84c//FWMxlOfQUJZ7
	 Q0aJZGb6wl+hCpECoFsagss5KnqSLWFsicRcNUn/l50/1SRRO4fRNes6BT57cWzKIV
	 LYwTH9FDrNG9WZGUJuD4G2OaB1vQEEpcj80Bmy9Xc/+KHyI7Jq2CoUhy8IrJy3bfin
	 jgv4/RewXHAczcRg40YeBxf35XglfrpgiFg4U7uuaRb2U5CnlQYhfwgtE2c/DF8S1z
	 ViaQpsyUm7E6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0A8CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114583369.24025.2204996116160203551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1abea10f037aeacc375f32330b7903e2b6c8529acc0ba2ec9232933ae40ef05
Date: Sun, 04 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791145833
