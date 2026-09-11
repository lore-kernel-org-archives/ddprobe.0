Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7F030D3F6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789096234; cv=none; b=luolxGpnyn+0Mm/ZROI6H/3zxFHMy+fOE1f4Nnt7h9LpyDDDT6NoLXjfIQ0MkrqBl5NKWUsqZYvjldx7un7z9o0dxV6e1PVVWigqaMU90YUQ5tFpizGR7XUju7JdG1V5AYMkfQj+hL5m74wBNYevgGMtBv9q4WcmN5u0Ksg4vPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789096234; c=relaxed/simple;
	bh=21FOC61dxiyCLDwjaapeqU5sZVPsopftmzZH8pad/xY=;
	h=To:Subject:From:Message-Id:Date; b=oWCGnR3MotsxPMmKbqdGUx+t/Qz2mK2JyiUN0lHiNGAWPAhI4ZF4deI9xaZA+ZAgivayVdL1YMOV7agclOye/5z+OdGEwBgL6JJoiCOqivb8GJsc7Ot/Bn/GIiWItwcQGjZ8WFAB3TmgReVvVvCP2uzl4bU+RmFonlIGjgJ5jbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjW2q/7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjW2q/7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD118C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789096233;
	bh=21FOC61dxiyCLDwjaapeqU5sZVPsopftmzZH8pad/xY=;
	h=To:Subject:From:Date:From;
	b=YjW2q/7+w1h/qo/hLZWvccnAO9cbLG/TNJMIq2A1zgvfsVCTYU2Ik/pZEaRQymOOf
	 7Fs53A3bUpzAuM6yWr00Ps9/0A9F0os0Jmarte/vRGbENY7YeCfTCViGTxs24/u545
	 v1Tl15FwYIP+nVq6lJ1NBltMtPYqinngvMeI7nzEf7vCaQmisTkc4u3t/jwDxWMvt/
	 KOyIH8MhFozYvqs0pYgsmPfaFJvruPEl3RKYbpqx8jUWdg1B3WN1xnbgC5IawvSxIR
	 /25TKdNjFX9DSauKBir8FGK2d0HtYQqRH0ym8t/aFM2fPQzbrrHpjD+ypoM0tHcyCw
	 w3dctYNkCdjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E00C88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909623368.7199.10361540067787104134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5757be5d6e6ab4fb09464c5e69f51399541d14bc1e50a0b7a7ade9af6ba74c07
Date: Fri, 11 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789096233
