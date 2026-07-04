Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ABB2F39C2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783191514; cv=none; b=V2BMXXojsz5I8VQHG/qMhxW+BcVsYYBcmaL7hHNAQTRlM5T1/NamADnVIoAWmnFP5WNf7TzOglGdp8DWK6FccXu2rLbENmtFZGQs9odU7Ko1FWH83hWIEWJ84fCeahQHl/xtfRmUXbnwEB1DCZVnUF9rxy43I57mpkl2dA+CaW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783191514; c=relaxed/simple;
	bh=CCL/fLoiC8GdMBXtDiFAAR/7zgbXxYnGUx2yKczfmaU=;
	h=To:Subject:From:Message-Id:Date; b=SgrhLv2fAwf3W9Vx0GEfZk/SBM8U4quvfYbTy2dHTMVJcTmZYfUtZJDrzv2yUb4rk+wIiJGeEAuyAH5uKzimIpcTQwXTF0YZ5OG+C4y5iYyT0oR7NGES3PGTMR0FfPweiJqW+J4i7+sA5WmxzuyGXLWxbdJiwDJPI29DAIyRNmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwnIWHP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwnIWHP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FDEC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783191513;
	bh=CCL/fLoiC8GdMBXtDiFAAR/7zgbXxYnGUx2yKczfmaU=;
	h=To:Subject:From:Date:From;
	b=TwnIWHP/Wa17ZfgNHIa/ujJBrDuW6P4a/GBoWfbyFlMW246Y6tOXW+IWqxxy/6IXD
	 46TF/L8emY/ZDk+BWHTd+llNrFElOn/RIkGXhghpuB7r2HoxoHdDnpP6pzjhtGfWNS
	 X0eQqVnMbRig77kD2YWMrjeVoBNsGXN+sKwiVcag4ON8oKROsunhSez1t7o836trDs
	 jW/HzKirOzwIJ6h3Ur79MqPDhi2DIfNXVnH5kGkkWy8Q5gTfH3Le3iDyK/CKlEZU5i
	 pcwu31YIdb/rs7hUu8oAoL2WMv0RHmCC8AnpZebQk1Mvl8A5fmXiAein8gbCH86w2w
	 BpCtksZfcwHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE413C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319151368.31650.10088013663239511678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a496bef16e039ed17348817eb078d8a07f71fd0e9ed88e833534a77916815e
Date: Sat, 04 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783191513
