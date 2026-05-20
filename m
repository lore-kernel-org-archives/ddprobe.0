Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423A92D0602
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779257434; cv=none; b=CL9AnTSAscrTgvc/+8tbZ9CgAxcMJKzEItK8OmFKbeh7wZYYeRRicLwKpqPcyx3chFR3oIVt0gC2OhOZAWSTfnqxAW2/MkkYrf7ma4LqAW8dR5eMJ82p/b+6m/RdqaiIF92r160XWAx9U1I3qk4uiYwzQosFU55XI76CR6P8amM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779257434; c=relaxed/simple;
	bh=NzD5BrpI82B4fJeUz6z0kTHq00c2ZiBycGkSkNvkJ1c=;
	h=To:Subject:From:Message-Id:Date; b=mQsLPohwsFGaAOCR07IrCmIQ7U9QSI/cAr3D7gvhVPFO0fNFgYf5w4LcHywmt+WoozThjj72/y/gGR+F8HuhQ4POg86v7qVEvgfBkLz56LbvGe0n53Po3EjGuT9fn5kh3jzC6ixRk+Xr3pcUgfo1JRtiaKOKou9THna1rRGLbz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Crk/L41G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Crk/L41G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EC6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779257433;
	bh=NzD5BrpI82B4fJeUz6z0kTHq00c2ZiBycGkSkNvkJ1c=;
	h=To:Subject:From:Date:From;
	b=Crk/L41Gky/cz9FCbaoi32uTxUchLpyjvSnpjGiZxrXemQ3tdWPVhukc3qiFzhZAL
	 mMRDhMKzdezgrwajb5Vd0eN2xzaFrOcdJDzYTFZGu4TTRGMFYRe+77DFiiDPaTnvlX
	 JtI3s9BtA4a0Pm6Y4VUPjDVRNLuowMRbIhWIy7a5i3Et/SDMJVAT6qWqJxurDM/iwq
	 Wq4Zd9Akrku33xN59NH7xGdQTTAT3bznooS8/n5zqky7/E+abSFsNqKgUvFm9b+fRr
	 aoJwFD5LaFWQ28AcQOzDENF9FKikXc6ozHS7FVmZN2PDLAnz4RaF3yn6BUQ0Qme1F8
	 sHD9q+ZhEnLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD678CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925743368.3564.2423759443418686858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43675140600fcc02fa8e3cf9e0db63f860b669f2a67b998d3f05ffb2ded55b50
Date: Wed, 20 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779257433
