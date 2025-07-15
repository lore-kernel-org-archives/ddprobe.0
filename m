Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8107E27584E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752584994; cv=none; b=cU9RRSkbpyRNNbEqaTwo+634zeoaJHdryBt/yua9TCQ+xHRnDc0pk8Ad9lWnatJbI1NDUok8N+0inboR8byH2cX1L7G2rOgj1sa6YZQUDjJJBGWmykBtCCF9QH6SQpdPJq7mp1ZXjnYZ0Fyi2NUk/k8t+fdwkA6xS60oUTwqjR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752584994; c=relaxed/simple;
	bh=zOEebE6L1ybqEM9qgpsqIXbTWepJ8fcitXUd7/7Im4M=;
	h=To:Subject:From:Message-Id:Date; b=uI9fszki0e/e7u4sXtqgbX7ZuWUjJTQ6iETi+YXVsRLmK5RUa8e9n7oze5Wd++fmU+6YXN++IVBbkv662tDcsqnVcTP4dV+TSH+oM2yeqddlwmysD33hfD1FVz8x4/EOzzkWIJ6Kt22Us5Mz7UMl+ZlRg+iBlHR8GjyW7cA/5ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbAUboSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbAUboSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2537C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752584993;
	bh=zOEebE6L1ybqEM9qgpsqIXbTWepJ8fcitXUd7/7Im4M=;
	h=To:Subject:From:Date:From;
	b=YbAUboSV86BOce2LInr2RAhiP6b7LQVljJLbAo4YHjhA6K8ltm5F+fBNid8ChiVDd
	 1o6YebuaiLbgFig/KAKvTIe4pR2EnVpvVVV6imucawk1/6HhlrR3FFLXIJcQpoWLwn
	 QhugT0lyqu7ardS2gsz2mev4/mH/wGyGl1vw3IYtYr2DftyZnPkwF8kQYCdDz2h7AZ
	 gJ9swcusCxmeQHQG9/oSB8WwzfeMA1VLwKpr9sNAIgBgcJTqtLD2StzZop5by61xjG
	 jAZWul8NHZ7KFv2nHengqqtEATMPA2Pe0uyl4BDNmmZS62mjlTg8AhiymBPT4W4Dvd
	 vxQDfAitm8f1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7BC83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258499357.14982.11772258640733639067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f385594cae27f8586cff594996a325bbcda7aaa643a709a42a5abadda660142
Date: Tue, 15 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752584993
