Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F863E556D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779096634; cv=none; b=E6sOLhge0XSNvDXQN1kRaH3dTn42F0THXPNyLjA0QeAO9vQS34RnDI1RkM+PaElrXGa5hGu6lQLTn6RBUNgD3mzVfWYRuAHAyoWlH62YE2+JzniixHC06vJgqHk4sddajYNnq7P22Qkxex1wY2BDdbX+geL4q9sSZESEujkKx+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779096634; c=relaxed/simple;
	bh=CvRUYb37sAjHZj1gGzPX9jeQQcXmzXnaN60ijtxj/aw=;
	h=To:Subject:From:Message-Id:Date; b=YHHOIbPTAfwFGA1QZwNJG9MvqFq1T5+zktQI31FEVZ/2sRdDRl+414ueJzN7mxODWE8IgJ+cwbmGctA3LdOnMS0PFud6HnBTZUy2SOB3X4FDbREMASGBIGccH03WPZdF9rh9hmTbHkyDN+tGU28v3ueFoQYboTS8IW1LZUwEhrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koq6mPCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koq6mPCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBEAC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779096633;
	bh=CvRUYb37sAjHZj1gGzPX9jeQQcXmzXnaN60ijtxj/aw=;
	h=To:Subject:From:Date:From;
	b=koq6mPCWq6bhTwNPpoE8dRZiB1Rb8noOKsCPx9LNYeRMr2YCUVjarIkoJQcVokjAy
	 pVyTkEfS+Ab8qfK1Fq7UfVo2epbx4pLh7efEe9fwN86oPOs9Yd8M5qAGNs+0zDn3gn
	 5rDAFswAToyOzxZB42Y/b43gp3UZprNauOkzG7pjskyGA5wep494UH548oMlacw3t8
	 jUOX3f9sJONcFUNYkGvFVbzftcICaqiq78zd3KRdFFuhZ29NSwY8qQROpXc+EhCqRl
	 onLxyVaMjLxE3uivOwRz1MfY85xqmATuVJ1qIUuxoYHNpPLuLw/89jj8qYJDSq81YE
	 IL4Rg7geZklLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2068CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909663371.1269.6986213745392239350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57e0b9d3ee438055143e666780aee6573389641fc8ae9e482c3dcf6a95c41f4
Date: Mon, 18 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779096633
