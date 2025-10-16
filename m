Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E7F3161AB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760623194; cv=none; b=PFG0C1uLCzpd7CWzo9Pd+hL64uJ+SG1qYnX4+zo5Lr7motH0sf8bwXcLerhc78Mr8rGtkgyxEvmRtVHzZ5QHGjCPLsB00iCNJGj6B2Bzqy6wqOn+ux0Qj/LDeOozZvth3kIpw1n+dueM7wttWiPnZCQFtJeSrzrSPtu0586pZBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760623194; c=relaxed/simple;
	bh=8oM3bHRN0kIwa+baciCPz9L6+ja4JKVGCfSFsbpZ0fU=;
	h=To:Subject:From:Message-Id:Date; b=IhVXV0oliSH8VvWVC40mZeuqoH0YP/8d0gYodACtyea29PbMZ9FBq4+XxQOV8Unm8da4QQbjsptgL3ozcCilPtgtAI6obepxYzrsNdZd7eUGw5XhiJkW2Clv2a8hoxm/181x6QsqZ4Xbku0oZybncWpRCoR66JYaVzN/m/agofo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2DNlYja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2DNlYja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA9AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760623193;
	bh=8oM3bHRN0kIwa+baciCPz9L6+ja4JKVGCfSFsbpZ0fU=;
	h=To:Subject:From:Date:From;
	b=D2DNlYja1Xw7KC8aUqIIQpQasbVd+i0jlemhxdIDf6YsfddLaXcqIJZLgPEGA8Hcj
	 EfZ3LpTVA808YYimmMy9xjcZXq7tGViOWGmAXap6FYjApZNNetulx8wuRHpIwg3jdo
	 +d/VOztwgk7/Hho/gmRvbz2tS8VgdbyWdf6EpKP3iZLgYOOkZGnR7TRp5uHcDTMKcA
	 u7ETk45zECGIUYKcHAgJgX+Ly/0a+n45H2z8EYaNXlCvH3N8DbeFfeRmq/DbHxJkFJ
	 aLto11ZK2s6ZyvjNm/bEh2sbeGtHm7vR+wdc/tirKznepAJGdO7pgWG/IJHixQ8E6h
	 7Twc/5lMuYTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8FCCD195
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062319357.15174.4640199247320967708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484c85c8829e3574d949d3f688253e05a3a443b75f4c61b102808f4f17ad2bf7
Date: Thu, 16 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760623193
