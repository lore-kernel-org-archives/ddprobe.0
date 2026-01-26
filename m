Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F197E1A9F9F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769394834; cv=none; b=c8YaZI5gxiZ3RtA2GFrJ/bP5oKl5F4eFrEvK/starxzWZI/QEAAj5I+nca2ZrTJs1QX66Xdmt1os6xht34LnmHDJU6A6K/nYgfZSIM7apifVFrEi870e+WC3b/AHCp30vuWWIy8FKVlQHDBrfPyKb3DfwpwcEDwNp+ihDB3fU5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769394834; c=relaxed/simple;
	bh=e/mxy/STlbeE6DfoEG8DOyNTpMsXDZAyApVzlQWls+k=;
	h=To:Subject:From:Message-Id:Date; b=HLl1bRvkO0tTlYNFGUvejUN8GkNknV0UqHj61b4e9s1FfmIZA4daK+NV4k1eRwv7oCat7MTk+2HsuUTSLN3E/cjVqumMF+zO6E3nABBJgL6P00nhJ4FOFga6Jb0FsdRVRGv4JCtPalEFhAssIgnarQMX81XF6Z3oUKeDKYtGcIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWRfRmES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWRfRmES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA391C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769394833;
	bh=e/mxy/STlbeE6DfoEG8DOyNTpMsXDZAyApVzlQWls+k=;
	h=To:Subject:From:Date:From;
	b=jWRfRmESZTvltVaiBQHG8qst4/hy+k2gwqtSm8x+Q2y3s7rn5w1tBdYWd9g7R0+++
	 z0RwbVBez9Vl7K8Vmwj3k3YFOM3dsYAgr0GVbyhB789rfmq60I41EZfkMlwRacRceR
	 ReYlAiFsTzDJa0s54rhW9nqCqmE/UQ0lGKdln/E5YErQl9up2prcZHm4YL8J9vKDSZ
	 dXvwoAIfj72dLv6g0lIIqrG/q+EX1muvyZfNoSkXvcWCY9ICBFQsVvw0Bvrwxf69uk
	 wdQ9PX4sKpV7UFaXHYUzeyxPWPNSsP32jCbR3Zyq2CM10SISYVM9NWHsxRRvsYvfaz
	 ecsc7XjjkBnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96061C88E41
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939483359.12796.9693688353873617419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310b17f6b9ae67177589b6c7f0ce92f8dbc9c28aa0f4def4adb0e9c9a1c22959
Date: Mon, 26 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769394833
