Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E1727470
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513594; cv=none; b=rzf0ZHZQkH6mGFstHsZfT1MPLB9twJ0Y/7P4tpNwcuJjoM6Ay48GwtJXs/09z1ZZHAEufcDooZeYfC5/2BhYZ1b2TdyOCIxJQCKrRn6X6978krLBcEhBGhD9OzYB7lAGkm7V/Hwl+VdcWIJ0ypBtuO0X7W3gPwxXOImpNCXzSwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513594; c=relaxed/simple;
	bh=nBoZ+7pjUStxxAvh1iVAQyZsayru2GBg2x1wwZzlf18=;
	h=To:Subject:From:Message-Id:Date; b=kzJAjviI70r4EX07RRfHi27Gsyo31D/S8mB3hqd7sYGxUJ8dXkAXwUvzfO8tsVRkF7m4BcgtUqa070sGeW8gPgUpqfZl33VrnAXIDa5Tmi/IihpcxzU+8sTF8py6HMuQI13fBsVgWH3C/fuKwycsMaL6kM5275JuBNaqGAkmdyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkHKFTKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkHKFTKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A990C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758513593;
	bh=nBoZ+7pjUStxxAvh1iVAQyZsayru2GBg2x1wwZzlf18=;
	h=To:Subject:From:Date:From;
	b=IkHKFTKaGyyaJ27jhOp2575Z1vxFshc0tKK/H+SDQqJu39wQFGUbdfcSwhwPIoNFR
	 zGwwdYc3VAE0fj38QBrrVKs4aHYOwFet7LAFJesgWZ1y+YFVpCSi+For/AiZH072Xu
	 HGJcjyvm8CKeXrZf7I3oyk3ahWhrhwyeD1ZY17bTlt1/2CAoFm6AFOmoA3pZY8DeOX
	 XHI2qAG/Bvs1xvakX6JdfNDQaDq+kkEF44YT7AI9dkBCVblekdgfqTDkgWyj1jrknz
	 LA5xwS408q4LEUgbeShAJs9ptCODda0DLIcyiaHh5fW3r41/sEoitlGcpW8dZMJwr3
	 IWcs5MxFCf08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851359357.8004.5206180305972306858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff3ebc5218b70ea8e2be01c44786b6236d0654e28233811ffcb295f7cb031ab
Date: Mon, 22 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758513593
