Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186EF2EA163
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319594; cv=none; b=pnuZdqQWg//P8/cqblRR6L8cnBocIy4dBaSVJVb2Up0alRkTa8bJxkLLNalZngHKDodmSqY1/v5RP1Mx+5KrAso9YknYg7QB+FYKEL6xjXUUt2PvGW9PLFEwiqZaES5Jq9tvPBVL2k/CsfCEQrsDY8bTzylqUZtTZ8JTkNI4SvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319594; c=relaxed/simple;
	bh=JqC1euvGxbV5eNDCRy8B3d1UX0gVzHlugSlunkxy+uE=;
	h=To:Subject:From:Message-Id:Date; b=Dk4kC6V+rT/P4RnyrBkOaMdKOb3S5SmMspaicp9pi7tw4Mdf5HWCTJLvlmjJkD02A4xxnSfUMJUDNrXJ0MyvjX4gMmOk6EJObK+chkp6jdNrtUudfRHw/wiYRyDwezDfCxiGwrkRbbxFsNzyEbxZO21Z9gd8g0szUCNjSYcuRRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6gBhHUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6gBhHUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0824C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757319593;
	bh=JqC1euvGxbV5eNDCRy8B3d1UX0gVzHlugSlunkxy+uE=;
	h=To:Subject:From:Date:From;
	b=V6gBhHUdmRTccV2jFcMgWvIgj+53NDdoCSgFOmae/knsuumwua4dv02EGmDRO/Arj
	 qVTEmK7Emp1Ny0axJv+z9c4lXh19YbigqVbnkH6OJohp3CYdZksC+itRfGJUzukjng
	 FQLHV1xTFLmxmXbnMIvW5X7abxK746//xZgJdv/r1x1sVFDArTfa6oVPwC6mODG6iC
	 LMiOFQ0u4h7Fu6Mwqhtwip2+dlMJ/KCaBjDPiFvUgVS+wElulfgI6V7mlCgIScgqOD
	 Py0bfEsVeWC2tTvO7sE8YJcjS623V1NomkBBDeJmqpn6iA0C/fj2fEkO7IQo6tPy+9
	 sG5s7oHzyGNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5DCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731959358.17581.15214847720192435821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ff6424d0c1b0560009d367b5d9d6b4a49473df088a2c078b5bfe59e986d484
Date: Mon, 08 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757319593
