Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A3D241139
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778829634; cv=none; b=Fyur5VxWAJcW6A4BJKTkxOorj70Z3BOZ6SxyxJznIzTuPMCTUXJ9shkO0J87D4gr5CMHSeCyQjUOqNtglj+9uf+QGvy/jM2sjKoc1xDn8IMDhM//sLNfLqIIw5FnGkJ+Kk+ciMlpj50tLFoGXRXvX0/KliomAWy0iJ4v/ESzKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778829634; c=relaxed/simple;
	bh=crhkdmA4R3lpknnIvA35YgC0Xy/095VCuhyrTvFm8QI=;
	h=To:Subject:From:Message-Id:Date; b=E81zS8tK8XYl4Xuaj9ilwJxNLa/+uSyawkSdEkJfqQuzFcKzyUQAkvdndOlxQwh+7vjuVQ7vwAdaL9wJkW8sDBN5gWsXbyHzIMK9StcYAdjD/ZKpbK0qZvCplKPgQWytOyTm3OIaHSh6UyJRjOJU6Vb0mHDtW9ANqKJls7yGQ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bciXlZfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bciXlZfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA591C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778829633;
	bh=crhkdmA4R3lpknnIvA35YgC0Xy/095VCuhyrTvFm8QI=;
	h=To:Subject:From:Date:From;
	b=bciXlZfupCT0oFFURmgM6NvOlrgxWJRB5f8hjFKTiuXDZDZrm1N/PUMC8i8joSiT8
	 EFz4xoa0anPOZFrOAFINTHcqt3ifGDAU0K5zabjAQf8mMl2V83LwaBCLbqjlEUQb+D
	 OikA/PSNrYicGjNcoG+Zd8VuqNJwA8jIfFT/4vaqdFKRrvVCBfPF9+20/wt7MKxEf6
	 d7xkNBqq4WdA/m19C9YY22CJl7xf708iu5klOxOg7cYonoa0Nae+USHzUZdDThgehM
	 yKKzU0YgZbtIcqQJ2VMz9S0FwboZYXeSifKITShpQfu2gilVx3EMFB1UWr6Ys1C/bY
	 5DlU2AFXq0ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB48CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882963369.13854.7376056235992298814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8e85ff604f7d2a10189148968ced9804a6b4ece0c74d0f5486abb342fd3174
Date: Fri, 15 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778829633
