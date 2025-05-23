Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A85D1A3177
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747984794; cv=none; b=sWfSpWSz095EohkWh7VZXXCBcEfnN2+z5f1eMBOZ1P1UgvTKScduj9kZFot9eBD/6kmwk5GDAwELhQ5DzibxTaMLSLyITQkF9hLnMyzRJ2Ywb5mkEy3vPL1dZw3YQ8jZ1Neyula/PwSbwu1aAF7sQFm5uz8KjQ+AKm3TcZwtL9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747984794; c=relaxed/simple;
	bh=eIuQPCuiQdVuVk33bMnkPmCHJiqebbgy6l9N/mwKOGs=;
	h=To:Subject:From:Message-Id:Date; b=gyMbbq0kFpxLMKdngvzN4WvhqILqCUOoka88wxioiapJi36sDBT7ROLIL8M0b8PvAJVuJVUEC4IykAR4Wfgab69x5xvb2GdNl8Se9lswTa90KNSiQOjSzM02ooY3ZDvhV8T6SmZoUnflnKCMmDBH3DERvaU8CXovcrBxexyB0go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8ohUNz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8ohUNz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CABC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747984793;
	bh=eIuQPCuiQdVuVk33bMnkPmCHJiqebbgy6l9N/mwKOGs=;
	h=To:Subject:From:Date:From;
	b=S8ohUNz0CYW/bm+M/OCXNEV3bULjphwTNiWsjUBH3EjHoo8Ep4+jqOMR+0EuK//O2
	 Tu+5KJr29JFYFjf+TlVafSUjo/Pi2slQaVrTKe0QcUlJcgQu0uKjXZ+x56jbV1ZSe9
	 5RU7WFlFi7SoOA5tMt4QzF2waamsUS/OdZ5ia0hG+gu1wLF+VtoCNzId8pLoWe8MQA
	 QzGu2U/FSSGV+guqM1xKVoNVn6dg5q8XK2r/HbIZDqUI0/fuIKd/kfBn4M3lLUz1qh
	 3XqyCd0Q2vxDqVOfhmO54QHHjakn4brmP9/5BjNPPyjWL8HkrC2pcoyVSuoYJDG1X8
	 E8mAkZSRwQ8pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCD2C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798479363.31597.12566026497548450068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8619b2e4564d1f8b0c8ef7298ca0089d9173953135e9d88d45a092c255d289e5
Date: Fri, 23 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747984793
