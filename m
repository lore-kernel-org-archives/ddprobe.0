Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6953C0C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722078954; cv=none; b=Ts0BdQGTT5y3kMWxNvvYk5RZz+1D0B0JWJyLA0i7V9Y56dsNCycOAPUqWAjlR4P2wmGmhjbsDlOaX6C4TnYCU4qH3PFs00mfiVracJx2EK5Osuff10hLGy88PI6EHII3LSNZE1AyypnMgruLmwBGKoQtSclUzWSSfiCN2A2oHUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722078954; c=relaxed/simple;
	bh=MHdfi+eqQlhA3srNjH0JQ23F5xz8au5+WlXv1TNj5fs=;
	h=To:Subject:From:Message-Id:Date; b=Yhgc+1D4aaw0H+HlCPBMxSZc68hiX5jUXiBPJKIu0a78kLaIhC1UFC02qRn3OaxQTpVsl7pUVKO95X6s64Yaq+hB1+c1K0x68Zx1DLPa8hKlRuR9GA17PdU0nwocggBbVdW7MCf8fGV/XQqGZSszIk4JwvBX6i3/vWZ4uW4L3E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxBHYdhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxBHYdhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE86C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722078953;
	bh=MHdfi+eqQlhA3srNjH0JQ23F5xz8au5+WlXv1TNj5fs=;
	h=To:Subject:From:Date:From;
	b=nxBHYdhgpixzceUTb7+ACBfmBxriIxxLtOV93ENjk30pVWcEIzNXGcA7KZUdrWx5g
	 v9awC6t8vKDqWnWFCydTC46qLZgyBGP1MQjo2Al0L//g+AVySV6F7QWUfXSOIFkLB9
	 GuEvfhBlwiwD5Jq5BJpigyn8gWi8k3IKXFmkvu+IQTzrNTCO5ANi45GKd/RDolcn4U
	 cBUdxuOMmVsQ2k17fsXbUM/TSfEZB43WjXlaCm5rtFrklLimFlu4ExFjNVIkzSFJ1i
	 lF9e97jUlFzhMW0IPQbM0r451GrhUz97D4B6NekqVVzs4kt57BBnMKlDYzSqkN8I5G
	 33zqMuVllyE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A04AC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207895361.15334.737601574489583049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87a27a65a5b7ef0dbb9b2fb8cd184e7d6d71e0c9bb1bed190eb0886f39fdb7f
Date: Sat, 27 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722078953
