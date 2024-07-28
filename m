Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA2B1877
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722159354; cv=none; b=RtDZW5olpRHu4/As/FBmGqACIOY0qZWkIRqLZHpEj3+JDxX7n3GSj7POec623UOBMmt/6fbRiGhZsQIoJWg9NOLliiWvS3KF1XJJJPxgEjjNyHLS4iCAVt9hp/qlpZTCnIYs0L0aJR/5LDZ04NRJ2CQjuYLNsL5R7lrukJbs6pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722159354; c=relaxed/simple;
	bh=Pt+mdJDB2Xo/FILrFvmFGKRKAGrndZSKCoMYx2Ui4OY=;
	h=To:Subject:From:Message-Id:Date; b=aOXlehbPgAdZgK4Es1gM8KsH0TpN4DIvM9mVGLa6dklqh5efTWTZq54MONXIJGQ4vLA2+/mJSXDL2s9cYzGW37pCrGQPxg+pA9uJsUYK+7beTo6TjU5Gfw1AuJ+Gc639OfnzXjnTRZyXmTujSHa8Fna63lEfaKyyQhLonVCPQZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPRqN34K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPRqN34K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB0AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722159353;
	bh=Pt+mdJDB2Xo/FILrFvmFGKRKAGrndZSKCoMYx2Ui4OY=;
	h=To:Subject:From:Date:From;
	b=rPRqN34K3wNmERy7kfnu2wDzyJeNpKnagzbwZqrPA3UafIrIiKeya3t0EGCF0Opuq
	 b31MnjP23zguuxto6B67RzcRlnZT53KXrKDRxIxdAoTbOGeUKnVcn5Twkw4596Q8Ty
	 gtmrcKq1A4fLCDpZHV5zzo1vgKH9HaX6LF14aLvsXelp8hBXo0B9QKNXCAEAH4Okcb
	 8HwbejHfwoLecWDjFz66xMsr4uczUG4aDIgT9RIcj/6NLTow5AcT509Fzo2gwCZSgr
	 GNozysawsYPMNbYx4tANDnKgL1NaAfR6AQf039cwmn5DjhwQO2aVYcfInfhBrcidFk
	 MaRypJCI5O1sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988CDC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215935358.16812.13755709267983996410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22aa6ebd6f8b56efc4b377f8178f8bac79b32fe84e0c9856be1237813cffd3d
Date: Sun, 28 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722159353
