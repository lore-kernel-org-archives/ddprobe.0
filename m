Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220BD45DF60
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788445839; cv=none; b=VJ0AgOcDWbA67g+lXLz4DDcDGtXPwOIhkzHPbS4R0ii3sSryv+t4p9mRAMBKpGyktmCeQ4oTbjofy9aIV9L1G+QnBSkHuoU67Gy74/XaKiprJM9ofC2TZvqhyjaa/NlJror5ZNN6dzMKbMftThQac1SXDDx2cmvTK6CTay8xUqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788445839; c=relaxed/simple;
	bh=ghlSiQF4bsTyq6ILlK5Hq7pyoqRILH4c77jdD+pElSY=;
	h=To:Subject:From:Message-Id:Date; b=Gu8WaqWou3S2LbQNZEBrVApbmEKu46nfewGledXeBKbA8+44sL77mEPP+Wy7hXBWpUBGjbW3Yz5Z68kFnhISst9IMYjJ4yVYsakSwOrSAg3w6f+SfnEtJOjq2gLTig/p3je+l3GM0wM83LJznNQlb0vIt1tJPT1+IJCuvDDxu6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRO7e+nU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRO7e+nU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E309BC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788445833;
	bh=ghlSiQF4bsTyq6ILlK5Hq7pyoqRILH4c77jdD+pElSY=;
	h=To:Subject:From:Date:From;
	b=QRO7e+nUU0MxnvlQxcBGtNj0zh7zDuKyfigDDNrjkdsdRB1liav6JaEZxRGVGyd3N
	 xnK4K/GqCSDbyEdY30sXT8YYvJR8R2qxRY666WLipSDUVr8BPgnbmQQdTx7oKsoRk8
	 dLvb04EsKrTPs/6CxQ8NoeBBuqJwKcMfbw2DsdSdeBKtVMn/u4qS9Ew65dfg/2sGF5
	 HvGFL6OqkJ3soDoRVWGx53/zu8B9++hFSdy3UGuYmZSOzZwct7jVvrLWbmrRgaRl81
	 sDL7XlbapxrLapVqG/MAXCVTYPdGdjvrdEhKJz3jQMdXNvV1bWzH1jAXMLOeTN0hff
	 OcH77MZAzzBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8682C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844583374.8590.12185900869406501622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53addbff92c3d7db16836c4f02723afd631b0f2614f90c0f95ec3eb12054699
Date: Thu, 03 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788445833
