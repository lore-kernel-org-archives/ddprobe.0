Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C7736BCE2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770648234; cv=none; b=TsYsADy39FiigvXDldysJ8jz8LP3/oeJomNKpjC6BrVBSI+zrtatELmv/8itWe3651oyLE8SGhgaImthdsqQYadcjBOiNiZzAAtL9POrRmiUncuyD43aYiezVoeXjCLINcMLdgarJu0wb656Zt3sPr0eA0d4+kpA5QhachDiF/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770648234; c=relaxed/simple;
	bh=P8OFrhmTlCaur+PoH7bTx1E9Ihc+jaP7sxpbK/HT2KY=;
	h=To:Subject:From:Message-Id:Date; b=ZhlHOK8rV/xzslpscTQHwv8CXpAepifvkKoGmezwqeqtRQteQhL7408q+QdOh70bagOqXqTme4S2x2r7uJ1ZChRYdPN6k40E3uhzdNLVsRSEQ30Py17bod9pa9jiMbJQG1fLSEvXH/wTO06eZC3vHOCwOntsACRdsCrM0MUGxHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAzCoGtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAzCoGtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF75C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770648233;
	bh=P8OFrhmTlCaur+PoH7bTx1E9Ihc+jaP7sxpbK/HT2KY=;
	h=To:Subject:From:Date:From;
	b=pAzCoGtqtxeMCC6e0DQHmBGZxKJSXpYXwhO8cKsBon3PJtmWyFjD9K5BzrvEOG31b
	 kYgli6SFq7GSS1KDkCk+1L+OHxybdtEZDmSLjBbvdsRWBvvaFN8LCbBsFO87+SbebL
	 LuU7lEAo+7rEZcxrZL7/VXpp+/kl/vQgzvn5dNmd6bFJwfZASjeowryeMzSbHy+l1m
	 WcCRRKsm0fnU5IvwiAl+xes+HeZi9YfHBgPR+RoLTrefHm0m4+zXfLCR2d7F6s5DwZ
	 6Ey9dqMPUTpuDeVFBG6JmdgR6IT2HrwRWMHACcuV6cxkXENYoZl5ZI1WtGkC7+old/
	 Bm0fkTNnBnF9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48C7E81BCF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064823366.31205.3582056190621994921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd58c4333a67d5240aeec4eeed847d4a398389003a1971f54c1e5e77fbe746ac
Date: Mon, 09 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770648233
