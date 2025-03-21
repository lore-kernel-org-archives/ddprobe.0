Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472F5225A20
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742560194; cv=none; b=fBrwN9WVmM2CD42lN7RcqF066oJv36UJDQ4s+lkZ7MUP4SR4KVtWTF6nez+wcMKjMn3GVaIVFslAaSuhHKkZ0ovMB580ZW4ztyuIvr0AMhXke5aKwbEGgupzxOkk6vhCKuz2QpRscJhRqEpZCXhiPmuxevP+rw6oepNSDV2TuUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742560194; c=relaxed/simple;
	bh=1sOCRP84dTJRqFLOtS6yz5jFUXDTdqkL42Awm4s59NA=;
	h=To:Subject:From:Message-Id:Date; b=qUdfKSTayYn143OfssuV8Y2Et64XwJ7WHb32aF+BsYzvjOXtnHJWUJjQhdjQLtWw0I0JtHish5EHUI+4yPGQdga12nux2qlVsN9jEkQfJ7so7mqowxt2EqASoK7jKenr7g65/H3nO8IIHadT1HOzUz5xIi0T3NDhQbH8oof6QsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMQdSA9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMQdSA9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742560193;
	bh=1sOCRP84dTJRqFLOtS6yz5jFUXDTdqkL42Awm4s59NA=;
	h=To:Subject:From:Date:From;
	b=iMQdSA9eJ6x7XvEjGNQ1yrYjv8f2UFmW+F9mE8Ph6F/xC+gufjtURc48XRZUbCut6
	 3sFNps9amzc1iNZ2PMEDTlebWziwI4b9M8a+dswqjTTI3INYm7rn36UUJce805nVEu
	 SP/XzuRQMN7WPmek/RkfC2MegFVYu2KMQ3UG9P6JuQHZlYaulS0MzXuFcv1vSs34Mj
	 mdtD5RUrXACvtVvj7+nGASbjnTFgKkcBGlhvWQ8w2xMHSUUF/VEpklO2CSCnQiWdus
	 NtQ80MeC7197YoXu6EAHfQvtOQuOUmbFaapNDuEF0FR6itf1s2RTxI77FiAPy6xVyb
	 tqWhjLtVT2yHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93099C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256019359.15956.5545141915007941180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ee20ea612064a6602e8816ebb7ccf8ab6c54621c8823e51742ebb1a5fc6b4d
Date: Fri, 21 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742560193
