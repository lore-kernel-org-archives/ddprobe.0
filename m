Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF0C3612EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787842235; cv=none; b=ku9i3CVUi+8q5PDx+KAkI6kfgpBnJlDxugYO9mBSytGTCuUN5efnxS10vYIuhZ2d16wuyS8dW8HOq6SFqZUVkwHoZZPb8HEHr/1mu8TxOazcdm5WMa3GezjaoeR0I1P30L6ra28WwneNOugeuL8ZOQ8mXwUSTJkF2FvIn+Gb3jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787842235; c=relaxed/simple;
	bh=HnyWNHlvLD6wiXP5p2jjRtKbmqzjku550OBwr6zuKqQ=;
	h=To:Subject:From:Message-Id:Date; b=QYGMEKOfj9HB/4KKla6oUHv9/DFjDjLZXLOhEcxH8bJvpOskp0gs0eyKdNnsjjPhWTRgmiocLygr11h3M5d3BuHrBqQr2YzXYNgTH7s1FjVIFz8lpVmQ9KDO4tWcuFwFH8WuqCcGD3Gsmzt7oSgUW/4dIeqzxvmwnErFR2S2/Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMM2O2qK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMM2O2qK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAF3C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787842233;
	bh=HnyWNHlvLD6wiXP5p2jjRtKbmqzjku550OBwr6zuKqQ=;
	h=To:Subject:From:Date:From;
	b=oMM2O2qKeZfl/WCree6wbW+tJthVJVvfogG/6AuZeqEF3sr5Vm3QNKT8CEvA7+c2f
	 1rEpDjiuEX3EAF39uwI9NWWxPRWJmtx2i7R+wr0k+MtM2ZAkh5ApXaLK4fzbeRHiFX
	 vIoPGlOYdoHchllZDJlBH+Mf6425qneLsuKbi4U4xf+KkkioBP3ykLEZNjc1go0YGZ
	 z2X6duBzv0Y5K0AudJpSpCUxbvNnTS8Y1NCSGoEh8WdLfBZ8h7rzXTsaLZ5o3C9fEo
	 lb0bE3vsGdkmOeQ8kY0OE6mxtCu4T3AWm2vtwTpx/BUVfvUWxHVZ1PsqeBqHPa4JG2
	 DoQYDXzX/pr9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BBC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784223369.12100.8660610051497713048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b84a91572aafd7957a65fda9655f03c4a15fc6f2f06c033682ed5722ce5aae
Date: Thu, 27 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787842233
