Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B7F47C0EE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789215634; cv=none; b=SgBV2VhyFxtLVOdD4xaK3jic8oT/qy0x7zm+IC6eXMUX2nS4Q3PJtRj5rd1KQyDmcs9I6lXPDnyzZi4RPSrxzzsqZW53BeROwKsYjlma1QJEv1xeHCdvbKxchM2AEXCoSyqQR0lUU9lyUMedj4iOlkGci12tqjBrsHE+kBz/JyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789215634; c=relaxed/simple;
	bh=9qXuYFINepISEwTBp317KTmiJOwRqQl8jK/xXqQdjfs=;
	h=To:Subject:From:Message-Id:Date; b=TJHYm2X9tfqsBWYe5ZrIw+zSUhBN2qyLw7cpuvfEK+8cvbPhcgEfM4R+Pry0u2Q8/E8wI8qUBqwXgAV0halpxqm/+yvzj+ORqA0prwa0ll1Q7oeqn668pql6vP7LLepGEKhVmvY5nat8UE/aRJ0PmOae6ug17rXgGiP01mxT00I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2c60aQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2c60aQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAD6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789215633;
	bh=9qXuYFINepISEwTBp317KTmiJOwRqQl8jK/xXqQdjfs=;
	h=To:Subject:From:Date:From;
	b=l2c60aQPxt1uIlTwbuyb9m9QmwWIXosKV+Nc4wmxqC76QwunsyCWWM9knh90iHLPw
	 5IwnKkBOoYbReiC732NvN9IDV8MsUId/OuEBRsCgaB4ieF8t0QD67+ibo3/DoFvoaf
	 CWAR+a9SxzvmNJKxavMbPBQsf1LvvH8CZYQooHeoT0bEPQTw6TF68oKgjs8xUKb5SN
	 3BViGDeBgFQvikm7l7QRZ9wiHkexnCGqv/croOs/yH7h4XgIeHBoXlPArsZk/ncJIw
	 lQl8psuIX72XjRQqk3JI/0bElENbVSPAwSb6bwDCcNOO6u2cP846/LyQmw5XZbgOz/
	 eZJrP7yDr7Gpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AC9C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921563369.31805.953325911619739465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d71f3dff5fa3a128c81f981c814f3b67868013c69c8b84a270b455c95a3fa76
Date: Sat, 12 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789215633
