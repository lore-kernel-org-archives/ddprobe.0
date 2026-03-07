Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718193290C4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879094; cv=none; b=Ja+G2IniBfnPHza/7MTNPkqJW//NQB4RbYDtwIQOtwUlDPoFSdgFRogJdzk7dxg7FnYHlzQgBDV0D0qkHJo0meEZXoCqHAapHZVKYA0cp8WYZg8CIWzfhMNTSXinKhhTxeVRPgCk3qJuVAIfd8CTxhrR6i5jIpR5raIR+9lUoPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879094; c=relaxed/simple;
	bh=9UxKVBkqU1oNo5KWbkDKWQDT0yiAt22bBZYvzn0HCkc=;
	h=To:Subject:From:Message-Id:Date; b=WU6iz4V3BaEkVKiy6ATR+1cByTgfeZ9y8EqK8fBAaT5dva2YdFuBaw/A1vLTfGS2cWxv5+hSOlzmctFuI4vsR77TxCzRTXLkaLuc19N49c1emlaHeq5/w/q5983d5E7rPfiiTZgqrhS4gxi0RVEFKO+/QtdTB6Z71AF+z65d6Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stt7mfT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stt7mfT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFCBDC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879094;
	bh=9UxKVBkqU1oNo5KWbkDKWQDT0yiAt22bBZYvzn0HCkc=;
	h=To:Subject:From:Date:From;
	b=stt7mfT9mcbmb2GfeRnifmiQdItrRBFEzTlBxTJ8lZjsRKU6R7n4n8trkpHWNJS+A
	 Mgs739Eqjkw3x+JNKKxpG8IR4C9l1CpJum/lGy+Wiao52uvox7x4VG/Z21dsKWwf6g
	 DAJP2cKpn+DbD/crRHiMHeoZiI8LZwYUg2DMHTVPvJSUSLPTeVBOnk4yV3996Nxwvv
	 vAl2+TLXDkgNmEVfw4EfHD2ns4hf5DKYTqIE6rxNdTTMVqpvpXrkCkwuD5nS83CIv9
	 92lmOzeIaNqrwKMqij4uC98NslSlgy43JRAzvMf8gkjaiiz5AFzpkswipMlJYIHA1y
	 SVEcj0O06jVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4303FC9EE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287909362.20645.17730875376091965426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1dff6c708d5a1e85723ec4dcc50b9a5233f8fe50a87aadd9e028bad3d3c433
Date: Sat, 07 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772879093
