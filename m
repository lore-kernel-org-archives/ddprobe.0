Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342401CF96
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737815154; cv=none; b=nhHBanlR4tHzddSskkH7RX8M/pJjd4QncBRSjTqvxGpUK2MINSYOv/092lh9CFUzrwhsCpIw7U4Q6N11AU+J8d0PDhxZD69yCTbnCVfQLS/Xh4MdWgs7xiB7M8XAls0YiRfrcA3aOKgzl8ZN4sh4r0CyH2fJiklXdPl83Aht4YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737815154; c=relaxed/simple;
	bh=Yg0+yducHHASZFdGXcAn4q2seA9yW8Hk1ub4YIn18lg=;
	h=To:Subject:From:Message-Id:Date; b=kG0vWMJUH9XxM0oZhuXjkljYh3ZcY+AknrxPIT/b5Za9kxiA21sB38UqKcxBwle7n6wICpSqjbnSIOhqhNbCb3Nparl9ZpmSadR2oCTxBfq6+j1BBj8ahCkdtiu99r8/a9iU72+hnSrgkVbKOFOzHYnQm/a4jcKYByNIjUeaeys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL1IQVgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL1IQVgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4FC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737815153;
	bh=Yg0+yducHHASZFdGXcAn4q2seA9yW8Hk1ub4YIn18lg=;
	h=To:Subject:From:Date:From;
	b=lL1IQVgvilyMXgnQ+ZkrCVHmghn5YyXN4L3ZVEjIcJ79dSzx77+TNaQsE1hDyWD3u
	 uwKRxjmG6F10SwxAVXT8Iz21rAvd+njj/rPPBjrvTdtVUSShSqq9XWkoetyUZDvDkb
	 tc/iiAP9mN36ZlJ8HP/+X80Jq/cA72q66SgrbkU1Pw4dMNIPOytSzuWCABnzqD/HVp
	 umT6GOmoMFrhuJ+os8VHBwUl16WYe4MzhCOA1kvl8YDI7qsGHXs733N5QgKCJVwE8m
	 cc1w2FscY0kQ4fIRf5b22Un7JnDES8CmlgHdIDrgo1vqpGV4KmWqL7oXMoGRJmqXLO
	 XZ5IB3mVOj/mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97501C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781515360.8973.6840575012643762022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c63b626cea3ec8b9238301f950408ca2282b6f972c938b25d5ecc383197202
Date: Sat, 25 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737815153
