Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720322E410
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744740594; cv=none; b=EFl03yza9inVW3tEjY0z0+mxiNG4gbtPW046fc8487JgG2s8W9xl0otr7/elN6BMFqHBcleafQkn9Vwolqqrki/1dtd+CzDf+5QorWPtxFwqMp5wcQzQ7FujD3bKG2vFqZZGxC7sROC5iCZ/oMleFdRN43Y7WdGdaD9wPrv6KqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744740594; c=relaxed/simple;
	bh=6MRWGzRXwcpBWXcpFye19fJQOxcFnd2qRwLllJCuUqU=;
	h=To:Subject:From:Message-Id:Date; b=mGju1ujCdYoY9s5T/h8PPacoytxgTPhrMWtu0klpuorUZqkrkGgACdN22gT2Sl9IL58PmP/Odvahw49LhdRdMLo+Jiv2gmg6k/xABv6zs+cTIwahNSi2+a2WUT8qxZaYUZolA5T+5F1w/R/1y0jLLi+TntfniUT1J/ipKKCiEoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSt0sJmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSt0sJmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4CCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744740593;
	bh=6MRWGzRXwcpBWXcpFye19fJQOxcFnd2qRwLllJCuUqU=;
	h=To:Subject:From:Date:From;
	b=nSt0sJmjph1Aj3WlKSpOqRws5kksRzoX5YZOA5osP4UT5CxEe0liNNWH7kFuBdEIi
	 yXTNwcE7OG5mGcSok4Ms8KAjFw28hfUD0nVVexYXyjFxQtLaUUHmQRm8cZQHLDDERQ
	 mcO+90ScjfbUV6QWgGzoruFHTMF487Et3i3bZ02Jht0XF/StmHJEUHs1xsXYzndn7W
	 rxRGo1Dg++SF7x/i+xEvKltr3fw8n3TDG+qDVHNJNvBnfiQ3dbH8T/KeTYqFAeY1+2
	 DamO2wvCryA1I7thPsk9aFI6KYBYVSkgSlYfY+xJvC73qK+xZuf7qSyduKtZ3tmC0V
	 14CbyLFmParfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564BC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474059360.9942.13889326052282555055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39b1eac063df98c3be682392f4fe2b25d58783b40db101f53de9082b93d21f8
Date: Tue, 15 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744740593
