Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D22B163
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763856714; cv=none; b=mjwDFBWonxJQluC38AHJbmNnt4qkyWABv/A7r7hEEK3/i+XOMaJYE8OqUph8J8HEffAImEHA1CLJngWPYFRvgwpwcQm1uo7wHMRZ/fjwUt3TXrBi5wMAgifIEq8q5Ooj+t06HxVTwhaxmyasRX9hppCs/xvmB6S7fmbEOPK+8Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763856714; c=relaxed/simple;
	bh=3wUUoNORqxvH2NhheC+YEsWxYEmCIcefV7L9hlkwKvI=;
	h=To:Subject:From:Message-Id:Date; b=a/YvNPdKmRDdU1Dlx6Wi4zYqOnX9ipFH+m7kWNWiY+mNHSZOOHjOwqY4Hka6Ymbg3VBpPyC1JxIYtyzvk5g8UbMJPKFoDMXchQBdPC08w2ypwdZbqPHr0D/kJuTeo6iftuUlBrwqXDb1PBzmRJiHCgaYPM9Mw6nBSvhRMFzOMNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/R+rCfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/R+rCfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AAAC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763856713;
	bh=3wUUoNORqxvH2NhheC+YEsWxYEmCIcefV7L9hlkwKvI=;
	h=To:Subject:From:Date:From;
	b=H/R+rCfapStZG6/0R89qHas9DPnrYSJgPrcRHGOrOyrXShJYtE+Aqz65g0iYWEdUw
	 mBguEwtpoA2UJXlXBzpEnt76B/khlAjD3VYY3plnXR7Ip3yaj7Mw9HgBvabgl8WKUw
	 h5cp2ovh8HkMG/6Ka5nOHINGJ8KQQMWtZboeHRi3u2Vwo3c5zmQ36iJA39S3AM4thC
	 Jp2R0EINDzGgcq3bOWj4PEFVuRej8//6k4lyu5Oqh0ILcSaWyMTmt4D1OM/gEriqRH
	 tP/M5T2sPcNXyVx2FXaOGJAJwzRX6GpI5UsmjpITYaJhH4EAE/wVx/EhpkZ7YxLVLa
	 xdUX7RJ8Ze10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312FCFD2F9
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385671358.4783.3398834977052664521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c019550e5b7c0f3d0865dfc5c416b290e13af1ec14d346f4592aae5aae58090
Date: Sun, 23 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763856713
