Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293AA1482E8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770495234; cv=none; b=HDt7XBnZy7UnS+7zE04UHdZgpdOObpFDRjQ/pxofWB7NeD76B1JcJRrPNNwAYnm/wMdACEcUm/pjRYgN+wNFo73Evs5TJV+AGG+JAMuNsEazo9YoZatLy8qkZ89Wpb9viMZJaa6q0P5AZyESPCeciAysDe5weUsXHe0ItnGaK4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770495234; c=relaxed/simple;
	bh=MUbjSor2VrfpBBMGGFXHblhw9NhlFqH6uIhc1nHvwtM=;
	h=To:Subject:From:Message-Id:Date; b=cp3WXyVF3nlR2z8TwwaLv+aYkgTtAKEjKYobIRBIs6J7SZCdfeQE/dm/OAu/UgrXbmYccflKazcFrB9VOlcTPlo5Bha71xkpipP09gL0hiiJXLfbr2tCBPt1eex/WwGcfNRkVtJldHJhE6FuLrAnIHqq6pwEpJUi2jZ0GdwEcZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQ02faeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQ02faeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB6AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770495233;
	bh=MUbjSor2VrfpBBMGGFXHblhw9NhlFqH6uIhc1nHvwtM=;
	h=To:Subject:From:Date:From;
	b=sQ02faeTtn88ALQt/3pxTf9YGiTo7MfSkhy3IMx0Rvfn+bGaF2kVoj1j5d7IIg06T
	 WP4ip44SH9E2kMVrWrlA79weASNFa5fy2thf3YPFNdxhHTmGhFYJxuPJX6PfvThdct
	 ak4rPJE0lPvNKLiG3+LqbDeyrtRSOB7bOhfbfKX9GGUJhrvobp9xxlGkLG5SnpkDJi
	 XWOv82QOIjFrrM9fr0j89kyDx6ntltlCBKQdOPFU5JNS47AFVgQ6V7JsskYR0GshLI
	 dM0cFth70bFczs39SspkmSNN/SZVnc9EnG2vpAXWUGuVYYc/05EH3ChKEXmaWJzyO9
	 cAbXh+xt1VJww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAB7EE0AF3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049523359.9334.8471890313593257937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a817595c832bc531c666309eb67acdafaaa4b9c1c8ecfcf2c1226bebb9363ee
Date: Sat, 07 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770495233
