Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490FA346FA8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789624834; cv=none; b=gU82WEo/oWb5JsHbzmg9cef2w91HPrMXFQzvuS/4/AkEfC8fFP47Lw+MIgElWLHoKV5mXGCq2C0HtDncj1JhVOWkDLV8+Nj3ih4aHElZMHuJTTNJOncsbOR87DikbKLfqfJaIZVGnxH92A6hIyfW2kk6vQp4E9Hna1bQStrOLXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789624834; c=relaxed/simple;
	bh=H0XgRQQqWV4SnA5rNghogfWb2gizdhIvsb6IVEIzahI=;
	h=To:Subject:From:Message-Id:Date; b=skTPiXGBim/5gC5AZbKUIS5s6bJmO3JPDbTiZvBUp0vKCBDXLQlxyCVcVYXdtj70NxsSscIVEqqBA5sSuuTdneMnck+LJhUEZbTV6V1jvqWhhjshQ7rXYlR1fig2BAiiy3oYvYaRMo1tCKA6Ckjqw+xZeMQr2pxDHeu2L4e2yFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TACD9/xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TACD9/xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA1BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789624833;
	bh=H0XgRQQqWV4SnA5rNghogfWb2gizdhIvsb6IVEIzahI=;
	h=To:Subject:From:Date:From;
	b=TACD9/xbr4WPGXLRyqLLhaeJHPJ7lTIXvFMM4GQlZK2pFizG76mQa4qzVkGvjAr2A
	 V4zluiMEHZXazyqH2q0iRTsvnzBzvXPCCeQfNssqS/+91bEkE6NNvtN+hsB42p3OAS
	 CsEUmkMUU3jDr5R1zJ5d6RwA3b9SA3fzLljBZuQ1HHo8GIdHY/9qLOuYFopFlShTOl
	 ZRkRdO64ZXCdPvcTgV84Lq/+OBSy7JtiwYgx/Tz7fcB7OdDRaOzdaYhlf+H+dpFZug
	 Mr87drpQCuz3G8Am3XyMuP8hEsSuZy+KD4zVc2vGiK1rJeUoLnjIO+wA053JK71BRZ
	 sZWQmk9H5m9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BCC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962483369.28729.1029388679045794836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdaaeb4c93c716a97b4d6f8ca581aadda351d90312ce259e1d3f2902cfdd1f2
Date: Thu, 17 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789624833
