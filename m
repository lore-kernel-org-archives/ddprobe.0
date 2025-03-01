Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524EA1E32A2
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740842934; cv=none; b=j4BKQKdvflyDSQZEhRCOSkpGrQiBrdUJGqwwG+GVyxQP6pWK2IcXyCxJJfc0S6QZ0uEDVu1titiQYsY3fpB9NG5LHE64ozlZY+ETIZaSqydw75VC31n0qlXwWKUY8ozszCyhLjFpg5Ev3eSMvcdpTNx28wH2V+JgMz6QMk25eGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740842934; c=relaxed/simple;
	bh=Aa7h+UI2s2HEJsZd4k2voxic0SCITqC9QijRWVmZl4U=;
	h=To:Subject:From:Message-Id:Date; b=JWpLDmwm8kmQMCJ5qC1KoNcEh9c379jr/hRTt6rVdkniNgr/kJNf3fadTXmf8YGWvSGq+D0zzRWa+djbuVA0skRnzUWVzI7oHkeQNXx4wa77ACN6IuySiFkNhwgAAAvy4fAc771lKISx537T5gNLGhFZg4237qRXsmep5VxY/Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxXg/CXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxXg/CXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47F3C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740842933;
	bh=Aa7h+UI2s2HEJsZd4k2voxic0SCITqC9QijRWVmZl4U=;
	h=To:Subject:From:Date:From;
	b=IxXg/CXjOYsJsNrB8GWI4Mki80CccoESJCKN0DVwqgXitjOuhtvmHA1pL+jncUHOd
	 Pgw+Q7urnkwtfB513XhK2p87pLdceMhZbVuBmV6WkXdPxw6PzVtjKQ1+A9ZJR5bhc1
	 bU6PlHn4kmMp63BblMqNU/VssTAhlK36RF7uzkpVvD9bBts1E7qbm+TXCojudTdGy+
	 XU2a8xhx/FFNsqQlFrYGnCyKDd+G6zfE4RlFe35hlFWZAu10T6hPeylJwnqHZVUcOU
	 YzKgvIxpuR9w4xWMu9IFyacsp5Kss9db4kfaD84NFvVceBwu7co8y355fl+Mfyn2nM
	 LIrDjNkS+yzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09EEC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084293360.29155.6383992135914880079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0d7974f5e16a786cccaa1ad75f1569dc395771e560c07e0302b701056b209d
Date: Sat, 01 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740842933
