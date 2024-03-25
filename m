Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D3B2E636
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711406897; cv=none; b=QpbkiK3kV4RHsowz6GD3b6gQodbyLqQhbHxrGjF1E5ycQGBLaWdRlHGhuQddgaPXrVObDrKpJhUz6WRK/Tk5ompSX2Y+t8c9QGn6SvtkwPODTKQ7cMupMCgUNpae5p0ZqbfV6QZOW/GZw3Em2FaZAIPkqUHaGUthCDhBRA3Juv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711406897; c=relaxed/simple;
	bh=aWlVEDbT2LVzJIVFs0ysni0CPd9UNOGP891AgQmykA4=;
	h=To:Subject:From:Message-Id:Date; b=amea7RnkcT7/qwBbbIoe9VLeoOK7y5b6+JPu30a6jOQ6VA8sMVWzXlLITKBO67UFlyoV0l+wxxvSc8XKaCV8x+ILn37Vw+fgL5Qiia4LeV36wG/jI7k8T/gWKy+H+Al7aVMuUi1ag8W2jt5bKrLUXEJoPAC3oC0wrWeVvgW91pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W35OhoYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W35OhoYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 946ACC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711406896;
	bh=aWlVEDbT2LVzJIVFs0ysni0CPd9UNOGP891AgQmykA4=;
	h=To:Subject:From:Date:From;
	b=W35OhoYNkimn9FHoZxXjBbZAFi6DRzonv7uWpnzgVhQyVPdBXDn+N59YStoGVMXw9
	 19CFmE6kyRAXEwhsncIc9qLDb3IZQO8KqmWCbYsxkbtcA51/VJiHgxW75VtYgo2OEY
	 jNIQ72CUZxvS6EyqE70X1iDtWENUgnmF8p+PqXUmxpiqre+EkdG0pQ6YOCeSr0AYqY
	 oYIt6HCOTf2EgoYc9KYMJUAaR+fPCXmQkX1aHPjJJ/FkA/TlKZFwm63yN+V1tkb/zS
	 N7lAbEZ4ZRMcKQ2eOqKjN5c3a8OVuNg3m2sKYr0iVOJtCrwR48Od6IHU8lsa5+cVtl
	 c/sqlTS1GAnAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79D08C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171140689648.9046.12738976167660067332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379627b98e59e03009f95a119b73e347043af363e11e20287b20881890bdfbdc
Date: Mon, 25 Mar 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711406896
