Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1661134C808
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777121854; cv=none; b=LFg7xvnyd6+iytfq0q23AA30YIaA1ty8tN0euahM3XQsa2WfOH8AuHt7UhJ+uL1kFuHVDL9nIMTK0g6p0R+gNXaftMIdwOWc5G2zXrbMSyeOwFcm1x52YHSZk78dhV3bRyyAyePL8j7TjgNwV01tkS5tyMmeLTnQ3tZpLY8cmMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777121854; c=relaxed/simple;
	bh=G7AmnqXDgrC0o3tMr5l9d34t9ocDTGMB7Z08l1IyDrs=;
	h=To:Subject:From:Message-Id:Date; b=GwPnySaX7w5Zx8UiuZyAbZHpY3P5krpR152ynebV3HTKxcXeHOmq1fY2p7LMn4ubpyLSJO2+v4rrNzf7Umscer6rERLd4S2jLXewrRw9u7QL+Bo1nyeCQrim2rzP5CpxDuyqDDQwFvGdZJOtMLnhCM7Zqy05Zdr822Phf47GA7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igioktfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igioktfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60BEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777121853;
	bh=G7AmnqXDgrC0o3tMr5l9d34t9ocDTGMB7Z08l1IyDrs=;
	h=To:Subject:From:Date:From;
	b=igioktfez8yOteO6w4NkobTNv13+hQtnZSDqiOMaYLWtLrQvzJ/cvKlYzOqiEsBxm
	 8955ROQuiRrMNu8vKL/FgPwFeVCJnrUDh2aiHv2pHuYaqrzTKNzHughfTD/taeECSS
	 r9c0t82Y8Au9firtVkO0TRB2hVbeaKV7r/pO7Fl2ypOtNucf+ABvDd8etZyA9dePID
	 RjZy0ZFgtYquwM31A/Bfagun9tYpBni7RNIyg7lKUXwKoo60vBp5w6G0kZBnEQwVLv
	 2DRi8nrBimvkCQDj/AkqmQff3h3H76Yf7BiaWTsBQSre0rLkael596zeZsgdticBGR
	 khtPT/J6WVf4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9088FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712185368.28603.12634979514269266865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3e3ebe2f88b9e0a792ea2d1a509490513e6e9534cf2749297edad539457f05
Date: Sat, 25 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777121853
