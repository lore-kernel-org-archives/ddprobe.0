Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483AC146598
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718338103; cv=none; b=qBvGp0iNSJedKoTqhlM/jDXGJK3RYgJj/eDLQ8nAVEzHxHFFVo1znCsyxuYgrmUg+R0EG9azvII2MoON3ODiLMl8jiUkWWoISzglLDpxkjxdrcG4ekLASGogPWY9Ss2ALkXSSFbabe1shShjTgOCKmWesRjOwsd6EE6hOTPvHp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718338103; c=relaxed/simple;
	bh=tn/BmU9gJ4etwAMj8PEOCEh5HUQTQpj8ZhnHrRr7O/I=;
	h=To:Subject:From:Message-Id:Date; b=mH/YU7V95mM8SXwWYWCiKeMbFnngTex46CC7qfD+rV1lQr8/UrgmKENorFD7jSW1SrA4mk+IAvjBOXUW/WwpORME1+s4nNgJaQNtO314dyDJIGwMMQE0herDoeUzvd8j+po18+ttVfhQmJGYqOrgivD0w8OQgmOI1x9JPPyi0kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L52rrBYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L52rrBYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CFDC3277B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718338102;
	bh=tn/BmU9gJ4etwAMj8PEOCEh5HUQTQpj8ZhnHrRr7O/I=;
	h=To:Subject:From:Date:From;
	b=L52rrBYxvzOYK1D9zOK7NtfevCQL+niDvtVlV3J1AyBA1Kq40MIS48uCS9MfAAD1z
	 NSwIFCblviPEId4+BCobaEOwM+3qt2LQg7wpJKR4YLfwmJwGHBb7WqlkUuWAVa6nek
	 DnA80uHyHM9kS88Z/8e4etp+B7w0OP5OTBZy6cZX7/L5tqZCRcjNec9P67SNYsEHFY
	 4pgJIzecERkKEtR6rFK0VXSI84v/MrOfpzViyXrLMPUB9KeWcPx8MFU+ZfxWjyxoWr
	 xsuVg5YjGioBDgstNYLiMTUXP5+EUsLWYySHDqfGoayQRL+WoaUV3Kq9RuT4pJNnbr
	 LW+WTFz7K7MCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0407C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833810277.31906.16764336616248430737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c2d867a8cf9bdc9555ccb93dc5fd16b633076c50fbc7ddb790ebbb6736149f
Date: Fri, 14 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718338102
