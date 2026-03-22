Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F0364026
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774190094; cv=none; b=QiZTNbW+3j+Sd5MLxP9HA1ZDL6L3VZJSmwrsKAHm1wkF0o6I3nRn10sVmmvo7VRPI4bdAj5pK7+ssnhVGJ9orLGjSqTvRBOXSYLDhGnD4Y6XGm3TnmiX6Rq10DzukBdJESe5pJuQNUI9MnwDwix83uuGHfBhr1EidAm6Ut45DdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774190094; c=relaxed/simple;
	bh=GktPfMXCzH9H6/ld5h71l1u+dR/MqidxNfnZZl6fC+A=;
	h=To:Subject:From:Message-Id:Date; b=eJ/JZvmJTeeamqR9fzZVC0LcbrtgoPLoX9hIfDN+l84f0fVpWXOoc0VkBG1O/rnLfDYQBOj+Y6G2m5pRVHr5oGmesGWb6eo3YRz0gt3seS+eEQRXspivi0OBYSA8TNCPaK5wBQRpuuyq4Q/pR9tiwZ8BkJmf107TT+F1LIA3aX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKXI+7Bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKXI+7Bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC872C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774190093;
	bh=GktPfMXCzH9H6/ld5h71l1u+dR/MqidxNfnZZl6fC+A=;
	h=To:Subject:From:Date:From;
	b=AKXI+7BuG2gUKV5S0J4suqpZTSOPTNd+ZJSKLRHZfZt7prZAXRkflU48uHMibHCJW
	 WJGyPbXbG6v4g0sSx9WGQk1HNosgxbCBjBtqZwTFGo3pC9cimQDcidV/XXHMfC42BX
	 boGuosGuWwDyL+6PEziGVszwbQlyxKpNGDDzctlQeDb9GaRoJvPy3QAVAr+g5YBWJW
	 z0NKfKgIrWT5rku2K44qA7J+A9deTfQ8HwhjRdBnU80J2TjdIZvEB2Boi0dvQNLkpe
	 CgolTzxmej1kkjt4JOITr2LVdpCAM8OMVNrbjGdD6ladfk8WOY0WTLrhb89H6zhc1x
	 N1MQBoXqsiEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2715FC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419009363.29785.13329754802444541608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a107a6ab93eb9dc1c94f216a87203fe429517756200a7189d1a7eac6df533a18
Date: Sun, 22 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774190093
