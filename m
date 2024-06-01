Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E1A1CAA6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717275323; cv=none; b=THfl1c+TS0HNA8oYKwXTLSA+nySw2D81caSGiBVT5yvmsmQ1EPZqh+O7Z2RMplZO3oaWC9K7UYjXl0Ka4YwcD5t7SlXy9guf3Jbfu7dHEJVsaZ/gVX7cJl1o2v3ay27IFC5DOL1GWC+gjsseFDjqx4cNlG/DtastphXdWXlzh20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717275323; c=relaxed/simple;
	bh=5Ob/e58f2N/+s7TRiu7yhhJdnIy1YH9889Qjh9ZLM50=;
	h=To:Subject:From:Message-Id:Date; b=Ti+i3YCN0oxxAgB0PshR06+f7sgSzwqQK/a16qdw1WeVSy5Rbs+zUG571A67Kd8NgzyOS1GyrIIAZOsuJzzQjJdfaneHavhIU2986L+vwuyAK9diGd5a3TLCTKyiHYjbnXbHRv64PCUewr8gjqJHi2YgC5COXk1ZOvTuEdnDyls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W39/qFNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W39/qFNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD96C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717275323;
	bh=5Ob/e58f2N/+s7TRiu7yhhJdnIy1YH9889Qjh9ZLM50=;
	h=To:Subject:From:Date:From;
	b=W39/qFNPI2K6pkG/FT4wSlSCp95uHojJdw07AsuKTMjTDC1cxcv362q3ngVGWqGmx
	 fCRmwSuxFDjZhJZvxH1eA8rFsXzbng/H/6fUqsOuI5ZXJnDziwBpMUS68zxI8XFwQR
	 G0FW9O+R774LlVg6IhFCeH8996CvRJ81AHPGzZ25QQWInLcWZi3XzcXC7ax0PnsnPw
	 HilTvCoszCqB237Q7K+ZMMbbGrfXA6TjReBqHiQ+greRlB+fddnya14rfg/nYc7Kvc
	 UkM2WSOHHlgnSgrieD4YhuN7/xgBUj79o7gP+g8gdk7TMOwZqUUZQMj/MaYt6ieC9o
	 j7FBx/E2pyvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAAEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727532282.27702.8964161756011005210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e51218dc4c836ce388c688862d9112f56fa355b273f18061fc50c4e10dd766
Date: Sat, 01 Jun 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717275322
