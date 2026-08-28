Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682F018A6DB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787886634; cv=none; b=pdVUMsfbNXK1uyAAZNtlBE843wy9zYdQL0CQwJlBh42ylzStDwzlO4PMTeofJ07lakFEh04BxBWedqCzjjxdQKTt5ZuOExIlGmSGSJbrr4dvxhmFbBwKKYDwpFXS1TKp1UmT+9qBGbGf/wcedNp683dxMZc1vMoYnJ7pmvP0UsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787886634; c=relaxed/simple;
	bh=KtabhU8piv756xCfYiAM69t6Ii7yK8FlVchGvtXhWXM=;
	h=To:Subject:From:Message-Id:Date; b=BQTbGA332UCy83/fB5AR0UD7sAFELEKY/c9T5WQrSbsvrRtN4QN2RPNJJHQOtqpGPkHhs7w0kTyjU1KmZtXdAcrZWWp+nc0dQXoM+76ur7iegjTR2ozhQm7v8pEEkHE9lBtWmPmM7PAvGcoMlcNGA2Oncnq4+xoJWZJBoFY9P44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKUN8BaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKUN8BaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B2BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787886633;
	bh=KtabhU8piv756xCfYiAM69t6Ii7yK8FlVchGvtXhWXM=;
	h=To:Subject:From:Date:From;
	b=UKUN8BaN+kzirOBkhvkDToNClwoBbblP9fsbKag6aPJsMLMx4LixEe/72jOSIBrJL
	 bLekupQ16Ury4payqO8YPCYZA/T3TJ9n44RjxLNcKtNvVHVO4aBN+blG6ftY+xNbOd
	 MOoiwMb1pqL/efFnJxAliv0jnpCf2lZrSCfCNR2t/yPSPgit5W+5JupuBDwUgvrsNt
	 WY/dUZ6O4Jwy5HzUlg935nQVVJcDRmQdKUey15Lpeqg6agVXPjgxvOVZcyx0HdMKQt
	 7gxQUi6Z+/XsVKZDMqqVqCZaFZkjPcRbhLwGg3nyStLa/dHUaknVy95WiQ5eZxsuQR
	 j8gSwiFjrkExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF81C61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788663369.24192.1040765264776837826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4133e9c5ceec88d2155a46d20cb1e6b95ef5bad3347a67f46a08071a5467557d
Date: Fri, 28 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787886633
