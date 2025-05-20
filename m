Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863D255E32
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747768194; cv=none; b=PZvfz4/vG8Z0cokA0BrLVvgK+LNeiP4nkDRvCsXM+7F8MwpY2uk8Nmy5GXPAAkzrSU11qjxsTShtV08sE9xAAHEYOx+hjxjP4fUtCA6el9SAPRhUzInEfDwQLUR2Y0Geb8hGJQiEvmGObY80eJHXPvV+Kn1P+AYZ3+HxZfOvLJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747768194; c=relaxed/simple;
	bh=K/IYyskFpAHBec+zIZlyWDyKOx5h4F/lYH9b6447iyM=;
	h=To:Subject:From:Message-Id:Date; b=BqaeKA7it85LB80/1qR9bSnJCicxS7NeEE3f+ZrObZaYsyx3rWVhsThYfZNR/JMbWX0T58/XAeayMrdIv+NBpiz0RrTvz+hFiQVuiWJ2RiQ1sZPcICTvt2tWfKKYJ67xBdFGpkBpU5tQTDhm6Lls2Wy/A2brD5m4yQIvg7G3bko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9y4peau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9y4peau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CBEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747768193;
	bh=K/IYyskFpAHBec+zIZlyWDyKOx5h4F/lYH9b6447iyM=;
	h=To:Subject:From:Date:From;
	b=g9y4peauSapStIrJyb4WXl0X65l9+jlK7PpqGsJxXdUoG18/vzNQv2Ny7pJPbL+k5
	 OzDEwnUSKiyBkHf2uAksSEksI6/+yYOB/iLI94E59MXPe5GPMBo3upsDbNMOBfFzU+
	 GflRNVL9WrIq2gfWcG1M74p2GtcvulPNmfDVQ2qib+BilC0bD7yCPvc42HoxUNt1Uv
	 a387OVRvetBjMQisBTtCk8goTVHisl+Zs595MLlgBqlIxz6I0MH6Lp4BNyuArRNPf3
	 irMl414HmrvYMKWXNVHALU9Hbs6qiurzzoQn6ZJEjhbKt0xYYw9mfkQIOQFkKY/T4c
	 F7n1tKFUjq+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F571C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776819357.32102.13469594233037560120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027e4a2a76115b18b076c08fe87f6f55e96d1e4bae56702fcd3911faeb761d3e
Date: Tue, 20 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747768193
