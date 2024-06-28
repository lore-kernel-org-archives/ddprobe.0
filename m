Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A2D3FD4
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536063; cv=none; b=kpuDYkkHmnHbuR9hiN+E0ZiOd77MlScCMN1AShEXaVby4CPepjkiYzExGJVdeP4D+u0hSM33VQbL2HlHbKDmoXXJQughFb4Hk0cwFAV7z51wtSfm9ZzXJbO7rrMtx+9mEGRd3m8HIJIpjhWjyaYdxBQ5JC986zvlhQne4nSTGWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536063; c=relaxed/simple;
	bh=rmgy3C6rpHzjG0j1M8LmNtB3mqfwyxGN/+DIbOsJRcY=;
	h=To:Subject:From:Message-Id:Date; b=P6WxDxmTS9Txj9DBCQ6fNl+REM4ODF7KvrDxLRIolQ9NqnHHZF4YrZ2IlKlgGQdDLW4/HnpITuHuIDOfAxwH+Tz3LYk3Ze+XHY2U9xnNX2kUkysTRNutgI2t33ghoAFvXVhZADy97a9iy2aOyFKQLL7unPZjmPvFbhAuKUIo4g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LISxy3oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LISxy3oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D960EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719536062;
	bh=rmgy3C6rpHzjG0j1M8LmNtB3mqfwyxGN/+DIbOsJRcY=;
	h=To:Subject:From:Date:From;
	b=LISxy3oIaqDZh89kkJs6U/j8SyUj1JJ7nO4kg6BeKyGQBxloIiEYeLW8dssEoJ59e
	 ccymlYYEhw12gtuRHLacejLwKmXYg4lTc3e3m/PzS9sToXjczBtASFwYP8JYzNAzz7
	 3nZVbmeBi1SJUctWUQlPIppdipdJ7iwnph2CuTHRDKuD5UrwR/GaxCa9lveBf7cvRl
	 tLDFKbdSshXLFINO5GK9UTu1wTKgDADZ6RZveYgjhJgQhYPMN01XBO8tvv91gZpZwQ
	 dEJeIKopUvYSyKmnLJ3qRkJHBYJRDSBehpGlJXx/qJ1JK2QRqr9d/Y99zmt70FI1+m
	 oWs7XJOgddjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D0FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953606278.26841.13147551843797283440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92caf4f612d8aff3a9c4c367f2556006982ac7ca83b416558a9af7c0e05e5041
Date: Fri, 28 Jun 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719536062
