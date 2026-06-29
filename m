Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DCB308F39
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782737314; cv=none; b=PyDD4FYJsZIPM7eD8qGQyq6xvXZObQGOxFTAJVMWMsjCAO1hhOvD+b9KMfnOnpUsFXW9b8iiYmfWIe1BsPYNUEXEdLdqWXj8Yww74Y9qsNsbFdXqtTmTisoEL62xJ4D8haHUi45TsTjc5YGZFYuKluMob/cYK2izUNeogLMLzis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782737314; c=relaxed/simple;
	bh=wkwGE9smfZqX3kZ4zho6i9lHSbPLKOuD1rd6nVqVxFo=;
	h=To:Subject:From:Message-Id:Date; b=PvvxLbosJnvD8xuPnol1U9NYGvkdeK6kvLVBgTqsyj6Eak7YOyA8ogAN0XuU/PYjdCcQAxYdDNEWEcPSCv2c6skUsenGCKRkTwoG8VwpKWo3aFQ3RENRjt4KXmkdzRMioyhtEL2NM5Bv7yF+047hwRE1XRxbEVjZhbjySYXyJCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+QSwqeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+QSwqeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEFBC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782737313;
	bh=wkwGE9smfZqX3kZ4zho6i9lHSbPLKOuD1rd6nVqVxFo=;
	h=To:Subject:From:Date:From;
	b=u+QSwqeooHRxuz7IG8y8/I9K4e5jczL61tsAzlC5C1sp+NjFl4l2igTFo6/gO0XYH
	 IFzzPkoLsO1b0eeQLUR4LYO8p/uhp4aLYDgU/RX4767J1VImCbdwNYc0x35vViY1HQ
	 Q0Zmh5lzRRXJb3JXK0fPFau3VlMC7FM66+ji4OTKQiO9AerOe/ww4p790cyBdZSIGI
	 wZ3zAvoSazboq9Q7Exd/XOO7qpz4Rt9si8wKWf/XjL7b9LKf1Kt9AjELE+F8L5z4ys
	 5zNQju1gEifN/ZNNaI4mpn9+Nm0H8qcuuq9fqlwuB1z/3pn+1HzxKZP53l5y8te8nd
	 03wmYGrR3lwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE8C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273731370.17892.11651463247300443821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad4d081463142259ac6395e01f82893735102fba2dda6045a1ec2dfe8813b4b
Date: Mon, 29 Jun 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782737313
