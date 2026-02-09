Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0458A2C0260
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770603834; cv=none; b=Q/1AqD4ojOSgyEiOweAOJuCos0KDv8FaBclaqItAdcKwqpu0bfSNP8hUGq6vo/Lgdzh2baqiI2aa0z2c9UzAgkZA3yGojX7bBNH++uA4ja8w1RIK+sKRkdIB3L1UgDZE85wxqI3+XJwZ7G6Pc8Vzk7s2i3uZ/5meA2NX/Do9EkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770603834; c=relaxed/simple;
	bh=zAUCePuyPvctPX5ysyeaUDL8gDZzJ34p+bSxpmUDrqE=;
	h=To:Subject:From:Message-Id:Date; b=bXehm92WZtsJZq7xSbWRK80Ko6mqoJq953bw8/h0LUbFkaFLmY7jUjW0vcQ6mVRyDmhz8lDbveAMicP/qyKKnX/oy8eqrIbYX1QETmcksi90C0y5oyrW7BbBLdKkLRD3ve6DPJuk7h+JvyYN0/VuA7D5Bu39AaJ7GR9e2a0p6Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz9AZvG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz9AZvG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770603833;
	bh=zAUCePuyPvctPX5ysyeaUDL8gDZzJ34p+bSxpmUDrqE=;
	h=To:Subject:From:Date:From;
	b=Sz9AZvG+aMHgBnrl2kxbdumyNug5Rz3sBsudy9bP6USV4mNbdkwNG9WNebYb0Txba
	 Ot735GBDJ864pQS56fNHhXjCa+ZjT/aOx1JxRHiBSdAr7h7NSdo3z58Z3JTdTcyrHR
	 DE6A1MB9iFQkuk4jf88ZaSkCpwjE31KoA66RdQzbly9fyfjL2qDWH8xsTk6U94iwdg
	 xsmPrrDkSZTStmiJYNOeAKY8oYlSrlnYIEf2pwhaarSATm5RdFbB73RX6/8BYc3m7A
	 i7mK4jw6YQxMziLr/IL61LNQJuY2rjULND2F85iInJ3NTNVGoBmfDJ+PwflMg4SP4w
	 AkR2KhCMIHyqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E4EF06FF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060383358.5317.11319832791523051646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de47864095aeb6c05f92b622a3652a5e454fe785700e6493f4f7673926dca4e6
Date: Mon, 09 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770603833
