Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278DE3C0C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750577994; cv=none; b=dY3bplhwh3dZhlwTu2WYsmDLGjAtWTjCLbDYckyZoDxz9f7yhXOokTR41KNe18sdYr9yvQ49+6KH7bcz2s6h+4rB60/nagZLv7LMkYu934J0j05VoaCvr/ZiIWEdZ5nwgmwRZ4lqx35MG0H0dJyHfbYbd3zYJPos0S79HuUH83s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750577994; c=relaxed/simple;
	bh=2jiKyNZ9A7i7pYhZzvNw1++NWydMBUHBlIIjDKWcmaY=;
	h=To:Subject:From:Message-Id:Date; b=sdUmZkWIMzsOlyF7CPxe85Tb2zZxIH4QrONCLALLfXj1gU4SEFN+tQZ4wHg67614M8q4zTxor+DpbwMp340j6Zfmv2dQeFEGq2yKErnxyHy1eimgJ8N1/jLjnPX82ZJPrHO/hnjDGnhZJnRHxuQGd5whA8i0/hA5GHOkDyev/l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTu0+e2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTu0+e2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DAAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750577993;
	bh=2jiKyNZ9A7i7pYhZzvNw1++NWydMBUHBlIIjDKWcmaY=;
	h=To:Subject:From:Date:From;
	b=RTu0+e2u2aYAm3DjeTZSemfyrKvZ/jSgwOdinaDmebxCDh6GTi3gMU+B4OkCIIoSI
	 6w6LZZcS+dBIoKBVwuRuDmi4M9ZDEjwd5zrNOHHMFBqlcWkzs6QhX3abR6HVyhq252
	 3H7PwkiqHkBlg3osNkN1K2RhEihl0DLTpNHDlkKZzYs8DrYvOnmPI6C7p2D0Q5iVup
	 AEFyV5GNTmPt/ITRAmGQHFYVdHu/HZjdUSGFyJOC+aIIsXLo0IG2s7ec/gyme7TUza
	 fgr+eq0/3RsiaVIiSRsxswOmn8tqcofXJfkzfDobx8lelwXohvdtihqWyjkYyVpiH1
	 TLs42/sZctKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C1C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057799357.26218.16063974502049175901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817893442ff81a48f506b783fd58aea575d439adeb5b249a677d3f0bb2406c4f
Date: Sun, 22 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750577993
