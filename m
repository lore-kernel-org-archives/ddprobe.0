Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536D318BC3D
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742215194; cv=none; b=ozyZmiPiQNh1nBuuyPtiWL+MfXJFaHU5jWly34Q6d9SZc3HC/A/Nhr4Izf+Yv2QCJZCDoczmV0/cw02ptXPsni3BPZlID1EhuhccLJkzlfTAzEdUNjk6Z1mkdk2xtZZdcmvuz5H1lkUrqbnv+lnxeaQXYWpW8Z7B5Pe3TULuvsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742215194; c=relaxed/simple;
	bh=1JyJ8m0wIHnCFp9N3UAFRwpCKfdudZUP5uq211rP3nk=;
	h=To:Subject:From:Message-Id:Date; b=ArUwT5qWTIlie1IHCA79WSCrwkcoeLiHFrDIbyUjsCQxdYfCkoA8qd6fccX5aETOdElPmBxOvEAo5nVYiogwSEZGJHTJjWF/91cqoCwBMoE3BWKSkDrdr0oiF0RomEIEJh7l/pK3xnwDAun+RTfuZklSj2hmSSF+oPXsASYbdBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaFvLlkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaFvLlkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC79BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742215193;
	bh=1JyJ8m0wIHnCFp9N3UAFRwpCKfdudZUP5uq211rP3nk=;
	h=To:Subject:From:Date:From;
	b=IaFvLlkqt9A7xZDcwsiaP+6lod3drls07OR975t3iGIzUlux7Krugdh63bcPyiLOz
	 XEB6jxIPsFTqrUZ66bs8CWoQ5t3JgE/x4Gk7p0Ew9doY4+A5dzWe8S1G+wvIeXVeak
	 VS5DKi+5dkJovghuVg94TO0jJnzFoLW+iK/xQNozmt1zJDYCz1mQNXN9b6SASriRrJ
	 gr5MqJqTdRWl78yP3jmy2f+73PFqUSF4Aj4w4MzAM7hYX/Wq5+hmpwTeI3FapwOwP6
	 mi1XDueGdmrmtAAqBqB9XTSmVm/AYrd/1EJReKxYjZzVX/lhhaAnEQVVE9o+AGC8kD
	 lOFpYb8E00p9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC58C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221519369.21136.16329012330282781519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805a3757e358eb039f78d43d60008a9c7d28f7d68dbf98fa24b3f566cfb93f85
Date: Mon, 17 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742215193
