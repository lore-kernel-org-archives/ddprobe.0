Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188823D7FF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765159374; cv=none; b=VdR3zwn6HZWW5JkDM/ddLZ1BIGmuyos9IZ63PjiNslitNEhLQQCEZIAsSCKzuyTLLjqdT1aSDQDrbWkuuGxsOR7bUYsw7tOs9rlHqOfrUd1c8F4Qcz0U1Nfqc2WCoOYCxwrMxSi7l1e/snqytiKefy6vf1Og5qxQ/6t10xu/34E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765159374; c=relaxed/simple;
	bh=glMdEZi6K4XTfIYRYPDCsafhGC8DZAteX6+h0HCwiFg=;
	h=To:Subject:From:Message-Id:Date; b=MkuGCwF4hE975BRd4hv/7tYrXlkRMp74zS5ExQ6SIKmdVUDs4MU0IMcL0YyIxs+Yw6b4lapTRKqi4/oWyRif2KI8DUtiYSXUb4QxwuUVCLKUiLV74t5bzcJCuE88c2v9Ivd6Y+E69ycoVPUrRKSby5jJ51OrBOa/x5/nANCsxAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsxa2viG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsxa2viG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F26C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765159373;
	bh=glMdEZi6K4XTfIYRYPDCsafhGC8DZAteX6+h0HCwiFg=;
	h=To:Subject:From:Date:From;
	b=Wsxa2viGM6BGGQusxPD71DlFZ7KM2Ek7+kRFaBQDyiSIbY7biGgWaW9tGu4T5ITrP
	 sF1xeuHCc4mkw87zZm1gJJtVB3oiEJdAQMCyQP7hJA/XGSRIUaoFinaUgvcSLpzsmN
	 grlJbWwYaivEKfbXOkpEccl7psZ24h6fvFPMhztUuvo7ED4xbEjNkQUJrMR0Ez1fTW
	 eXGnKfCcobPfBtd5NBFuKCmcXPFA1GJX7sex4U/Cwhch1D0OOOjWefB9DCQ+9ajwmS
	 YteBWebWGp5SLHBPKzoeiJrs14oH67FodxBW5cwkVl3xdq8y2J/+AZJXp2ACyWNmBj
	 efRDqtc8IkIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964FBD2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515937358.25485.1372164043371452115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e91e2c67c1bc28c59caaf1acc5d4a737051a08f7ff07045ec386365c2d8692
Date: Mon, 08 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765159373
