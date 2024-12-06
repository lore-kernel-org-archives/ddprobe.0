Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2047F200136
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487954; cv=none; b=oWIEi5hV1R8EFRwxJlj/15OKbj/PX5fWwQOADVWFdGygo/MJiMpIvVgGDPGbl1Yo4RV72PY6348w5Rpx6iHDNn+hg4+th6VKx3cwnXjh9UdUuAm6aOhHkLf4lZ/iMd6ks75pGz+YDt1du9BzSBm0w7VNQlZpmjIpmoYpcIae46Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487954; c=relaxed/simple;
	bh=R54gi7GrR9nChvac3epuP6t+YwibBkdKTMS31xNIIjs=;
	h=To:Subject:From:Message-Id:Date; b=fdKy2Go3+kGfOZHRtYLFbI/S2nmh1wPXkFC1SbE/lThaQDBfgp7M/NOXLk+JCu6UNgx+EhzELiQYmM8Vnp36mKPIMPmohhXdsDfOYSucsqnFcX8/NjLQgxKjx7xjFaCcb8WzWmfwaxzV9OgxWDgYf/PHyldVR538ecHnuZmJRSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi540u6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi540u6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AB7C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733487953;
	bh=R54gi7GrR9nChvac3epuP6t+YwibBkdKTMS31xNIIjs=;
	h=To:Subject:From:Date:From;
	b=Fi540u6zXnWN+0Enm/ogT1ybrVXFQOL7ZrtmaCLw52VqIq8m1WCL0rlE46t7p8ejy
	 RJkGzjqW3aPinFQImV4dmIoChyQXoD8kgoe07TpFILe7LEqJUIYLyy3LsjSuG7lJSs
	 KRmEqK32E+xEnNVyKD9ip0M/wR3Ne6rYHyUZBpj2Iye+pPW/DgLJFOI+h4EOVFbrny
	 yr27rEDZVzyW+h6h+VH5mnupdqOIKC+i6wS1T65ahx8i5n53Kd/ki3kd8AhQ7NMG2j
	 jNamrErwPVzixuUl+g81uOFILvTJHS22kLC29IDDPFezMPTZp3LnBHuo/esySoWwqn
	 kbeIf1tQJdfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CDBE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348795371.18525.14559667454554156737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63095bc81a375ec29c8a6c47ff481687c9b4757979bc4eddf3096f7705c68156
Date: Fri, 06 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733487953
