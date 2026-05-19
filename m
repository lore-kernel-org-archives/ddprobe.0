Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330C581724
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779161434; cv=none; b=nqbrbJbAVLYAzHB5zjO+wiDQrzursiBICY7ypzv97us5h3tTNrLfYO+UUSSMlDSo8NH1rvIN96SRHdL06kHmdtPSdUlh5NxtK3qhqKiG84u+JJzKjGhjT9uLd4eSG4O5kU1XiKtvwvaZF9iKWNHgzNiEiXORidAX8ZCF+rPFri0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779161434; c=relaxed/simple;
	bh=fMp9BgPWOsP3qMkWCJGr4f+Tuls8eLoalVv6zKtBEY0=;
	h=To:Subject:From:Message-Id:Date; b=XBVWJyDcWjycuLxG4ZY9fltdifx30BNo3/dmtnJj4ujdlrNfAKxKB5/r38BW7hW3aDonspGedzk51y4px4BMZ2JLAOS6sjObAtLaLePRkxbI2jOAFFul622BQEoqGchjtHY5mV+PiCMu5OKN86U19oipdDuP5F2WbXtiJ4+GoKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z009FZ5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z009FZ5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4138C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779161433;
	bh=fMp9BgPWOsP3qMkWCJGr4f+Tuls8eLoalVv6zKtBEY0=;
	h=To:Subject:From:Date:From;
	b=Z009FZ5QpjJf9a2CU+j9Ms4IUnKFr4DKgYdFBjTdUH03PeRId5s/Ri6Qs/BcwHER4
	 pdgvO2fBKNQk+4RwEQCPxaMHLO+XZ4Qfj2YQf2cOmQIgHUbSxIM9hHx0/B/SJSlFyz
	 KoYb52sIgpodLD00fS95Et0QqawwKC9iAjXzSm+LJT/Jk1izYyfZAw09ltAG+XSMrF
	 yhL3hlzpJwhCq/1D7F6j2NfxkYjtH5xuQF/Y9JNAslU47u2ODeRdXixqDE9UQMq2YG
	 hq4CObOcJmulPSG4IosOH2ltFaK1lrUNZ46ryMgpj8r94FZFRtdR9ngdtUQi3+vL1K
	 6tZ8NqZrja8pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA75CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916143368.2302.4607551791132071137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13d8700abf9725a8732c211b02bbaa9d7bfcc83efd55c40b24b0f885cc6e0e5
Date: Tue, 19 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779161433
