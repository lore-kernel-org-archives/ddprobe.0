Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A04713B7A4
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715323943; cv=none; b=Sf/jHQIutGElbuD6GKUmVLELlzlJ5j9FQtLAX5h8Rx7UHnAkicmBZJUKkBguXaRSRKVuOlfLKJpunA66JNt2uYIOvu16+DboYCueH7J8jWQGcwa4KEHwvXz/ZUOYh+oKksEK9Z/TG/zhQNrZheuAKnH+cKo1kpfMWEIWAzuWNkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715323943; c=relaxed/simple;
	bh=qC+T6fuPfNxSk3j/V1l/CeF7HU8m+cn3DM0JO6dwRIw=;
	h=To:Subject:From:Message-Id:Date; b=OySBUZNdaIgAkP5poH5aYnopv6t/vzo6+2WXf8TsqVea7JrrIMeMoAcaUtHIRCXj1QTFS2s1t71eRiyGHinV0SsjBe4HGpZ2qIRbswGIkLYg51OqBDAykz7NMni/+ehQuR8oOF+CrBPW+foaxxqhV+1Xjqi7peMYHRdQUKIvqhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugw7vcdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugw7vcdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E774FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715323942;
	bh=qC+T6fuPfNxSk3j/V1l/CeF7HU8m+cn3DM0JO6dwRIw=;
	h=To:Subject:From:Date:From;
	b=ugw7vcdRlwgAdKoO9skjjWepYMAMMrK1spWrWg4b4uUuJBqGeiDtzNIQ/mpJJkhJ3
	 BpwN+fYdwuZd18OBl+odbKxv0Iq94tHMfLfnERAFF1WguSeS6LvaYm06jk5nAChf++
	 sEUHnNN6Dy0NB0cstyAGXckalUjiN1C7TgZOEdxKHw8n5lgmEJlrI8At8i2IOFxAna
	 BUz6jjpfYLCwodb5lP4nsCESzK+t6jysFvWRLFSKc5c7SzqEExmFcWT8SbQ9uKSFK+
	 /n4vTqb33ea6VduzwVH576+y7NpLKy2IN8FLissIs+IWQgRuIQKm4fSHvWeMTU8TYX
	 Qy8VwCkPCJpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA917C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532394281.772.18014457340826252364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df82963d65ee42367b45b612ce55026db249cb6939757e3c1cc032c2725767b3
Date: Fri, 10 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715323942
