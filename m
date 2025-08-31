Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5E61F416A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756651194; cv=none; b=G+Qi4uqAOqYl6jD4BMFxWlqMDEeC+BhNgnc4cs8lJqRMzhrk3gW2YAt+THCaMZ0DJHZZ9yCrmpJE7XVErUZT2Om6jiSMS6SNlDA+4dHoMPB8Vj0cV50Gbw4ooiH89636pymLANNB0Ma0jrxP+YSvr7rd21f6hXFSABHfMKqjK9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756651194; c=relaxed/simple;
	bh=iw4BKJ6USWdnF6MIh8agWcK2qyK35VOk40xcHuX77A0=;
	h=To:Subject:From:Message-Id:Date; b=sXHJLAuJw+DdSODwVxDxivkstvkH9i7wzD9u6D//w08ZpSA5X/8W96qVmVqknY7kTA8ZGJ0YHi31DIDAFymBJU6ujAJ9Xr/QQu3Y+tEV+zrzW+NTrCJJOzEFLzJw36nxOBSlel5xCRuaX9szAe0BbCDNCy++X4n8h2uKrmwMffI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d81UhECA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d81UhECA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593BC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756651193;
	bh=iw4BKJ6USWdnF6MIh8agWcK2qyK35VOk40xcHuX77A0=;
	h=To:Subject:From:Date:From;
	b=d81UhECAN1+pzQQKa0SS8aae2afOo3wz00sgEpkpxcZRo4pXDPtlMZ1688BGAbDjT
	 poJX/wiZ2c3+cRaOmBUvTVJ0vGT3BK+NlL3RZMBN7BhXCE3hegzLE3GcWffnoW062f
	 UL5Etm3Nu3G2xpHYU5D30d2cI3RtS9jxZB0ygReLoHSyG2qCNd9ewjeyqjmAyxYxuI
	 Vc6DEV31es710xzowV9VBtdHdw9Av40oTsIGkzIJpfj4yxz+GvWdXZ6umuOYztnK9R
	 MWI8psj5VzSDLpzKdZkf6rHQNKVVEwa9oUUfxLoDnLaOtOTS4tVEYhhNdz8CFnFhBH
	 QnosN7VG63BrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135BCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665119357.29440.16740070536879695658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52692d55045784804273c69978e9b6a74a14cecce2730726241c360fbadd628
Date: Sun, 31 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756651193
