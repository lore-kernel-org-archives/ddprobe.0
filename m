Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EECC1A23AC
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762679994; cv=none; b=RhWKTVaS6vc4qVLZwq2UfXDY1Y7xB/eX6HtRoit2xDSKaGO5gfCxnj61VxoRMsDffTPbNTbDkOl0RMTma99v7jwfP3zuh851jsa5docl6sEbaepxpkVa0Bd8RKy2VgZ0iH7DFGN7t68Tyw4bMu+RKrw6USt4kvoXULv01lnByho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762679994; c=relaxed/simple;
	bh=Ud6nuIyUJEFfzwOWyx520yooQOC3y4jjXk7xoXlR7dM=;
	h=To:Subject:From:Message-Id:Date; b=RODm2zJsYBGXIAgYaIelxFpSbXvNPjEwF0oQTQ1rGVtZxR27UOpv23DvUd2Dvr+khtzm2cxUqlpNsTNijeRKkMz7YHq6UaaN/NiImDDr+5/SNCcVPC9XorZ6rGIlIiIKDK5bTLXv8ZS/yf1bFLsMEqL1dDV0yQRYx9G2c5c52A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beXtHVd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beXtHVd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A2DC19423
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762679993;
	bh=Ud6nuIyUJEFfzwOWyx520yooQOC3y4jjXk7xoXlR7dM=;
	h=To:Subject:From:Date:From;
	b=beXtHVd0Chrl2tVc+tYLj+cj4VTOY/amr2/B1Kz7y197Jl2JBKNeY3AFZU7EabsVF
	 dB/0wyQzBkFXaCIcaM3p+N7ZDQTyvvYg627KNKMPnfjpxOVoIt7/wyudm5pwwLNeE0
	 zb0xR+l77ar/awv8oaQDNljPn8vckUsZb/zSmIZHbf3vz0T7CeJYSMFehCmjElhtzj
	 n77iE0s7fPf0c08dWue85SH1cWE7I2owq2vB/wdaGo1UvjODb3QOn1TmYUp38Dj0NR
	 SecKES1wtHYV+uefB1f7zivNBIz1NETG8yQFeZ9iVfrfFlI3a0J2B0fundGxOge9lE
	 JO/NzE4eiTJ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C1CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267999358.12354.4789217226889689297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b4d4358dcd1dc30c3fb2329fc4ff5e021d983a07db9e1d26b2c77fa079685e
Date: Sun, 09 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762679993
