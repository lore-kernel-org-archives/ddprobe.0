Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD22C234B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770090834; cv=none; b=XZAJ5eEbN8J2gImuNd4GGh84w4enmwHzwC9GOgLHvOpHNx7KRBUxx5lpNd8hm8LUTO+FFy6un+Q0LN0qZp4pik3frE4iuOf/YOWUApGV/TL7rLW5ou3+22ODUoFpLe0MbAqXp1efPvPTTXG4hcZAAbHaHQ39EfVBNkM1Ei8zNQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770090834; c=relaxed/simple;
	bh=5+AYc90ruxWwdYyIpe3Xy0wE/Myx9A4TF0WsFfHCB7I=;
	h=To:Subject:From:Message-Id:Date; b=unUI9VW3DvKgjk5J4NeFvsmVJ3h5G8bCSWasyP7l7sWRKuL/zvwwaVfahOiBFkUM+jyQaazE7xtlFbiYzBYQjxo5YLu6KKYKIZ5Yh/A1dkw9fdb4olnebpDuRWNvrS4kLgA/nvcb3I9IRi+D4Ob2duhkGGWNloTRqB26rc66Ulg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vojbf/Mv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vojbf/Mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBCEC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770090833;
	bh=5+AYc90ruxWwdYyIpe3Xy0wE/Myx9A4TF0WsFfHCB7I=;
	h=To:Subject:From:Date:From;
	b=Vojbf/MvkM0jqRoYMLtqMW+tyWb3CAX6/yrKew/djBx0uABAQuzQaMT8QPHvt9XJB
	 gvdyqRz+WHtGUBjUJ5QjCMiasniQlMcGg1DlrrPP+bOSJt+daCC5zC+JV6q/bYTWBl
	 avfYP6behE1cvnBsOtgiyK8xr8UW8N2W3ZBEe6AoeX1TAbk89aLfg09YmvmquktWre
	 k5nG6y7LvQMDQ7lhR56Xwra9Pfm3oAYH14UUdDoNJRv/QQkJlW69nu8oop96ZPmFzX
	 kstm7nASyWJ8sraSzyJTLOou+S3Yyh1XJ33haOAtmY35HeXPcJG7OZjJkqn8RZH9Yu
	 1OmuV9/O9HWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B65E8304A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009083360.25896.4484458877070609126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54d0a0c13a2515afeba2994949e6e4fc0039f724e27b683967aa544fdb25b13
Date: Tue, 03 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770090833
