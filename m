Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174C2137923
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606034; cv=none; b=Z64R172KBSR+8waM14/t4I8FIvVsXg9qzc8oiFqX2CR846hDgQQJCBgbHUvQjPNsqHH+uaLaWETL+oazjVYuNkPqf+MBEM3Y8FciMOevIyra3EJOMG3hxERQinIv5HNSEaJtmL6DcXcIdq+VEGwHAuEmDteVcyls9STO33przcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606034; c=relaxed/simple;
	bh=zaMJxHFnEFu8+juJUcScYawLG5FfP5qpYFB6uY/XJ/U=;
	h=To:Subject:From:Message-Id:Date; b=u9pNKez/DctTahrerPNM2fZVSkWXlu6cB4RXJn0x3jx67wq6bvyRbFeATjHs1Xs6eiqh+hyvHlIyFCuhPWL2o55TinROz/hFGsanuVZzCV+1wVMJ9/Jtf4YXBboFsg9qVmjguhBs3jQvW6d5BCRJgxUW0NAsYImFWarjPgVUxPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC9Z8thB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC9Z8thB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF94C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769606033;
	bh=zaMJxHFnEFu8+juJUcScYawLG5FfP5qpYFB6uY/XJ/U=;
	h=To:Subject:From:Date:From;
	b=VC9Z8thBY6yCT0ZMyxjN0F4Li57aviBUWYAtWNUXQkXlmzOj9rRlGqs1guYvp5jAk
	 Z1wihRfiEuHzPR7EQW3XvvJyhmYnK1CIFvnfIzOCkaoqvg87EMQIUoafH7DBGrNRCB
	 BkxBNYVMHqoQt6FA33eAcQTwxj1Fzk2w6PC1KcUhb+cyTIhnBSNrnd0gPGT/qK1fM8
	 35U+Ayf8UjHD5IBx96twJN0CE6/83LQwJvYr6gS7gewEOOY3YDenmdd6GwxX+MyBBE
	 NHxRm6zdvOnff2buGk9CgQtdMIy26D2/UjliXEH1qzETTy7njubzXQT6plXhA6m3tj
	 kZ6eM+AUDnlGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226CD25B5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960603357.8596.5654885037491794926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d18ae1ec24f0def9b2d1ab1d3cadb5d7efa4ebe9a13fa9c70cf7d7e21bb01c
Date: Wed, 28 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769606033
