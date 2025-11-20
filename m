Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10504274FEF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763653914; cv=none; b=kPdYt4K5JH8tOTZx6sqlSS3xysUnEMACNFkyyN7gSxA35kVvEvjnYVCgC+FHYhFcuBCNVO/x/ew1EbYF59xIEU1E0r2l5qqWMP4Y9I1KMlcb0LRNxoJve7AYu4ZaYQ7djSWWEIdrh+vj0IzAtaP7sHDyzELu9Jq+oTo71xTu/Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763653914; c=relaxed/simple;
	bh=+41VzL97sMGJyWk0uMFvujzFszPbUe2pM2gb447usiY=;
	h=To:Subject:From:Message-Id:Date; b=COfcJb+ROa9Nm1VSrwyKEoDQnkMVQkA/xBuYOgXG5TgLWYEGZzoc2lj6jVwtRxgoQ/KTPDo47o/JFcQV755HFeqabngt7gjC78dWB3rOflCkmQFcJijq/zc7kZ7iFntKhanaoVyP+xjneY2fYCWR0P8pIYWYyOnG0iC7QzxUT4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqCzWq66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqCzWq66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEAFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763653913;
	bh=+41VzL97sMGJyWk0uMFvujzFszPbUe2pM2gb447usiY=;
	h=To:Subject:From:Date:From;
	b=YqCzWq669ImRgcLDrq12ogP10DQMLXa1ppTDSLbufOzWawDxuWZ7rxex7vahcX4rT
	 ft+dbS4vesVDHpmOkNSBbJT+7CWJcbnxfuH1RtSOYKAbQL2W4s4rYgq5cGCwSnwHsG
	 b5kTvyNomVYlgKsYdaufdWSOUPygZdr50XgH0LLw6Q8oWRV+nUHQPIWDrdY/INAko+
	 cbWvtp/lSSN/0sdYDJODGETwZ5Dchp0hNxRDr4B4lmOi0b3+gu+oOFq4YjedG1OCPo
	 XwVnDzfaN4Mfsq1a7ihN8Pax01rrPqDZbFqjY/pScEv+escq7lTQ4qC2lWOJz+CazT
	 7ejt0oFgIp3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA0CF887B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365391358.20282.13652355719041967670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ec5318d8daf6c194420b782d3c12fc348549ee9e3d78146ad5e48300533ede
Date: Thu, 20 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763653913
