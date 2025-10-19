Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5FC2E6CC2
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760875793; cv=none; b=D0xsieaspM6ObyLEmSRjGPnsHUwouy9QzqJu3uLbOKw+hnKjyMdF8bQBZjXHueQZbWcYLOuaYpkZROhuwAD17+LvMCV1H7ZotTNfNWKlXHefLwhEX4FNRW/Pq8N++e1f673PEj2a3ml7JttCsxsy41R+zfUr1oEj9gorSGOBs8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760875793; c=relaxed/simple;
	bh=5+xcULlBKluJ+7V+5h6MtszM2ivKqKYGQ8xbT42dWII=;
	h=To:Subject:From:Message-Id:Date; b=fTWEYAtehzQP1bopbvaI4+A5nPVKd/xUNlrjLLNckKk1y1hsra+mICAOq+v82GVoVhwupP/4SWSG5DFxqaEQ8z5nUe5r0SWOPgsBCWDSBsJL97X0kuF+HI3s7wgz4SIR5rTqxOe8dSYZ7MYrISKr7MbUST+fkg4kWWVabjdcnJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFIUenJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFIUenJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F6C113D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760875793;
	bh=5+xcULlBKluJ+7V+5h6MtszM2ivKqKYGQ8xbT42dWII=;
	h=To:Subject:From:Date:From;
	b=CFIUenJtLqffdjtlflbcZjBy3WaxG4Ar6BJeGnwkqfCwhJ+hdn3R9dWcLNwyJY2eR
	 76PCKkJ0+t9Sl19XgjSVfYwVzklXud87XYLb7xJqmJxpfl/p4ysW7f9mXsiG7vMKxM
	 +zGawuD+LYkdyw1P2kDG+Mq4CZN2+PXT4QPHLta+R2VG58suDLsOPNHPxyuZHD4lR9
	 dDrxmok5pif3K3kJLVaW6MPAYsZd3Axn+BLeTthVOWlMg7a2bCha1s1qqPCWWeMSmy
	 fGC+uEgLPntLXa8TmeVmku0mGCxVVDXbu2KPFvh59HRhTlEvrM2GDR7J9cnZY0KkwN
	 OEdsl8dIOm4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087579358.23137.4753727975470917673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d73a9c6d1672cd08fb60f4b57dc0068e86649ddde54d9bdacc893efd88b9120
Date: Sun, 19 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760875793
