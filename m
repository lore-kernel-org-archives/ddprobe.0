Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FD8271476
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767974634; cv=none; b=ramIlA4bKeCsZGCFe7WbqHXwbrsNB7sAOkVXjAc9I5qxsGBmqH14HP3IVO81bZLiFODezzxGpsxKZ366OQpNXVY1+ZR4p5DCmAKA2K32osvX1+gyIlU9SayBGrT/5Y0At03BvHZbglUDcyEidIaaSboeocLKBPjtcJV6NVWfBr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767974634; c=relaxed/simple;
	bh=FsO5jo6zFMIwJD95e7UIJAmj9qiopu0VXQaPru5bFB0=;
	h=To:Subject:From:Message-Id:Date; b=dqalgI1I22w6eWb4Q7rguB4odp2pr0Vo1H0mqjsRR83Y1/T3fkesKBwpU+kDIks0iPW6+/ADCnpoPbK5mN6JVPkVXZGW3dwGJUyV+aTogSrfNPgi+R2QPk/EYtSHNeTxVQuOZsEFWSDJPtvanSJCQc0wNe9DrN8FzwJ0APXi6V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsnKzzrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsnKzzrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767974633;
	bh=FsO5jo6zFMIwJD95e7UIJAmj9qiopu0VXQaPru5bFB0=;
	h=To:Subject:From:Date:From;
	b=fsnKzzrzyW0h5/ND9JU9eA32aA215caL6RyxMKu27NxGhZAidpKj1KI+rOqP/b8Y+
	 93trawZF2Pi0PCLDeD9dw33YeGetsGu/41PXPtTiIA9uTrwelKHJllv5PkDU3EblmR
	 OhkiYcWXqESleZZEqQQ6rysXs3S+0Pqb6sGu6IWgmbodckuG7RLyq9ZFAzmK6DAaiN
	 KRpL0ila/Sr5fP4ZEcqTQYCRXf/Z1T52OKQXnrEVc07DM27lz4VIZGywvKOLQXHFDF
	 TcGGBHeljftjg1Z9PFb+sloJK24JzMcGP17Gszlk15kyT6laXiVUnj9ATNoWv7Wj42
	 GMwGpaiZt8f0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9185FD26D70
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797463358.20889.3077638784456487258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d5db730c1bb4221fc7c355fe16165c5051854c501c3b0fbfe7cd508e788bd7
Date: Fri, 09 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767974633
