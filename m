Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456C923872D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733823354; cv=none; b=hdFU/js9FALVy8SmIVX/Z0YA1c0MhwqHFe4S7JElFSDeuyB22ri63ePfHcVwdgAu42p/oNnFCggYhUoyu0eqynqzhQ7+ccGU4HGRHHUZhWmDETOoVZXhd2suD0HnyLJT0czRoXa7mmCW7Yh08yHUrib23bCDdoXLgcYoFqfwgC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733823354; c=relaxed/simple;
	bh=fFqzx2q0LyV2qjlbHo3RGOeAeOG4WXwERoNu4ZTxmDM=;
	h=To:Subject:From:Message-Id:Date; b=fXTNrd9sKqIa1tkD6jSKmPjcJk40YY5kJmUvv2Je2PZJxzQr+2tFqGcMPdJfumin3facz+Um0I6K0LXjfS/k9n50nWTpXUXgVPLkRNqYqncKujMgfucDC2xetbvn6e/8DoDw6JHlHHdZMgeqDupruVm5NozXS6azFpqDkuoeD7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRHIobhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRHIobhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE821C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733823353;
	bh=fFqzx2q0LyV2qjlbHo3RGOeAeOG4WXwERoNu4ZTxmDM=;
	h=To:Subject:From:Date:From;
	b=PRHIobhjLNx44M30ZEWFndTPsKhcMqR+tXRXVfZ4YNDqBXhO+l9sFOJ44WqknGAHc
	 R/cmLbVFfpT+G2P0pbfRyYJijuuZWh175zIqjEyUQL3wXGhKBMNlAoXc96dJeekjjs
	 Zy+sS1hL9wQ8AqUJDGz274SDvFxopAm2J4DcfjRJgMHIMbJoxLVOQ6Rss2oTSTRmUx
	 yYcDlgsBcXtvDe5HbNDK2HyuavE2zjAGu2BQMcJ+On+rdX/+6j58L7lexvXCRhGoNN
	 rbMRkKiyoyImrp3AhzoN0mAX1k9XUzB+WiSnc7VnchsSnhwNRMm/7foGpGLzHnItBV
	 BLsVZX2X07MpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE9DE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382335362.8284.13438690622757951751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce9dab32aa9a706e5fa554a647b3be101290f9c321cf5d71ed2dbdfc537c247
Date: Tue, 10 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733823353
