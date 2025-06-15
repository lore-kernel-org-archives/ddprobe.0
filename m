Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F32E11CB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749983994; cv=none; b=dMnjXyyOaXgsq3JsL1ndBv2atDb5PjVq1XUCw/87tjREnP2daetc3spQ0os5g0Tw5G/DtBkL7B4S+nFC0AFItqD6VvxjgpTT8viEDNbWD5ssTK72kDaqMCo6CLePr6/i4s6nuLoMVSNgUIXirg3hFGc5pceIo7T+kKvaB/zvtN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749983994; c=relaxed/simple;
	bh=ECx8w0tyNgbUYsAwPUcxyw8lVrX2SrJLd9jPZuO5i/8=;
	h=To:Subject:From:Message-Id:Date; b=JfUjGdZqdN/dGgND0O3k1TYNNWQyHQ9t9UNz9qKtGjOteA3CJ7utNjHI9PBuQ0eSEuFx8Lp17Ym+rrZXd2afYjWX8JDxIMs/bHBYfosrtAPYJsBLaHa/I6aQHWCa/zLy9G8OPiLgk+jn2QlCcZnBmYpNjjpZd7ANUSbME2IqsN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES3ICMfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES3ICMfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF03DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749983993;
	bh=ECx8w0tyNgbUYsAwPUcxyw8lVrX2SrJLd9jPZuO5i/8=;
	h=To:Subject:From:Date:From;
	b=ES3ICMfKti1m4g45vmXVTMHsZ7lxJFC+xAaqmuqoap0BfXY12peApnm2ELQChd5lh
	 DshlX0Xb3DOVV8nuGEM/Dz5vOaEG8ea7TTN+aouZ2jEab2XB8WOCuPtavAe8vVkU6A
	 j7WKBPx7PUO3205ya6NkWbsMKwZwS/COkWfCU1iAgZ5fnlR/JKu4n1pAUDrbo7Dj/A
	 PR4orrR4j17Gl1tXJd1nOtpVjzTdAstT5LCI8f/Dybbdejs4yakzkJJZNc+PLrk+1z
	 mOT+EAFcEbyXdb2Fs6JRfxt38uS9es/nShL4Edc4184F4CJ9tysG6JFzDQy3VGFsK8
	 YdL6IrjcV30Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99696C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998399359.29538.593307705183805085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821db766dc7367fbf71e250918dbaadb1d2ef8cd3dd032d0f3b5b19be6c81a73
Date: Sun, 15 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749983993
