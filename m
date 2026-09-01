Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6658A47424E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788251434; cv=none; b=Qosnql7UmOQMDJank/1c929ejcB7j6zstdLEC8psB9UeNfoozim1G9v9u4/dZFm+65lWRcEondS5+kGMQHHosU0s5ubKjDUunSmMPVCMzL+cJ8It75nVUpvL6zksg7YMNIoHqeGaw4fgQxWqnrnu34GJYP6yXVA4H+G4R86NZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788251434; c=relaxed/simple;
	bh=dck0EX9VxGKS6IgfiEskUutzUq4mhCaPWQ3+zQnPT/A=;
	h=To:Subject:From:Message-Id:Date; b=MBuu35Vrbq5MdLSdodF4q5T0SKZOuh1QfvVS1op36sLQgblrYEVR62IGCzKYQfLh5DBXOKu6zalPK9vQvgOScsEVEaZ4ZDZF209uH4/wEVQb71wOZH9lqxgqPDVHcTNr0ewTwRwcHD1rYy2BXik8bnmgc4zArx/GejYzMG6ARZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXKKwxmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXKKwxmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA582C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788251433;
	bh=dck0EX9VxGKS6IgfiEskUutzUq4mhCaPWQ3+zQnPT/A=;
	h=To:Subject:From:Date:From;
	b=ZXKKwxmuPdJEahnuDrEIo4Cvf2ZId/wk2npatsNSvo0LPHD1NLWaHAFK06Pz8cINO
	 z2TMrLQa0ikYSwz70pT2YfybNcykbd/Gv5LQvw1hI3pWoAbR9HnXjdYieonUyJ6FSh
	 +h7ywkxYAfxBn5ZVdXgLdLvJKnAEc6acTqGUCNqRHyzHKaZ9LYnKEbdfr/Pkqr+zvn
	 Xn+OdIULZTyfGTx8AvUwgzymbW7Rn/Qklsb/5I3HtwfBRKClE7ZsX2pM0E6M9HKfoq
	 6ZZt/jxxa8DiNvSPoGAfnj4a7lIuXu2BStcpHnMU3SBA61P8LueHMxUAwYgLSsE2cl
	 SD8DmziVcbSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD0FC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825143368.28554.5681716878555268072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9aa077894daaeaed5834029771ae9ed9ecddae6889b44a33c65cb4542464ec
Date: Tue, 01 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788251433
