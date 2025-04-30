Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2F2609E7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746040794; cv=none; b=N9Yys+zgJIagwtb1SSfYbj47xEKIM4GgrFGneuAXymhr8uq9DSxWF09KML72LybxBKM0fzx7bB/sCO62vE1ae7q1WDxcqfxUakC3ucjjBuYxV1z5sNBughha/G0mZJ0Np7s6cOdJ/1OZ/Ko2qj8wVrWfRI5y+P1ZbAjIutZT0lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746040794; c=relaxed/simple;
	bh=YBmwTGBv04d5MNED/SrBd5yacdDimVWJ/kSgucxlEaA=;
	h=To:Subject:From:Message-Id:Date; b=cyCRvwBW/HR9oVlSgdpyGP6qbi6UgAXT5q6VAd703cmtDP0cfRUGP0xFS6sXl2yuhm4iJdpHtq4Q94s2db9FeMVwnwJX7TBT63RSTVpnCGXemR5ckWDQh8U1km6RA9h3zF1gkDdEOwGg4zlV48A2vnqxZ8Xn+vzY6rZ56Eis7HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFrFUxTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFrFUxTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746040793;
	bh=YBmwTGBv04d5MNED/SrBd5yacdDimVWJ/kSgucxlEaA=;
	h=To:Subject:From:Date:From;
	b=IFrFUxTYlLDyP97PAPprVIeDiSN79GguzXlZjjLoo17ZwvJZF4fedSBZM03DqvyCe
	 TTDhEefWrPP+8jYU9WBTlWfDZxJ9o2lh5xU65C+0l90DtIbj7BcoHJFzWxjlCSOW4W
	 GqTncJPDx7oLJw7dCM7WqbuHR+BS5+jIz02EzZGZLIKj1yAVRaYyBTC88LQ3S79vIU
	 XRzTtqcI+FB8jKgKVNfnQxL983ySluF4CpxElb1tRvJEWUld26IY3Iz4q686t3xXCU
	 mNkdLdyOTyuXIkjaAy+dtyqDLZC+N23XzIK7v+c+oNIIADe2PQ1gdp8P4AcCpBZej8
	 r5TuDwEzegAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D98C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604079357.11426.7507338279822342196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa2f144716c82ed73ae51f12252ad694e000d3702401e8013638bdd882fd63e
Date: Wed, 30 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746040793
