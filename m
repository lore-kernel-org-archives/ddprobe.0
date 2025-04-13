Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555988460
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744510194; cv=none; b=IIGD+Fau6D0GBLGA9AUx9Nyyh+RP3lePGHVIaG23YIdnyXkH5PD7ibE0ewutq6T0TWgq3chO2ja/0zDRoHsDZ2R2NXUyBCVHzr8Uf3wD2NpiJcL4xlM7dGmm66eQQUEDdTRAO/LltHA+lX22mPpjdooAq0FX/oLnMZ9WuPwJZWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744510194; c=relaxed/simple;
	bh=AKgz2kkx9l5tjlwjNxMGGXnL5wyLfOsaNWti+ZoAxww=;
	h=To:Subject:From:Message-Id:Date; b=jPp8oPZ6AdAaO+oMTTqLKP46N7RiduBibTa4yFgec6oT6CT1z1rlCf7jDkTDNkwsxqibiGeLhe5RTfX6lW//Ps9WdOpQTTdqqAKRZ2ARXT72ftocidczZSIfNkKF/9v2zk49s7dtIlaDvU7GRCJJIxTCxWlyEGgFpUUK9KOfKIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X56unN0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X56unN0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF36C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744510193;
	bh=AKgz2kkx9l5tjlwjNxMGGXnL5wyLfOsaNWti+ZoAxww=;
	h=To:Subject:From:Date:From;
	b=X56unN0ngZ+midOtaws1BUbyNoOz17sJRDGilJukWmN2dQEUxBBilwwqxhpGih3SP
	 tucIuZmm7zGnLnpot9EB4ZRR2xwdAONIspZhxbdn/E9l/r/GfUcKAM8vkDPgq1dT5m
	 aAEfBL0cjXMDVE+mxTg4mHsF5DlqpOV6csEjXAyTozkOvSMVgpI+1IUo0svPX/7qql
	 tDVjEUOsuAKsANjn1ZonJAWHXDPZ2KJ6iiHXhLvoo2NAtuRM696iMsgMvEG/Ix34sM
	 r5LMfloLN8VttiNIwI7p6jB7sEfHqONaHUCCwmiDWYRwDDOJ7tIgqKO0OM48gy1SkE
	 2TFSGT9lWG9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB9C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451019358.10028.8842732440481223508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb21abe3f2161103bbcc4932cd18e5620bdbec5145b44a6b575c98abd789e0a
Date: Sun, 13 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744510193
