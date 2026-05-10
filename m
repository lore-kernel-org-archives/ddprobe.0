Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F140314B63
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778451634; cv=none; b=G6H5AK9sVuW2NHvp1qlTIsXqKcMWOLZFjm+CF8JEyC3WjVk/Z8iI1taM+TMFPb1s4g2e2aCgAQibXRow7h3UzvI2LFtdsHhiqne9VzqK5BMZ0teqppUMziiga2DxcQNKz/Smu3rkqU5xq/mLrZ54TIYLfUH43+5kNohfpYB4Oj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778451634; c=relaxed/simple;
	bh=OzrAwzs2thMY659cOs0NRSYiOmQBKP7PP6O/S5PxHmo=;
	h=To:Subject:From:Message-Id:Date; b=pWDsRTWqHy/Fjb6yoWScYzx9ch58jEh77hQc5BQR82toxAisulTsmDMZ2s/IfGNZEwj9V8drqxHw5/I3GvrF4tQj0VMOixbmpH7oC8vqhXq9m3XrfZyZgAIZC2OMtfytBmO40xhSFv8wJa/UNg5HRkbn8EQm1KnyGTybW97AKxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIukLGCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIukLGCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4E7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778451633;
	bh=OzrAwzs2thMY659cOs0NRSYiOmQBKP7PP6O/S5PxHmo=;
	h=To:Subject:From:Date:From;
	b=kIukLGCOCsW+0oH1LIP/YU3i9VH3IvD3GIcpUiaud732eKDiH8HMZC0VpaCIh3VrV
	 mm9R0Gcf7cvHIdAI/9O3FBK7cDzoTYvT/Sc3QAnZijLGZ9xNlIOBHdI9dNOzS1rj6X
	 FlS33ylOFPj73Ib6zU4uJVHHoq2kGztMSafJXoMZbVzmtHQYWhTxPAncarHtDOkRY8
	 SiI1LRimNlEVfUkD2cu+oN+czIHFqiDXfD31ovKIA6Wqxu10DJPg5GnGwEAR3Sj/hJ
	 tjlPybfopkcQohzBUcE2xvEzctjfXJJKN1NgsR4koB4lTRgVIpcu1CMG3nlBAfsVCX
	 d8Nz8LkUmlNfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA191CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845163368.11357.14400430874418416005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c82138dc37bd071043552741091b16086b228dfcb07a3f2062ff10d8b98c0e6
Date: Sun, 10 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778451633
