Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF9314B79
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771109094; cv=none; b=BiB34PfIK3K8vT5W8lqW6Uzd0xv57KAOCLPAUvz6eNixFUAHpQGKkusxMoEKzkhQ2siemAmqnlRm/cu2V9/m0qjCPbxHQ7Vb+Pz0HZY4WSCT5aa9xxohi1YCS0oN1NonSnTYr7olCU9zPaJvfEFPCGAtVrGI0S0ppMr0fSUxaNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771109094; c=relaxed/simple;
	bh=H8xL8k1t6S+3IwpwwBiDN1nEigHb8EHSzDhELeI246Q=;
	h=To:Subject:From:Message-Id:Date; b=FdBd2GVFkT1nk7YcgIfRiFaGNxYxlVUZXpuhirz4X//eZnF/zH5YBVLcIsOzfql4W1ZGUodO+INL5inGZWMnSFQV+050+dMz5caXjMsfzt9tLb5JqIAkYAgYgQckftop2tA/5erxtsRxIGlvrFfPMcdJZcQiY6hpnzQTGVyL17Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh+zbcMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh+zbcMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB850C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771109093;
	bh=H8xL8k1t6S+3IwpwwBiDN1nEigHb8EHSzDhELeI246Q=;
	h=To:Subject:From:Date:From;
	b=mh+zbcMfuHajIcCprXUrUzRTbUu+e/S5y/YE5nhKVyK2eyRhfNbOFhrcLEpxllakE
	 Ee3SCsE1kCxe9HYqmciLFIxHrpGl1siUzjt51L9tZg88363jjzuC1Ch+/c4G7uu54h
	 LTuc8V1ZvzpgWhaAhMwaUbzpweEpZn/sgBM31i6iZNfvN0W0/8fyhCru5Ti+ND4urp
	 DpW1AycCxmqruwNwy/gTrKg9uZnLorWaM1/TgszeLGI6pae49z4HxUUBkHt+WCOeL4
	 2sPvTL/bR8acBSfBeZFCHK17JEvzm2qHLci6PPn97a3Anm3jdyhMoukIynXKa5Pten
	 P63ua8JEtnjzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F1BEF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110909364.4304.5395390502171162043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9cb2b64fb1b61f6b7a98f4d329c757ae299c0ad75481783d36d03541f3d78e
Date: Sat, 14 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771109093
