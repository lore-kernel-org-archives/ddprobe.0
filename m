Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28792136E37
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748159394; cv=none; b=gZ3TyyqYWwCxOBStusTUevLJdzQY+FFo3RiPEzvDyTgiEEvRodoE3ES1OJvPuUicfJD1nh/ibLxz/Vhfq5txcmmIttlbjjQ8XukvxrGnndE9ihxym4JEfD9puMNYzZ5kvWIo/gLHopv5hsNsUW6odOXten8SghPpAiQIzNHJqeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748159394; c=relaxed/simple;
	bh=FzQ0VKzEc/mPEalNRif9T8X/VRgn9feRXmg7hP7TALE=;
	h=To:Subject:From:Message-Id:Date; b=pXLXAVYOYsI1naW46QwBTccSHpoO8vclqlzZSxLp2UiCt//M0q2JG9wZ2TLBN72dTJ+bSy/8irjx3pGcRBfmYOC/PXy9mO6Wt41FztnyT243JaTeZwqQxCvuTdmdUHl7LPu5aQB8fCFc9PK286zDZOTnNJgXI9vtfE+aOJuUeME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOWCG/cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOWCG/cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15FAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748159393;
	bh=FzQ0VKzEc/mPEalNRif9T8X/VRgn9feRXmg7hP7TALE=;
	h=To:Subject:From:Date:From;
	b=SOWCG/cv++WmcA2kR/WAlyDCm6jr9Aqyna2awSQJnnWHJcPnSCRUw3XX/WjZrLpF0
	 EWzBiiL4VjGkuolvuysbacmADM1UzXqoQyjl75/8qaUsAUWp0aw/dmX6t4aEPl3D9F
	 HjDNDDY1BHpBY5BwGO1yLl1js1Ev0hNmKJZwXb2J/sOnasZip+RHpE5h+dOYzwliFz
	 PfwP/D4eGW60hQU3u/A8V/jj2kYXOF/wJNArb3jbm6eDGwGvbBKHvfs6d5s0G9GiZI
	 +ECHDG0+z+gKc8ZlmOqXK6zaB/Q/Lr0ZGknT6w5hIEOjzAYNI37+RyAImTl3MDiK9V
	 gWw1VgpyF4KvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013EC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815939358.21047.11188076774764532907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0032730468ecd55e4c94f9d85c846cbe5b93213999f9bf9951d17770713e230
Date: Sun, 25 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748159393
