Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38753800
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733118354; cv=none; b=IbCbtl6momYI6t1dq1cYQdjcNWAROUqXmnW+un67bjF0z3/EO/4x0MUsgHAVQTQmadf7va78Rxia60UNX9pLA1ddAyLQDLT6kD7GHVMn7AUCDH97LctypfG6/uimX/0GdCf4BGKZbF/CwQf+zJv8sjnT0ZCebbbadUr9sD7AfwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733118354; c=relaxed/simple;
	bh=4HnFCHLzP5uwbL39o3VTMAMNyZw4jH8Tzj8EWYgS/II=;
	h=To:Subject:From:Message-Id:Date; b=LbUa/V99NsrwoaPGm8XCscHTLtD+iO41rroEF+gEod6memmiIOL4QMGEHOyHZ+MRcQc2aAqs6Y0U4+tLQHQodOjHTEeEQdjRff8KmO5EZPmFOdYdJXyOi9B0q8evl65Ly1FOL4ckRMbPlzMuxi+DuQ+mri/XaIMoQ7oEjez/z9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5uKq8SC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5uKq8SC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB67C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733118353;
	bh=4HnFCHLzP5uwbL39o3VTMAMNyZw4jH8Tzj8EWYgS/II=;
	h=To:Subject:From:Date:From;
	b=W5uKq8SCpZahINRluCLjjSVXNsZLWCc/ynoU0juPp4navtqEUB0n2qY87sgoMFer6
	 cVa92WJpeaBrKXKRnEdXWbyGlhDrB7FAiysxJHECI2pK4Fqz3va9m3MoYLFVapa91z
	 +ScGP2E8/0JXOFut2kXYBFOkSNum401GQr5Q2Wn5j72WxJD/KGjTKyOECd6LUV5OOI
	 X9sSUKKKw+UzP0h0E+T5/mEaQUAkS7xz4/zodSQsu5JsDz2+wPwFb5HXB+TcgkwRvp
	 d5dR1iXSZNQgcceIaNT3Gv0Ohhfq5Q/0qkSoQj/4ZCJ9w+DzgBgUw4w0iINtNToqdf
	 71EgfaQDUOoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAAAD10DA0
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311835368.11673.10836435366891887345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ed41495709afd0016d16af18145521d0bc37edf306725981ceaa8a51430a28
Date: Mon, 02 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733118353
