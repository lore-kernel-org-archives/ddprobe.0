Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9273254A9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764835973; cv=none; b=NF7W/jAkv0Wlllu5blxC1YwU/DasXvxLCL/jruWkVl/LsxqktP9Eb3V32TKIckBbdlOscDh/rmhjdwzNWCy+2xwU06tk48qf7v+JIdWgGbUjWxVuOvwcOBgn8o4emIMZD4ynaK7Yj4S9+DGmbvLTImn13KUt2UJK+KfVyLpA//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764835973; c=relaxed/simple;
	bh=6BcZ9Xiwkq9gQg7SBhuuK6maZBc5ivyglN7VA7PgPGs=;
	h=To:Subject:From:Message-Id:Date; b=Mwo6mIR/UwQ2UCF+Y7KrpyQsMsmdEuPGIbts564m7qEP96TgIyFzhKsyDfPcXqaB0kw6nAD2UPCaJYnxOpMcCklThTnglzlRlSBim3MykefJqtYcy7a9dlLPFiilNzGVFTBlILZTOQvmHtl9w85cGAXINWxI42e+ExxJG78qRv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh7/CHmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh7/CHmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE71C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764835973;
	bh=6BcZ9Xiwkq9gQg7SBhuuK6maZBc5ivyglN7VA7PgPGs=;
	h=To:Subject:From:Date:From;
	b=Dh7/CHmdzfIx9wObjFdaz4yAACZgj9Fut5Z3mgxTNeiALu3ehVONndmuwm/r+XuU2
	 NtOhhjYfyZwpy01/hI9HK6TrrLl7KNuBC7uHQGi3kDh9S6x/gLvV2vQEUq+gfNnOQ2
	 n1FEnpuB+WD3jRgAHdj6ci2YDgZf7qUHse+DyUKXvvrxUEXPe1XkMkg4HOD4EebdTu
	 xOFKLDLBh9707QVbMCDf7b1+EPmpjK5SQuDxAqvBkejIdPrsulxFWVTh1qClDHvRtk
	 pBXg4PqLGyW4lHyezxsrdwgqH+MaZQVhKbyPmebAzon2FKaugtGsnBnNw8+fsaPwp0
	 BCoshtA+S5qDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DCD1D893
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483597360.7428.2235913951463786866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1edaca017ff8c28bfef2c770ffd8f4fc8c386d61adfb168545219b1da7bc2b
Date: Thu, 04 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764835973
