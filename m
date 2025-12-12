Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A28C3B8D68
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765497774; cv=none; b=eCpfZ/3jhRnr9tfkTM0b2WwfcmzX8dSi0vA0Z7moDwPOVuWgDq+eBcaZTrzMwbgEqnYbi8PsCTTDw0cn5VrbeuVNcmxkcH+CvKdQ6nRiPkEGrV7uVsn1HXCe5GZfcvi7OHt+yYusf7uEX3BCmRSr0AITbl4onxUFQkgOh0c1110=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765497774; c=relaxed/simple;
	bh=zwfBbOD7j2+a4i3wZks2Gv/y667Jg5oumM4lOyl6Ge0=;
	h=To:Subject:From:Message-Id:Date; b=Jp6dD71PDzpcJRsbPlnpfWXQCBB55D5tWU4NvpJso9yRb/lPffAjRmq788U3+SFqGbhVUF6Hv0np/QSFbqolg+O6D+fnVfYfZod3rXmLrh1aVjWl9mSJZOnufmykquN6mz2eauEjwVREDhwSiXYZWoJEzwjsQUJhbnZ0N12mUI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5oY/Zra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5oY/Zra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40EAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765497773;
	bh=zwfBbOD7j2+a4i3wZks2Gv/y667Jg5oumM4lOyl6Ge0=;
	h=To:Subject:From:Date:From;
	b=Z5oY/ZraSAMIDlY4KAMYB58W7dl323jmpMeReL1uGDgvFOYXNFZeQ2rPDBkWUyoVH
	 YVxLWzbThul52bN/w2vgRDSxWsfby2XAS37aHtdy20BShp3pU4IxdXHAjETYcOVNAx
	 CtO3xn60OPKppF/rs2Ttn9ANoExkzO7FmApDQ+dRtsPZJr7/N0B3h8bM0dKKE5WQIy
	 NlBpin04Jio68YvyTUhJ/wXdo6WDJQ9kDnoz/HqxrxFS6UU1EEhxem6y7rtnZC5sac
	 wYt5lewV+j92ncC1F6dAlzC+s30tJUa7V6c41reLr7s01PBnMIVch2JLskOYdltPJA
	 q2vwl7K0nVJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEDDD4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549777364.10338.1499249607813986136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10d1d5ff2d8bc2ebd700afea61cdfe862c001679b55849f60a8ddfa957f2709
Date: Fri, 12 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765497773
