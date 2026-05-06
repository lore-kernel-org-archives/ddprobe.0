Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAF2480DDE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778077654; cv=none; b=NSl9hXJHj3/e+V2McseZoZGtzIITPBaz7upry/7qqW32HNKV8c97tzL8kLCLmGHD4AQ8TrJ0VyImBdBWCluXzSsm4l6GKocz0I4TuMGl7HXcKWraA2Ynd7+7t6RRlZdhZ65dMrBXl8JbUXK4e6uhgfn08xztt1QCAp3OaZ/5khM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778077654; c=relaxed/simple;
	bh=nXt+ZiqkGbHFyJwWjaB8TRXNSmH0zszKb9mSsWFwgy0=;
	h=To:Subject:From:Message-Id:Date; b=k4twcT8VqRKMmaPB4Xz5dxiVjSUN9CfyDw7fRWyKi7XASe5/MvYKKHwl8BZLTAsWXcT7a4o0N7E4gjDCc4evIrixkJeUlNKJLS+LgjauNHkOJEag/fuzprvddNmJNzIhdhem8m11iONlezoIRLHqa9BXkva10WowbhhkYuzBzFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcRrmqjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcRrmqjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF35CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778077653;
	bh=nXt+ZiqkGbHFyJwWjaB8TRXNSmH0zszKb9mSsWFwgy0=;
	h=To:Subject:From:Date:From;
	b=QcRrmqjICuFQP3qib0t+pFzRinbIHtoCQ4/b+HkTD+NaIM75r6Z7mKWBwT0nJ+LlP
	 wNua1Nn/vDjOxVW8teaeUnWeaBVMz1ze9m3zJqTpoqdJz9Fo7T1HqF9LxF75NycKid
	 OnuCNlux+8pkfZPXVYAwVXxDdJCoUAZEyXWdjiBfdnqcCYwIsAWFBWY6hcnQjPLpX4
	 UwBP7E35gXIfOz+OhP7tGN3WAJn19Qdxf2apKiUpz7ICrxTzkUngmiduC79bWbsxEL
	 0Az6NyWQnFXqNuit7qTeOB46729rnco/ihEBfyhngQstEg3AhL2qpNP2AXUbaY0Pqd
	 4F59L/+nQ46Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A5CD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807765369.30736.2647562483876607067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aac02592fa6be04a0c6626e8a588d1763ec5f47326057238c5e220fff621d84
Date: Wed, 06 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778077653
