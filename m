Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B8F37B007
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789554034; cv=none; b=r+BZYqR962wsPchgBo/Xy3LjeSGxUG+Smh5dRApjdsVDHH5vrsoyllCCK48Vu4uImeujohnnHcBO0rtlLys5ovOKVy7iYgiKZRdIoAUaMHQv0TAgvjasNv0WxP6H0XeBwHnSUKpy4+USLvj0a5UXOEhcQlIcdMHouoOYSCuKlTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789554034; c=relaxed/simple;
	bh=NoO2iSRpDFDqs1mj0nY8qObWfVIDK8HRmdHPFQ5Ypt0=;
	h=To:Subject:From:Message-Id:Date; b=VHF3YFOq8YJz291g5xyRr/86Q/lAQBkQWiqOHGuFabdSF85wyIPXmG4KcU2iaGBrGElRbgQZDtq6dyL4TRG8wzQNm6iRcgmCN/nT2PoMTXMm1WsRpQl0nqps3ddyQjMiIzgeVLc0+wmfHmmT8/po4QKuLUs3mtchvxNuGE1A+Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFpljeSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFpljeSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40A7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789554033;
	bh=NoO2iSRpDFDqs1mj0nY8qObWfVIDK8HRmdHPFQ5Ypt0=;
	h=To:Subject:From:Date:From;
	b=HFpljeSPpMfXfA7PFXeLbwtwBzUe9sSEgeUd0UKkrFj42EFxAFv40FcWOuGk7aRir
	 6mAvWPbTj6IkaAWGKZ3lzdwv38sSKUWF2BqCjUj+SmE4cIdwHXqsiLUQoKQxXpzhQq
	 n+GKjBqtoPDyjQvj0Yjx4+7/TEZRdav50t2uY13X6m5W3TjKviodlPViEoDtZwLaIU
	 xSR/EgpDuP9m1IJLDtFbXuKei6Tsy3JHZ6rNVdpMd+gt/TfOSff2yKg9I0hcJIEZyw
	 RbpWAdfu8nmaXlU6oXSgsqqRxVQWktYK3S0oTZ0uZa0cx3vj1ZiVhEnJ8+49SkMlsW
	 ClOK+gCH7R/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09EEC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955403371.9985.2059107671238070846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d26406214d8b5ebf91a4a93feeb19afc78c1259ca313ba6b9460c6c22daab1
Date: Wed, 16 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789554033
