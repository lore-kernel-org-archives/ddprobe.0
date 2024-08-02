Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6781ABEAC
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722639354; cv=none; b=KVRWFSp+W63I1km5MtixRztiBvWrZL7VTXJA46DeBlH2TRtEzOWApowbPyHvqmJtWuniAfABF5+b/AywK+/pwEsbSPWRu/u+vHSKR9OcEP9wOVls2fNb5mQqe4R9PsTpe44Rhk1oozXaLHNOAIfXYio1YpfESgIuxhouMpakhz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722639354; c=relaxed/simple;
	bh=on7IiSUV8HDz43VEO/5F0xW8gtHFoRqP28Riwl/XHm4=;
	h=To:Subject:From:Message-Id:Date; b=cBVIcSW18efO/Wgp/QyitrPr24YZGkC8UGcBY6YG6H+t77LfBVqUN71jmiynKb34hm0cqoyW9igVeVwCvxor2IQJCDR0oZkeRFDClAyavXYK/R2PQ4dbZ6mI1Vde67nFO3ocmbgAy+cwM77FLJ4+PYZRMYtJAmvzicQO8pwcIdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ6MWz/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ6MWz/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57F8C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722639353;
	bh=on7IiSUV8HDz43VEO/5F0xW8gtHFoRqP28Riwl/XHm4=;
	h=To:Subject:From:Date:From;
	b=YQ6MWz/qmMDLXxBEMOA2raNkXg2UVJpDfcSUCxqNBK1mT1AB/ATkn8YQENuL54fZI
	 jwzBl6Jy/M0qAYXQB6DaxJCGxqj/YlwEqMtU9wBwIN3dUIjV2m6DanVwZJWOzS2cc7
	 OIWd4jPzI4pxVFYKrk/06RqdTu1oPmQH99sYijfWQbonDQ2hnTTAhvpvQy+AHvxoZ9
	 6e63B0nHzlpoXkclNaXFJzW8UdNJTUqheup6B5WOQV3Nwk82vfiVomfLMPVZVEYxBi
	 uAEkFCPvDWYMmTtiW3LY3D3XfoteJCsAPdlYCMf9B13+N/BWr/GN3c3noH0HGCeQSd
	 Wlf+6Ybg0mxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E0FC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263935363.9054.2776304588101332897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6ee49e612024c036b791f17820bcaf219968df4948653f7c8df0c41f897c06
Date: Fri, 02 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722639353
