Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078DC30F522
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765812174; cv=none; b=L5rdKA89ijazGnZfC6krcT53pjleewgFuafv5CSMY5bnZImI03Dkka1jad4MSUl3CXsKLayAKmLuGUK2YVKBxL8NE9g3ZWAHfwBDCdQfHLhYWq1ziJBkAV73G5jdgfGBMSZQhKOYJZvUDZ2469m+KO0Fx0JdcBy1oMexnX+xsSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765812174; c=relaxed/simple;
	bh=VCkfI0w0YouBoPf1UR7LipcZS8oADiM8nzSWf6SH4bk=;
	h=To:Subject:From:Message-Id:Date; b=mM2kwYN/0qMbXiF7hky9SSxYBa5O2NLRAeoY4alF6Txsqu6mUp/rD5S+DwNqaINdqNIwKJcYEdTfWU7rG2mc2AZ2c6TXQA4Eg/mHPB6bbUtRk1oOi5qFXt/+xFugrNDxxrP+7GOzclTP3Xrpq9+X+lqNUzGYo31h6COqCXCq/t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyftXg/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyftXg/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA2C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765812173;
	bh=VCkfI0w0YouBoPf1UR7LipcZS8oADiM8nzSWf6SH4bk=;
	h=To:Subject:From:Date:From;
	b=IyftXg/wFHMasXugLixLXaf28DpYsIoULVLMex3/xKyAZFArsogVWs5PZRGYI+atL
	 EqwT8LLGIQ2JJABuGQU/ycNr/3gUz4U+rh7Huwy/Z/fkyGlviL5ItoUtMdiS+1p1a5
	 17jT7XNtTT26v2yZ1b165F9X5wylKKmC87/Qc8LbfN2IZlTU79xOcgshUOivsEx0SG
	 bEv8OsrAfG0FEXLaGeJ0Ae6q4kfEyZV9C5E5dBcxGZrtdcTPGqRphTHgYjz6POD8Fs
	 jZJPBwoH2/DR1dZN5klf1pEORWHtQk6vT9ijd/k8QrcHQOH/Cypu7nzPaTZoaaRa1U
	 ouToVhWA2uEAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E25D5B842
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581217359.12523.11436857784176313792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f72944fc8b1c3cb7915fbf3b4d36e7d871a900a7c1b4fea1d926f8d12f88ac
Date: Mon, 15 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765812173
