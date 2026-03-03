Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163C633E34E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772540694; cv=none; b=m88aP7P33HcqdsN452BFZ5QDYpRNRghO+baw0ATGfP2i6bI6P8Vks9ujNd/uFFqQflKsj/e2jElGz11/NBgCoj4gKu/4yBGOGyHex79sXWtMUj3Ws7dYT0/d/9O9liHxtXrKomNkucDSX/J/k/mHqhIKXYB+R0tMG6rJL7YmB2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772540694; c=relaxed/simple;
	bh=hOdWuM76ehfmVXE02BoUMEO5nQBOc7LhBWgeawgl160=;
	h=To:Subject:From:Message-Id:Date; b=FlF2yBTe3qPdZfDtIy0NE68TdlugGzM+I/oDS2p2V55F6Ivu55AKhb3NvPHihxUlTOhHdgHAfo+azFzLKaCtfjXFuSnd+a+RnOGRbhJ1sWvcw6ut5V7uRWPeJno+Sg0zt2E73K4+LUWXGvVVny5xlZ6tZuG02z5MyQ4Y50M0hZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkbCtwGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkbCtwGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2217C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772540693;
	bh=hOdWuM76ehfmVXE02BoUMEO5nQBOc7LhBWgeawgl160=;
	h=To:Subject:From:Date:From;
	b=SkbCtwGB5Lb3CosKE348pqh818zEOcEDRpbrHDUnHslb7lg+Kdx0Qz6j2DttX7oXq
	 j6PBhVKfXQFOWOfpfql2BdeO/teu8dfLwil1x6FrnSyh+kxZ2QlYbh5ACZfq4j+a0G
	 fRQ2yL5ceipBfayjwpqycrqgYKNvav5EakEomtDBe8f4m0NiMNqDzRlRZY8a3JaNR+
	 gsFsxuTJT9CYzEaLcWR5RbREi2NiBLVyBoYKFj5OMO4aSIjK87FfkqfTkAIYVoaKuN
	 88oVpGxYJM43vYeIW0aJeR2WHzAgKUww8jfZSTkXwJ9WNEferNPq110lGXuiaqm/Fs
	 ppKPF+xKPD+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F871EC1421
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254069364.21361.10842647770423147016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a66bf41a968bed05c30e32b9023d0b564c87cc5c41a7bc19873d15f952f69d
Date: Tue, 03 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772540693
