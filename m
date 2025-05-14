Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AB214A0BC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747190394; cv=none; b=O+iYKvN9wPgwSySZXWQTM9r4opfZyTk7voC2paq4HSrwDsiZ47Bzve+VWYPDulmHD/CL/cosqVNToZ91gFFets/y5wUVINu4gmzWO6Nhdx7x7UADjCFbRKymN7GOlg/hKE96IU/XvwArTUuZDbl1AhMpUQHHTrjkzXZAFJo+qwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747190394; c=relaxed/simple;
	bh=xZjm5HuZN7yIn/V004ntmnpsZ+Tp7HHNF5qRBuHkmzw=;
	h=To:Subject:From:Message-Id:Date; b=kMmb52h6sIegLai4Ut1sVwJiifUDvVCBkIBwuc9dU52cJwnBcaWi68HOiCORyhuC5Y3LUPWYH5PrmmjoXqJnDqVtKJCEWG7mBiGJHQlPapReh4uuJlYAg9ZoIa9vlZZZ+cYKNlsxrcTvjIl/tunFSN3/nkodzYZ0UMvW49KjlDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DppXSI/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DppXSI/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9349C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747190393;
	bh=xZjm5HuZN7yIn/V004ntmnpsZ+Tp7HHNF5qRBuHkmzw=;
	h=To:Subject:From:Date:From;
	b=DppXSI/uaqi8IoWNC/wsX73Mpia/vZ9qJ8T7q5mDhiaxw2S+NR4IQ4qI8c9vQhRmF
	 imNOrO8v+mTeEoqIYXamREpJF/xBKxPaVYk6r6rcaN84+59QH2Wm8ievmaXECYcdA7
	 imRpPweosJ/jYueb+XIUSCCimTBThWGblTml7aCyN+NU4hxoGxl0EwIyC4hzPG5mk8
	 ek0VGDQRLCctA2Zj7Msh02qVX/uiZTh373P2nEpkamy9Hl2GTn+ifFP1yD/vDN9lRT
	 gxzsBkayNOCmJlubFCu8tekyo7eu0n3FChseWLzxnXGgV+MGSDaDIwZ9En1K0pwGtQ
	 kEAAWPKor75/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965DDC3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719039360.23527.11464506175518398640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9edd2f3914fa4630259bc76a5d8f54f224690a0b173d9b9ba6b59734b2b827c
Date: Wed, 14 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747190393
