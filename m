Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1802E14A4F0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761661194; cv=none; b=Jjtm0bF1A0vjpsfHt/6IGSrFq+CDTM/Mkpqdplr8SyNRacGFp7vuZSHzwqXbc/8GgxCqnjHGBWOsRN0hKMjmL0P0hgKEwVK45MNSHmIHvptiRdXdrT59akg/dXuJD1TF7CH7ybptegFcxnev9qdoxxKomuArwITdNyv12vZ3B7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761661194; c=relaxed/simple;
	bh=ziHelvo9kFz34aI6Ij5LgxerNtg4h7vxXq5qWz5Bo20=;
	h=To:Subject:From:Message-Id:Date; b=ZG06nWbQaql+W1aeRXN4nhuS+ap5nFQEX/lKG2sdqV9GO78o5DM0cx+iLp51YBIxM314/e7WvrzmjWGcDYSrZgamVBysvLUtXtEZEX1O9+NQFY6vv1ZBKiZAjWcGidwKa/Sbb/d1HOhsfXqm9CZHUQvvGJBJCqHLA/fVWIbMhts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1Ff6gm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1Ff6gm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FDC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761661193;
	bh=ziHelvo9kFz34aI6Ij5LgxerNtg4h7vxXq5qWz5Bo20=;
	h=To:Subject:From:Date:From;
	b=R1Ff6gm0TVKynC1V//wAD5bqj1U4Xi7cEiFFlB36+xnUUZDOpepOtko7ChPd5t0uc
	 sNdLhUlRcxmkGKoysR8dQImHI/mAlCPzSlhKfds+W2U1zOoCwSowZlzNuPDN56aJst
	 aqvvyG4n2dKo6FViydbPIhGkY0B4VwiP8I+DEKdLF9ZdD+xbbGVwP0PXZbiaGoJuoI
	 NX1wEmHUjjdKHOL1IMU3tNXs4xFLdV8UdpYwrnC/Walgdhv4lssw8CEDqtnzXALRdi
	 vU5MY6Epn4+bSid6A/W1TVUAAOW0YYhm+tvjTbHDO/fVAWNvsC7ctpjWlXCz7x5nkr
	 LVtgvtr9q99jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1FCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166119360.11291.17242252857498000646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a25ccd671e98dc9fcace6daa8ba83410ddc4b745b24835ba2e15d77406fdce
Date: Tue, 28 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761661193
