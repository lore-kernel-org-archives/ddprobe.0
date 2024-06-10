Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD128EA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718014643; cv=none; b=LJaqz4zij7BmxxqjdKjewT45XzAyIy4IOgf4LRXFMgzvVugCqXGubOLcRrECtCvB5XhM3KIuZqXU7NDKs/nZ/wSjlkOcM4FEJi1cK37OpdsXZKUDaXgTdJWqIlfBhgL5SdXJEZ4HNtX65DfWkuzlKXE5dj+iFCKAWf1KhRwtH38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718014643; c=relaxed/simple;
	bh=PZsdRtpRYttZMF/pWz1DsA1bkcGcckwBzyIN+ZTUIzc=;
	h=To:Subject:From:Message-Id:Date; b=FpTQcU7XgYaQeF1ywTJmVtlIXc018f1r3WhOjQskyF7CSPrFwnl1OM4+9ap3JTxPzI36VzDzl+y4qLrFbJ2ZT6/xJsAxHsB7PCXuDyjrbX03EYusBJGYG7W8JrfepUJWeYfD7DPoEzbEL7PkFxXfRB3SuaC6ecZG4nZbx5vjTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqU2mb4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqU2mb4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5071C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718014642;
	bh=PZsdRtpRYttZMF/pWz1DsA1bkcGcckwBzyIN+ZTUIzc=;
	h=To:Subject:From:Date:From;
	b=JqU2mb4/RfU2kIUYzyfRTKGhUbRbtH/c6EELN0WBfrmZwa9wDrP1bxfM4JxU6gCNa
	 jTVTPUdpn0+r+MvKwkJz9Gungk/4frA6Ouj3GSAvIkGRymLfiK08C1E1uoE+hHKWYt
	 X5SDbMbeVcrRRIzRNQ7WJw+l3+VHiV3Y0O8hSCfDd8z3L+1120s699zzM8Nm1RM3eb
	 wqYvDU+eJlYW0Ammk4lAcCzOC81APr+xpDSkiduV7qjaUHo9I8fEJj6bS2Q2u+sl4r
	 +hdlqIrLHeh3xd4/PjvBm2A3b/quPOeMe4kgzVidS7TYbk3+Bs1BXYJa0VrIFwT+9n
	 wZfsiLyey80yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EF1C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801464277.7550.10971594828162517009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2aee34ae6dc29acb52ec9b4234a70f0ad1381380463753b7b9a083ffae36b21
Date: Mon, 10 Jun 2024 10:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718014642
