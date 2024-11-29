Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3584C44C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732898155; cv=none; b=GpHA1uMIJ3QMhTOC/fm21CJy/kocyTiKYrcR7LfZHXUNzESv9VpKN0pV4Bp03bp06WXFv3ClkvDWH5a9hyYxLHBs00tWN8DERgngTMR3c2wNUaraN+i1dXPvz+bdgc7jlZfoEzAUbL2ON1Np9c+q+VdVZkY8nPIcg4L5q5ylXVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732898155; c=relaxed/simple;
	bh=fmJmp1WHfY5sPsk7DyRvMCMNl24X58dKJi1+nKPgu8k=;
	h=To:Subject:From:Message-Id:Date; b=UWssd5tYAu5kpSbQfyj82BQVnMay7ZW2j2QRTJJlBtKvbx9+f41X1gyG7Vv0m8AppJSTPseuUrjIpE2NGCYKPAgAWLlCcDrIu7pO7Da/MNJFcdCXwQaGut3FHs20NfZU6/zhp5519r4jbRyDbjH7inV/YdPiA3HajfXiGhsxfrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKsZQtRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKsZQtRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C9C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732898154;
	bh=fmJmp1WHfY5sPsk7DyRvMCMNl24X58dKJi1+nKPgu8k=;
	h=To:Subject:From:Date:From;
	b=SKsZQtRdOIQCfR10dfTCl94TmqwsbCP6zQZnCnCsalMhEZ463M2az97WvWXSj/5c/
	 cxTKlo4aFaOY93plrQznvCKBllveB32EOgIBsQhI6c0PnuuuzRihDnzHSpcQi4fjMt
	 PgGc5sgbBz6z0SowxoSOh6giSyapmGNVHtSopK8Jdr0y9F/fNgIVqORezwcMOWkcVq
	 +W93CTgANi+y4uSwwpTIVlfX2S99gNSFp2l6ZbIMujMX9dswJD2BPJQ83X4q7/F9m4
	 GvuvgN/18/P8yXF55yUfEpRrhv51SmqfUnHSRzfEPOSycweYYV55zFHs+fpnPe9M72
	 uaNVMuOC5hXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AAAD729E9
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289815360.7496.11827724611450330256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efc285ec924d5fe21eb47200efc5d84e179b68c37def60a45b00144d7940529
Date: Fri, 29 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732898153
