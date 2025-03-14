Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7991F1927
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741946934; cv=none; b=RuiK7B+IQeRvgPwpbV/NT4Dxbltciqa41zWH0mox44QgOrzAkEqeoSYP6fnzFe/De6ajj54kAsjD6TDn3HXrWMK5P/5CjCt00J1Iv9iIpvJK2zkyTl3tGWkDy1rDPCJgK7tCgzIt/EkcrG0Zy3pTgTpzun+UNr5HTO5AZtsBRVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741946934; c=relaxed/simple;
	bh=W2T/gvbactFoftIxE+rFtW6lwzpidFNlQ+u7HKG/C18=;
	h=To:Subject:From:Message-Id:Date; b=YQdvthC7oRPyvHOHgI9XZDdBK5JQWbHI371eTDHy/y1BZGo6QZmo47Z9Ebp8V15jeCZ47uaREob7rQ9+hd78SseTF+C8enKxs3SBzfCLaSEvUPy3+bcJw1aIW1ObfioRPjCn1dZVpc2NTOvvLy307oo8wXCruh+rQUQ1dw/gfYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StnL8EWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StnL8EWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B49C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741946933;
	bh=W2T/gvbactFoftIxE+rFtW6lwzpidFNlQ+u7HKG/C18=;
	h=To:Subject:From:Date:From;
	b=StnL8EWIj0ObzTw1Iu1cVsFw+YghE82UhopC5lAk2TTgEQYwyOceUQrTHBSuwRFpf
	 9PUoo9TCuF1FnXf1yfAS1caM0/PBQ8/K9NTvEd+Dsy7I63UUi3TGPrO7iFBm1T4M6u
	 38xeEk9/v5u2ELec/ULgbVZBcFe5VKPV+fd4KIoqBeyqOHJzcMnq4oQU0ojmqCA1/L
	 MYKivnoZM6Xl1Icn/qjEmmk8YX64upHvdVrR5wKWr4hpmcOA4zgt+O6gPYT5KTcWXM
	 glN5qnHQUpIRB3CPoj3UpTIz8R1jHihTfkM19VWzWwB30lmrixrSRQHRJJpZ1EKvmM
	 RqygM2v2Mviog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D2CC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194693361.22315.12535068051038155853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3977ff8e906861750747c0977e5d28a1e0a24db0215ac54a4ce9b91cfcc5ea5d
Date: Fri, 14 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741946933
