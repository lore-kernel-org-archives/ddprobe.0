Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2D818EB0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779754954; cv=none; b=kQUAt2oHWwtehIcngppV9bHj1bM+0vCKDRacadyFWV/Czdca1WcessacEJdenJu99rFho6/kQ4oJRwF0XXGYr2CGt0EMss5M+QSe6t7SRKAQIrAGETr97XoL9LYDxY2wZNidE7QUDk4qNQCmJ9K93KMy6PvpjT94Ug9BQWSRhPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779754954; c=relaxed/simple;
	bh=CZlIAfgwx8oFTiRFyOacbqynsnTAhkRb5q3jj97R60k=;
	h=To:Subject:From:Message-Id:Date; b=tMqpvQECgl/uDNNmfQ2seYEptNCEKl8cw2NbpCRic4f6hF+6fyGxvfK4mYV7TzkWcfkvjdxepblf8lYh+F4mH0tK5ql3jJ42/ndBu8vN7GuUWN+X/12tWdbuP4LttsxbRKxLo2v3D6FqjoWRKVkTV+xPnddrcxoS6ktNhykYodM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTLKk5kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTLKk5kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88B0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779754953;
	bh=CZlIAfgwx8oFTiRFyOacbqynsnTAhkRb5q3jj97R60k=;
	h=To:Subject:From:Date:From;
	b=eTLKk5kvyWCxlQzRwlLisXybLSuO/ug/2a5kLkE7vHWzdUpr0+nagniY+to0vUdG0
	 htbmeFUSN+FlyFy+cSxJK78hb/dENmqau9rVO731WgsESvZ7E+cGvmF2sn5hOF0YOQ
	 ijeW96w+iQs1WjMc049vwPUVQDvl+KQRzFcqPalj8DW66uETHpz7lF+jXjTOkJUlf7
	 tlG3RqFp5/yFFX1/SJiAeabE4Gh36ayDk88nC1h2eteyyIj8KS35hAJOcMuLg340tC
	 /t09MOUEJq1e9z9Ls02kXbdj/r8sQx6bXT9wM+9Ja1zljpNeOHRgaxFR/w/0Z85Yp+
	 GXwi3uge7guUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEC8CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975495368.26133.11343685154537373601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99dc4cbcb7329cc588270520610a24b570befb0245f4e7efbad0b902191f37e
Date: Tue, 26 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779754953
