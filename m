Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ED01ADC83
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780187674; cv=none; b=iFQjpeceWT1jVX2sXyUjtjnHEvI4h+ALCV78lqalLLg2ye/da6q/sj8A0zg2o29SxwKStDlBGSFMSP4EsrwBQDpd8WbeRdKC5MuMkTG0C71ObD05q2bhsaOsFGbCtnK2qzN+43bsiphH3q17UZB5d9k+vOe6XDf0cV2aNfEN6gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780187674; c=relaxed/simple;
	bh=nTJcS1znPMPrHvvG5zNfTCZnSzvCl2UyOGbTbY8lung=;
	h=To:Subject:From:Message-Id:Date; b=t1TuRuqBI+SFr0pEzsHbIMPGr+WL0sTyhcQv6Rr5TKmQjx0EUYK966AQM5wiyd5mH47JX0oeKtzWkrWcbXcwhEANTr7gMtBdKnIZqNTqZCxM4JHyZC0bPiwC0kPzMwiOkfjO6N4b/Qsdz1clwxXqm/+9LYHZq1oGrXMh9ZZdvYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaFsc2v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaFsc2v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9ABC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780187673;
	bh=nTJcS1znPMPrHvvG5zNfTCZnSzvCl2UyOGbTbY8lung=;
	h=To:Subject:From:Date:From;
	b=iaFsc2v8z/qkA+5y1q7MN2fgihJtkVU1oIH7r+mVFcUT9P7tb5QS/5JegF/v37bNq
	 k90H3/qBQ+xTh/ibCrhtkbZQV1pJhNyDVfziy6OsRtHkJl94m9WxM4ZiP4l41uTAwC
	 jn5gTWKZoIoi2WirIMUA//orRTJH4Sa49X3/UN2HVrFOk7aH65EaubwrXtgQW5wivc
	 6Rk85EpI7HtKYZ9QvME0c5C4M8GncNhSKxBCEoDqwu5fmkdym0VF/kQ44JN0aTJ2Ob
	 elCBkRUoOyhzyZyM5wisgIUtN7VFF7uzWwV2KRFeJDqje6OrEIiWt6Ia2zBg3NNQZs
	 YAALEyyHOdc7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09F8CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018767369.333.16662656867407999937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9e1bc16cf080c3874e3f2da5f9524e78bb836c95a4fd32de3b85a4aee45d76
Date: Sun, 31 May 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780187673
