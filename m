Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494482F1FE3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779304234; cv=none; b=vABFYloILXYRk+LWjTL4UbnP/JvoHMZt7On6jVRK6qOmTiNTvvcSeWqRhMeKWp7PVtEqJadsoUR7xOIdMg0mjIoS1k8p4dhekJRpgE2sHTK+dgwplfk4zT4XJmcrIVVC++PuUpFALDA0UDHs3YvEI61HiDYD03jJ+p5oIqXN18g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779304234; c=relaxed/simple;
	bh=p2jYB+JreIoyNdfs4yPyvk0T9i7gblxo9dBsVx7em3I=;
	h=To:Subject:From:Message-Id:Date; b=N2MfMh0JA6+lmBoo9jCPm/SsHN3zGWEbt5XBqrreDcOz6kRRqFC1dfVrSfp/nyhzmG57Po6b7DSiOTYsOsgRdLSpLntcrg2Avx8KHlYamCerGuSid/cWs05SzrX8y6aXZfpO7iqvUzngt8Ukkxhe0A9ruwFsyUmlshAL8yNWarA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRvlAJnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRvlAJnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47B2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779304233;
	bh=p2jYB+JreIoyNdfs4yPyvk0T9i7gblxo9dBsVx7em3I=;
	h=To:Subject:From:Date:From;
	b=cRvlAJnmmrdVraLF/W33njRShMTeBxbu9IUuW0WUQMKb0p43wQ2GL/UP7Rbs5Qfbt
	 7a3i/4liqTxs+mJfnc2oDHZdNjHLfu3LMSyACJy58VuJTO0z4/Zvl7ZhqIuseunSCw
	 XfIuf1XmAmWSvf+lXQx5KNDRK5zCZRWXdIm0PzoJCbvIUyILs7lMztQ0HJQ/Z8X1DX
	 /GJ6pc1aV47cIbbCP5znhFvMESRIYWTQZtTo7yFgir96qZgidfWHEQ6GJ0R+EWhvnt
	 dU0YGgtQrMBwyLCmouF0TS4VSCp1L+2t//jkVFmUMGHB5zdNavKM5W3ZvN/3rVCI1o
	 gf3xrthujDZLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84DDCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930423371.6564.473855523835197416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f17797b2742d4075faf33162a6d6a4b9385cca350b53dcdec5b66cad8e48a9d
Date: Wed, 20 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779304233
