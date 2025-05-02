Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308FE192B8C
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746208795; cv=none; b=t/R3nd53Dud+BHW8OKb7sodQ0bQACQJSmp6P6Ouz2tIILrEkyZB6pkCyLEtwNkouHQmH1/fj5CVQC0WOWf5RQ43holWpr+N/pb2t07jn7NUcXn/SOL6cB7S9kzL1ZMFIg80LCSY3IkyFTMRB1d2l5Radjb80W17hFZ3MrjtnL/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746208795; c=relaxed/simple;
	bh=gictZva42DTIStqlSCT2AO1oXV+7ZKEkyBUjNEINOpk=;
	h=To:Subject:From:Message-Id:Date; b=dY8HXUx82uBrbXY1oBwD5nmxp31B4HjxlMuUED9o2wVmKJYlUlKLK8DXanEEaiDR/0ySFJZwERTWbV8Qckby1B+OMDfnhdsjWdv1w3ctGq4sBL9hzlZ6/TA//XEr79S1OL2s2/06Ys7JFoj0FdchzGSfY4q/YE/m2CvaPUmvjNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8Wpxh5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8Wpxh5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746208793;
	bh=gictZva42DTIStqlSCT2AO1oXV+7ZKEkyBUjNEINOpk=;
	h=To:Subject:From:Date:From;
	b=X8Wpxh5oWr3Prixg75u7lDTxv4AmSouSYAjg3VWc4Ug8hhrOiqneq8s2oYXDo3MXo
	 74EmVz8nnvdo0RSIsUS3rQ2bGN0mpobJ+hc3G8GBPaTAD7dpW6NaXLnDzncyvC8lgw
	 VwG+tt8bdKNjj4ISQbPxycIpxYcjy7KARUV1KDlu5+VpSbGOkzG9VWuvIVv9mOvESg
	 +oUCZP7VL08o37y2fDh9ymfcQDVI6oIfyYQZzAjIgrDszAE0XNxIJ2FThQGDaJhIoV
	 4ccUvav67ljSHNSuyHYF1z3tC+pvU5VxfStH6e+VAFu5QWgU3VG+rFzuO4D7vt18P7
	 Ki+uN/ZmJrlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA39C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620879357.13650.17747388900532360089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d804b04bd17d769a6a9e676ece2e2b5f6235581f43f2ce5e5471d0ca1d3089e
Date: Fri, 02 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746208793
