Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5511B30F535
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788091234; cv=none; b=hf6D8rfQCqVDr7OrEbQOhVIIPfOeQswUi+ttkXMhFvGBjwowNwDXETdGP1cmauGhxMccFbaabbi3GPxE5U4MrkKicTuYuMkHJcemw2UtlAHkd3gBv7RBkAj8V9mnyLSYX9Vg1I7B0KLHNvIQ5D5ZAP8VXtkOHU5vQJm3nawQswk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788091234; c=relaxed/simple;
	bh=UzluIpZNhTfgBAFTAeO819QxbgeRkDBzcKrP1Ra/z8o=;
	h=To:Subject:From:Message-Id:Date; b=sKc6+iCZLemS65D98wf1vtKg0os97z18Dm1u53RCnxe5GmJSWWJVtgQ1/4z48XcAexGmwNUL39lH0qZ0LxsadxeCTnRsP8YHWb87LvjZb72IEhCZF+Q7nbmttzk2w3AS0xvCn6YruCeMvMhXDJfqV+hPLEWP0rLwRFlsoBV3Pq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/zseyDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/zseyDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD2C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788091233;
	bh=UzluIpZNhTfgBAFTAeO819QxbgeRkDBzcKrP1Ra/z8o=;
	h=To:Subject:From:Date:From;
	b=P/zseyDBt71knIBVEjDU1dFtXy84E40VCtlSaUSkABc5tXJCEkb/seOyBG7z9IjGP
	 drM4E/RZX7xfSj9bdPm1lnPROzqmsy1ymYCZJxtE4zVjjYGzEjnmzk+11ycmmLZrW0
	 vfj72Xl3Ij9kTPUN2BV9IsOj0+VcegIDedDPqmJ7HM4FzVLEmeWc74qJCXwg7s9KmI
	 tmKzjLCgtG4Oyc1kp5qvVr91IOpAmfdd4cimF3V4kdoH4Pfnd0kKVJOBaFdetjrt1+
	 OWi2oFP+5yrt5BZK6BtrKMDuub2QF8mbgPpCHYX9fu1rBaOHFfsICDa8R+QKJetvXa
	 fG5Wp7Kb0dEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFC6C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809123370.22616.17474117870925814225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d510ce95934e101fd5822129412c5d84aba64c7b3bb6d674934a2b301aef59
Date: Sun, 30 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788091233
