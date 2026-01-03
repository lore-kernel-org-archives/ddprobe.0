Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC51255F28
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767460434; cv=none; b=a7NOOypoSggFIaVGAtMqCkQnycOov30pLWUuKTkEVsUog+9vZBcuPTr+nvrppf+wXz2l202knj8vgfKRVHt7TfTM69VZYw1LJ9S6pHSn0QFoo6mXxQGYromaHYuxITjFxjOY3GNSR8YUhSKBX25uzK2k1Az1c/7L8/2HsGGfc3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767460434; c=relaxed/simple;
	bh=SIJOSNetQejqq3ovC9nSpNe6JfTpAluoAvWRBYqdWkI=;
	h=To:Subject:From:Message-Id:Date; b=DW1YyKbVoqfFSPggQ50IWvLKZ9wp18oxNc1zjo/gc7qsmIfq7+635NmATCWm3qTlscbXJ357O39+2FcXobXdmIAdLX3hKJo7uDBc7x6X5Ovecq4Bu1LYJFi2Vy2UERxyNpNdLT5m0cJkkOpgQECHdwP7a+ADzvFwog/pw7iZTjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq8BjcnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq8BjcnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BEC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767460433;
	bh=SIJOSNetQejqq3ovC9nSpNe6JfTpAluoAvWRBYqdWkI=;
	h=To:Subject:From:Date:From;
	b=Hq8BjcnV9uSVQpdqqN4gMpz4WqRKzGvpyI3PW/zzuPg9IlSNxkpKriWv8PpNZdVml
	 9VSTJ2kiD8tQVlkch4hvs6k5fPKxaKHt9+qyMEg3xXW+fXXRSnec8xQgPBvICQLQUM
	 dcLmsh6vRniM05Lk9jCgMZFK0k0vVzfHyfmTpp43tNwkyAOqv+/r163pgN8gx3QJlo
	 E54z7jmoUoINEN1kBk9aL7EfmuhQ2KyKvWZwFnhDIAn+jsGFKWSCT88jw3B6BCYYxq
	 t8RHVd6KU5UU7JX2SfcG0YlIOmBaB2SRg9Pk+cQXlcoxSU1aJsF9B9lTmmR5oK+cNj
	 PPYafATBnIksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95857FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746043358.18960.5552878017163099881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a7b5604b95ea14ba484945f62bee899a310a9d030204e68623f9c9632033fb
Date: Sat, 03 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767460433
