Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45905F4F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790035834; cv=none; b=PFY2tKpTIu9SlVtluU0pIzh98Pjf6NSuTd5KaYyLdPURuJ5PoGxDcErjZAuOr/TMIHqKAnvorLilZ6tqDLAqiHOPpw3lLoS9QHHNrG1GLFqsphMBL2naOcMPOzkF6NZFW0hXJo+tolfz3u+bkaEEiuVk77x+0pBzb77X4G05jcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790035834; c=relaxed/simple;
	bh=+2WgwOoqCp+Ri8/222FeNCaCT1eZv+9/Z9Xk63YGAAA=;
	h=To:Subject:From:Message-Id:Date; b=rSVejb/90C5s04urUIV5DU4hFP73+wqPMcsdQKuqEI33b1RpZjBuCesoFLA9OkaKP1/OPa8fhd4I711kUeBw9XMDoKIr4eDG4TnuDmsiTXDEw0mu2hZFl8LG5tubDCo6k0oVmfVgRvUkYLJL6jt4ZdElmKJMd0Pb8Eue0RJ0P+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUGLTVZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUGLTVZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790035833;
	bh=+2WgwOoqCp+Ri8/222FeNCaCT1eZv+9/Z9Xk63YGAAA=;
	h=To:Subject:From:Date:From;
	b=KUGLTVZYid7pPTEnTmcXYiwnY5pBHSYNKJxQH+zw6TZX66FDShpiYHWHAJZQ40zCt
	 +3ChH0sOtfGutRt3cGMK341zF8KcIppW3aHcrMQ4vDXFcfRbX/tO6/bHB+4eaHhJm0
	 mn8LOxVIDEwBC9uhM031OCXIgUWJMbJ+bhV2wjxLEvpVb4sFzrJ6rglSeCfdayaWdU
	 wc3xb6emEIkQK/wxtl5TYVucxZ6qIaAS93EQr4rDQI/YEa1NFKsCQciqsLwOQnTMVa
	 qk3zadLZmKWCN/z6+iRuPsfx2nFMWa5VtY8HQBa4P/lBfTFj4IEg5ri+zr22+9/1f8
	 73iO3c1KVvMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB839C982ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003583369.15452.5205294856355914955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c67f976cd4d48c1950f3a09e8b23abf10703ba3477fd46680a08157c3fc51b6
Date: Tue, 22 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790035833
