Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC32459ED
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763083794; cv=none; b=XZdKpL1NVyathRsxkusDzUBN75qV0haUCv3v6ye0NHIPsLH0Tw4DQ60xLb4yt2ttMT3t8chBsDeRQB1o79idJ1eFfQAv6TLXU9UZmM4oP/vBPUt7MPrzTa2TTBYr2bgICguRYWp7+el4ZelZKHM983Dwi2dJ/oTVzcXw50QkLus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763083794; c=relaxed/simple;
	bh=gR/fwPiNf440O/C64OgMwSfpjb1esBFQKpYVXzlnAHo=;
	h=To:Subject:From:Message-Id:Date; b=LEA6+vpU7AwJoscMkjMcBdjAzd+BXIeIogBxng9QzNgXlX9g/ypZzBrrc0mWqRPzpwvysyJP4dNAxIe3to3CXDyU+iDwc6D780mhfBTF6w2NWdlxFsO6nrgGGsddkfw23zPUhpYjxTOsfVhK6GnpNd9o7QvzVtZ1FL3k3qqqdvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6ZuGlhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6ZuGlhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2EAC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763083793;
	bh=gR/fwPiNf440O/C64OgMwSfpjb1esBFQKpYVXzlnAHo=;
	h=To:Subject:From:Date:From;
	b=Y6ZuGlhN0/4cZ6WbbqS9XoFqRzgGPF2Ui1yffBNRdZ/XY44Ret2AFAtl5QZC/fmRc
	 hCuEvKOP5JIFBCTGxVvT58IZ8C2fmhTSZ5UHy4tQODqE/EktLgPw5x198tjhTuN4gW
	 3YZb577d+7lL/WwE/WI1s4nbs3t/IaCKitNxgumImgdTnOwkejNE8tFxsRal8M/hzD
	 uLe5Ipwh5hwdzBkqYYLDgTKglqLuI7SLQLJ6JiEGZPT113EGWGLPmCKBH/x1LO6xmh
	 ouV7KST7jGh3UXnfk0A2pxwkIrK7mK7v5s5ibhSqzusONu/17wQbtdPTW3Wq4dxX7S
	 RYp/x8Y9mvO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BB9CDB463
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308379363.30229.3215098031280977122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2239029852fa34ee2788c532185a778f545566372c32e6a464f6ab91c3309c7a
Date: Fri, 14 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763083793
