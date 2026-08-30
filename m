Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541902BFC8F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788088834; cv=none; b=eBUzmVTFAd9FjHTGk5PVke8ydd9ZHg+VU6XqAP5Rx9cfjhWjqorRj5xoeONR2LnaQFXpT0yhvYzrMP/o7l0DOSbxzYCviPPEMkK8oofUk94oQCIFb2Cad+09Rlcd84QLy+liNm7BEijqBMFGUd9LMVDzZlFnC9LfqLXAm3bkwqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788088834; c=relaxed/simple;
	bh=fURblzQ4imf1smLz8NLnerxaCQ21ZF1xsAaDKdu6cIE=;
	h=To:Subject:From:Message-Id:Date; b=CDB1W6e3ATAoV17ZvHKbdTkupb4T8miZtpvGCvLkdEntUY3xWI/y/zV/FPopaQYLYIbC0l21x2kZ/NVmrAvDOGstlVDe3+QDtIIeSX1eKs1s9oNq5tcsidvtkAUPVTQqjZJo6y8FjWo3VWKtfoV/Tu8johoMDxtUJfNcycVEt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV7DSTqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV7DSTqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EA1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788088833;
	bh=fURblzQ4imf1smLz8NLnerxaCQ21ZF1xsAaDKdu6cIE=;
	h=To:Subject:From:Date:From;
	b=tV7DSTqqUY/jo/wqc5Sy22Q3z8GdrEs9sH/lFB7kfqO5otuw3i5/TiP+GT1Vb706L
	 EzR2XM3sLLOjrjO/873AgW6QKRSkBb/PzQeIYNFy46RzJXlkVLCH23ZeqgdQAXIS65
	 spBzwRflbHfdlqZYG1ajJ6ClmD0zZM7F03vP9Vni2XFgB0wE8vJzlGUVD/cWnzCMN9
	 lebWZRwXgjy/mAcgYLHeubUGq1P1Y6gQ7wPd3k8PV3mltouaeVennDughKO6P14Hc/
	 urpFB9Beoyha6zdeM+V3CJqB0ir8NuOHteOb4IhA+uy1BsOODGXWUw0aJBcLXItjyu
	 L7H9wnKROfFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1163C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808883369.24609.1305182462320569907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeba4e23c9f1f5abc65a1175df4e166334ea144ee38ab9194b217a4f54a16e66
Date: Sun, 30 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788088833
