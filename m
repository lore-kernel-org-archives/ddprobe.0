Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AF3313E03
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791937834; cv=none; b=FY/+3CdBUA69ijVikHet+lq7kPUcBmJ/vWZDpgQ7vyLrqBf0Oa2ElEkKWlfAqBag12sNVN84R46jlXwjrl6Qqj42KDzg1ypipQrTjfrjl2Q+r81CdfbGrjZ2YRBjgxCv6oGeH5rzL2K32hF3ayqtN5UR1E6yw9KLR7cd2dCY9To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791937834; c=relaxed/simple;
	bh=mwixJmHFY/exDftFM2bm7Kh4XKN7lDksPSxcVS7DxZg=;
	h=To:Subject:From:Message-Id:Date; b=GoCNfwgcuPRzHPZSsv7yqk+kZahoW0Ey0v7j+o5HHU82/iMJPvUQ/yjY3ZH8+F7S7egxxMX/mdOStvylT44DTm11oQ40clclIEOyjJLCjNrVeYtLH4be5fENOehzBc14Iu8Q+mM9l0cL7+K7ju1FmRc0E2DfWMTDloC1T2tfiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG7oZuHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG7oZuHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3538C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791937833;
	bh=mwixJmHFY/exDftFM2bm7Kh4XKN7lDksPSxcVS7DxZg=;
	h=To:Subject:From:Date:From;
	b=HG7oZuHg2nIt//rNnX9S1lxhBJSPsPk4CNZ74wbaUoOFo7QBW5wdzBxbWkNwjDBKB
	 QaxAZ/vAHHN7kxIqcs6S9ypa7wK+9+eERqZ3lNTP5xvpx3WNFhzwzmMTw1Y86WEqae
	 PJ++y1IdiNIYCWcgbwrhpc2b7NDjElE/kcer94zc/eZL3R36E2jG7tMiGzaymTculI
	 fYNJn+4iKiOygWs3cB5aR40maGxtg3byWdRVCrCX+8iZWeXIyKUDCQK+zYm1aryMqf
	 /FxENeGYvL10lUY/ceoqEegWavRsWx2k0lOLzdiUlbVhALKeoSuM7nvnW3lSlLSCgz
	 BPTgC2KVHHBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E1CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193783370.18706.16175856029026762187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0710f77b664b90c91d216122eedd893397450903c4f0b2e47dbecd4d32e4c4
Date: Wed, 14 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791937833
