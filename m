Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8302F84F
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763937114; cv=none; b=jFUUESZLGttnHNDtocO7bKuOUczaMwYIyHiGPZnTYdEfV+s8djPN5jwHxBV7n8BQTlHUPKMzX4wMFPujcRj+nxrUolWAH3Ht0ErWBLuPWrOiMkcZfj0kcUff+mvVM7mpihMVwSUxygqsU65VP79v/13Vsw7tUCtt+Pz0P6DC3Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763937114; c=relaxed/simple;
	bh=lT6wTt0zwBJ3PN97wwuXPlF4m24UaSUhIMxODLLg1rA=;
	h=To:Subject:From:Message-Id:Date; b=s6UAGakAu52FIaGzWeBhOND5BEva1fB73iUOjPsbfH3QYZ33jQIU0FWTs8DF6C23fvUzo+ufGdlucEwEG4NX3diQRzYQ9hS9yVncYYWYNopJrqSznm3yHTwBGszOmXLNEMMZEOQcWCYDqxl7nA/5pAabr8LGQ0VdO1bSkauLyUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQ0CGc9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQ0CGc9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB2C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763937113;
	bh=lT6wTt0zwBJ3PN97wwuXPlF4m24UaSUhIMxODLLg1rA=;
	h=To:Subject:From:Date:From;
	b=bQ0CGc9V8YAmnbn/SpJ9wioON1fMpjYnXMToGZtz1Mj42ZfnZjFH9EDyi8SzjMdaj
	 XSX9fGFP3oKpQNbrWtnkUf80arEKzYuu9Gwssoekp9I0BPezjYVr0sPfQTaAlNQmRp
	 0UTqpwxf14tIhqmqUdwebgiij2MStvj19QzRu5J60xbh/K95Yb/i+WJhPkLi40WpWJ
	 4QYmv62gnCXAo5XG2O3rkULKysb/dLWwyWvhd3eKFqm5pSa49eIJ5E/XnRJmmKL3/H
	 HcnKRR/SPfD6PjfmBMq//E/07tPJk427tiEObEqAKJF1BzcaYyKKlQr14NF0b427nz
	 58ZrCenMvBjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99420CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393711358.14337.3794059291958458277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c3dd8bcdf44304f78b3615f963fd99b18ca0aa68b3047d85fce873bc16a1a4
Date: Sun, 23 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763937113
