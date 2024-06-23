Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468B23BBE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719172343; cv=none; b=rn/XxPsESgOac/d+uraHsuIsitfMxyMZSsgjnlxdzLwbLJsJ5zCc25ico6ffjPfR3vAFb1jxOR4z1uYx3qUh23mvbU2yb1YdFxn7zuXo0U8OaV0u2fwsULULGCD0RMwKKOiv6WgFNmI9GlNwM8pAwt6arY0nkTfFTP7exdNjEW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719172343; c=relaxed/simple;
	bh=s2JEPKbMquUzl2/3e+Va82FlLZb3hk2waDnj1Bhqz5k=;
	h=To:Subject:From:Message-Id:Date; b=huRqPxfa2fjzNrl1wfZPbAPz1nyik9dpqqpOaJ6izThrGdD3oLfLffje4dJZmK3zaZRfpfhTN5zWJ6qcJEE4UMMft6ACQpnlBFADWz57VDshD08QYhXKDhrgZWyNHSrDvykUYY/dEdk/rkCaScEur8SMFMvAmDFPiHz6Rwe8y0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfBjfd3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfBjfd3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD611C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719172342;
	bh=s2JEPKbMquUzl2/3e+Va82FlLZb3hk2waDnj1Bhqz5k=;
	h=To:Subject:From:Date:From;
	b=IfBjfd3WnHh6eMmRAPJFLFGbXyRUrLBMcf6Iyz2jnoTi7Zfv7lIQZYxOwUb5QgDqy
	 q7g7pX2bZspk8d+A4ugGOwyLntIrJiodv6/LudfI0HEl6uzCcFxmOovckmmHMtY0lm
	 hFl6SJtDU4pD5VORLVpAQFWTqzkxQ5mB2D6DvkAEYWSM03obid9psth31IthC3tk/9
	 8es8y70vdiVsNR7aG4eHGmdzQKrP3+q7Jp3OAOCAUJeobG9khNaqBDXJh4f20hJlAv
	 qhKlM74WOTJCTg/iI9/bszg7Jg76y3CvWfEmusdtbE03iG7SXz3uYHm3Y5gF0PiM/Q
	 mQiOuOVvtDw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E96C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917234279.23469.1665263657820085071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988a8b35e50be9aecbe91d02c72c3a17eb35fa68be191d5e31aa6fcb4d9c51b2
Date: Sun, 23 Jun 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719172342
