Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D04185B4C
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738988154; cv=none; b=Brn18Kq2kZ/xAcqy7OWBinODJxMVITTNbQ9CSTgBwXhWqISfvIoipvHLtTGwVd6l9hyX+wbaE3e8ljjNUyS6Sa6OvmfypdSIf6K2VWYc0LcMc/EJo6TOjn4RCwsm7z9ywk1il0O5Tbjj0tEi4Q/PKDX7fFtlvSo36kmgvW/Qago=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738988154; c=relaxed/simple;
	bh=LrIxS7wzZF7kobAHuk9sikzz1BN4OhE/4T23nvV79a4=;
	h=To:Subject:From:Message-Id:Date; b=DefrFYxb4yWY3a8DcVck0ka7P0QRo+kMtrHye+poO5JHxgV+M4OB1htCPldMxBxa/G0BP05bK/ICwtfuxMJCyauSK+AeJmJTBZgYA3viV61yLDSAlWmIMnLeQo9Sccfd6jS6LCeZUD0OYgr4wWQyB7i0NuSeSt1/55cBED4rqX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4tSuVOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4tSuVOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3466C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738988153;
	bh=LrIxS7wzZF7kobAHuk9sikzz1BN4OhE/4T23nvV79a4=;
	h=To:Subject:From:Date:From;
	b=k4tSuVOGxnXsRLigDj0eEOY0hgk98g0YQO5VNgUUjjxaa2M3LhREzKXWN2C8urCcs
	 68Psu4KAi5dNKI7QWVun0oKjK7Oj0FPDjGlcgzNoDosi2UhqkBRA9FnYufB5Tiw9Jz
	 cKb3Wn4rFmTA9CChFdYm/LNbOd/kkXBxq65pswvNbKpoiXfYBzE+wSXrbGkgLI1eFn
	 uXw1BEfOW9bWMoAPDlgtSDWLE6u/3XtCeqKzQQXhVz3Oha3lEE8kJH8Xbos6V5rnmO
	 MMf/A+YB0y9+J280Jt+4BSWAUPHxOySgQ2vNgtmjUzFzxOA7jB+0XT0l2ZfAbkbS/7
	 OA5Oa4vCnJN7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFA6C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898815360.19016.14278273056160543799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ecaa585bebd91d860921e37c5e4dfce3de3ec3c06f264a0fc8464a5fdebc04
Date: Sat, 08 Feb 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738988153
