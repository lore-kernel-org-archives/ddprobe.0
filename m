Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630C1208D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787107834; cv=none; b=NhCWSFVAu7j4EdK+DEciioG36h/PMN33KZ2OEV698xxO2atLLIFwV1nTvhk7Gp6qMv9j40J0e2NlEPM32w8RdqNYQxLYgjPNVFNK14e/ug9UNT+53JtVX5xzZWb51vzXzVzBLz5lk2+77urejZwgBgZM3j3PR59NBthdaNWQjzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787107834; c=relaxed/simple;
	bh=JmVd15rOXOnXumfI7mlLX7hYz2bbE6s5Q1KyuxY5KUw=;
	h=To:Subject:From:Message-Id:Date; b=hpo3byvUHYY2xTxqyQkig5IsaFBilJPLvJYbnu6sdCFhp3IFRMtEdOTocpp0DO9W1rSfGWTRJMAoedBtA7ttJkFD7CMShqdkyulhZF59R5Qbnecw4WVNRgp7kY3ffR9+WNW7XvELSqyBY3yv+jgrrYKCzix+ouzGqQ+mfmAsoOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzhBdQ8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzhBdQ8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D161BC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787107833;
	bh=JmVd15rOXOnXumfI7mlLX7hYz2bbE6s5Q1KyuxY5KUw=;
	h=To:Subject:From:Date:From;
	b=QzhBdQ8iLuPhIiiS7RIGJlvfa3F1YM32WcDIE31FmlITryQnweK9cWPyHXnEKq0q5
	 Tf8jFJC8YjnhLbgIUVZgohC2r4SiwHc3QlbOo1U8faguu3ka33YdedHuDBny/Vf10J
	 QtKHiDtUtosyRBdOadrg4uuTMUFwPU/6BDx/VBQUpxPeDOk1P9/b7u8lW2ZjSf9kLq
	 GXMZoGGBKg7H2kwFFTVoWafgFLPns+o+1ucYjcwnmS3E97REy6t6DL7W49RSrZUcUr
	 snhYo6udNr4T95VotH5E8MclisFMUj/W+aKCwu4G2sFm0IQHvVsjAJD0LekSS0iZe2
	 gVT/BqVfvQDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB874C5DF82
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710783369.24866.18024614603771439931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e62926e0df3111e0d4a9f2f9fa7668165a2ab141c0311b82a55f6be0e83fd66
Date: Wed, 19 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787107833
