Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8822331C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748990394; cv=none; b=fEQUaLwKI33+bHSCoBypQi/0buLyTZZSS5uKU3jQmCJ0DQnY+6ajFTJxvSCFIMM3fUpeHI4nXe0a6IO7CwSSWBhoiZrkM0rwzNALclsFxj0f7BGPjOS0+u3HZVKbIHTWMvris8wv2UkY5zFZnL20ICkZmOJqNvp+QzkrJ8Jo5dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748990394; c=relaxed/simple;
	bh=Oyy/zmRiN7RH0OU7/iUa7vGNIOigr9cjkv+407WdYRY=;
	h=To:Subject:From:Message-Id:Date; b=KQhQtIUdYGEl6mgtRtFrbI3s03diyZ0f1rySdFzerPJ+KmqFd4xHrOmo/ERFASUyoxozDybZEsBMhoThe8mtpwmfFxl+K1ffkljqS/I8qFQoru1JOCluiIJ72Xli/RCdv7ItoQlP/VQUbK6dKEV4wTsxLflFXtbqFp/L2gwRMs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNuVq3Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNuVq3Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6202C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748990393;
	bh=Oyy/zmRiN7RH0OU7/iUa7vGNIOigr9cjkv+407WdYRY=;
	h=To:Subject:From:Date:From;
	b=dNuVq3Mp11mdeIahCFbGc7nU5lD9Qi5iVsQCoyIqPUCTypF/gkvCvhSsZcgNqPAr3
	 gciSO7LXejShnrNcEOa+kwPRQaeG09gwVBvKttLx1easUrODqhXkGLs7WqGh5Ff/+v
	 MUczJEsOjOaJcfwDGQMB6V0eo2WvhGH8TScLyTte8/bNUG/p9bTIZZqanvfxzn4v18
	 p3JJbi1/ozJnwvK9iCsUkTUIm14sM89RmbfXWdIITyh+9T5v/CyxH20fgTPKTvuY26
	 BLqf3ClJ6rLJYb66PXq58VBKlys2u46Zp6zaHIdUAP8TO7AobK4aMj2O+DxGuYIQby
	 AR83LNcVBLz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964AAC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899039358.1930.427161193426332014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae637badff52dcb609c35996eafb06e08058c22c1127d02e955c38aef0d1b0b
Date: Tue, 03 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748990393
