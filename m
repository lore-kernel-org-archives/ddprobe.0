Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8755F620
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720498583; cv=none; b=bGLBTpn/tcZIzZeOx++jW36HUMGU3GvMUFen0OhcvnYIc1cO+kBztXZChoABU5E8OHhAwJUvcy/d5MNk3QbLqx9eRYsNkYMZQMaVspLKML9KEbN/iNcqQl9wmBA2ddsqRqNlwokMVObAelSvMGex+YlQtYuK32GC7Kb91qmf3pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720498583; c=relaxed/simple;
	bh=RrDYaDw4pnnv3lKX/1EpN0MIisShvEdpAsNZqLhaSPo=;
	h=To:Subject:From:Message-Id:Date; b=bCdA9fUgTB/JxntbzAfo7ANWXSWT6zcwIrSG1ZslXl/WOj93XpDJqhBnxVimyb/xOcsSnONkNnRdl4JKyePqmmYushcWzer3/sakZViXGOl9Ccv2C8hzE9/4onf4PenaNAOgMyABWehTFZafURt9yQjVxwjPArLtnRjrQLGeQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEMmQply; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEMmQply"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ADCC32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720498582;
	bh=RrDYaDw4pnnv3lKX/1EpN0MIisShvEdpAsNZqLhaSPo=;
	h=To:Subject:From:Date:From;
	b=kEMmQplyZaLCMR/cxlrgEYZL8yvufwXgxQnisOmNv1VbMraeYkK15lA3/bInQWMEC
	 zUiIfXXky2bBNBUZF/UPrvoPUbMHjEfWKSyyC3Hw9YOD2f6ZIEFbwlTw9ncphsGISd
	 l0uwzmzkjPbHDFUSzeMJW381P/RW1UJnPD/4qYFB3d9jhjh4mL04x3y1pOaeikurI/
	 ZevFg1Y+mrr5a7tvNcY17XyGJSdE+fsq2mNx4JpXpf60AOyJ8uvZO5eCX7fHFQqZjl
	 BENWFecRQYunAyBiu/Vm0bvLsbasuciM3IH0ICIpbKedQZ3aS2JSVrypbmav+zcVGr
	 V+ib+GM7J6KTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C398DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049858279.31189.197445389957368703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e285624907733ccf361b382f4b23425cd7757da95f55644a70f0917d34adda
Date: Tue, 09 Jul 2024 04:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720498582
