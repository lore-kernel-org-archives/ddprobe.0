Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074DC3563CD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769022834; cv=none; b=BOF/aAaKfSRIUHdq1NmXlhkvh9eNjBrwbHlO67v3N40hy70dQMTOYgB9Ukif/qPe1tFBIxs6CbDCGVzVWleLAqNE9sj/bbsyDWH26N6HIo+2mQYP+T0VK8LzbZrXD1U7XTlzfShS6IUaCJWtJ5KL03rqh48IYyoq1ERsUp++sPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769022834; c=relaxed/simple;
	bh=WsStTD0jTaTEjSHJoDELntC/YMhhc3ME5j73HuiQ5sk=;
	h=To:Subject:From:Message-Id:Date; b=FBAizARbk0WhnSOKFrL1AZ8e298JVKk4543xDdMSa+yyuGw/2jQIZ1DyMbnbaY280Evot6xsyM0/BGV9wdjvQyUC/DmyNBEU2NS7A+nEDiVw4ta6c9ytyReg3jRI3MEqmF+7krKJZPZhGIlW2JlxbziH5SzcpqzGLMyJzv3MP4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc2Hu+UE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc2Hu+UE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769022833;
	bh=WsStTD0jTaTEjSHJoDELntC/YMhhc3ME5j73HuiQ5sk=;
	h=To:Subject:From:Date:From;
	b=Tc2Hu+UESZVjP2QpTp1RuYyDjT7i3d30OrNpNDokrXyR7F9lZTWmDIR0Gw+rQYv+7
	 gE11l062oE5kaZG/55dT4xRFWdVi6+0fNVsYKhOnTbEoy4D1E4HGoqolsybkIPYLHh
	 /Kvxk2za5mWK0C93UvWWbUEmb7pXAncyv37f0Gz9HLEQZE3W46SbADU/pbOD33WX81
	 0k17+woKIKtBnczrRBckb5qVJrubTL6H2YV1AYoYsFOD0cf86jUDoojMJkelmY8vTm
	 qmaQYMlQcfBaosy/LFMYUAAVY8LctLXunDQgHhVrH3Ze2uvkWoIxwFJujU7BSvG/lY
	 chav5sEDi+gOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024CC44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902283358.25283.13163400045060348340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7e51417ff226614bb50068bbeab6d38238f26abc86b3545a053a36b03cba8a
Date: Wed, 21 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769022833
