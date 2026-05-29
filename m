Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566E52E7381
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780063954; cv=none; b=CxbQfqBO+mAoKb+bOkXT2qBzKjsvM79RpbKtnUBJo5J4MBJIr4cjikLQABkLym6tXhtT0eHyWs1npMxjNuJBCtKXgI2zTdpgRlGHsN6rCbAgR2/vipuC3djul1E3AWG9aEYBaeB0KT1/+qPEmvWviGRyjQf7Jmsx3ToeQO9VwYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780063954; c=relaxed/simple;
	bh=Gp1grZBDHk6/ULleaUc4j1AyH79Elf32JMG1XtBk1lk=;
	h=To:Subject:From:Message-Id:Date; b=Lv6ksQm0GJsIwe3CcELkRNOGB+zFsM4S/Q1/hzeShyy77yJ5rwVgT3ZcKm3YU2aLjiI67IrLSERNIkCL7I7A5g43NeRiE3d0v7ChgWbIwfqGJkZEBGLjSSt5tKBjqrNBtD8bvvEsqpdRB56t1IUGoHHt5dEbdZhtYBLwHeLXWvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNSEEB1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNSEEB1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE320C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780063953;
	bh=Gp1grZBDHk6/ULleaUc4j1AyH79Elf32JMG1XtBk1lk=;
	h=To:Subject:From:Date:From;
	b=ZNSEEB1feP9/K0672gLWZAgM8yPedLRbp9wZKIkl+svoDGTwxQC2Cm5HO2im3L1KC
	 hUbJCqcIm/AB0nNl7NB0/5JyESkwVr9lsoh4wIlvuo4JfB+LGYPaj1/4noPhzoK29F
	 TGczofFlXXsC/HsK4R4Zd6pzNgHWg/8S1oQQz7K1W3tDwqxKK8TkP3QiOhT/xIG5Tc
	 IlFWvdEOfuk0Pr7celh8ykM9grWOsOXwUjz6kg3+y406k+eDKHVtq0DIjSQxrnjZyR
	 xJIV3RiljsQe5ca5GqTdejNk+PRW+YrsQ+XPFVvOer3ctx1ANPEbSxF6TqpX89U0s1
	 3EbHsgDVX564g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF871CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006395370.20032.2821563677198968577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c5e6705f7764fc30128d40fb337b939204ddfa3f43771b958d5255c27ecfea
Date: Fri, 29 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780063953
