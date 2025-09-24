Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3193C328563
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758746394; cv=none; b=qNUMbInVBaTGXhOlGMBrbHF2zj7A82p3G0w6TfjPfU/pYMUhIqGh9zDrS8N7TRvitJI6NZoXC/g84meVeagMDY3CbfekgTjeu/HSy2Enl+c0pIZaXzF4aetgymB9CjYw8QRT0LgwpN9xHpJSkYEjx3WgQtQ1gxC4iBKIKxEqsx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758746394; c=relaxed/simple;
	bh=L0ksaeBWngQpm6f3UxhBQvWy59JyOZdSh/nUnQpy3Bw=;
	h=To:Subject:From:Message-Id:Date; b=ViNi7ON6/4t5KrRaw+P4/r6VfPhsKCd+o2tVfvfe6ka0JPY+fwwa+3PPeqUPO008I3taCUgCGmnJvxBIkUPicGuBqEoa4y5NqP45Yd4Q3+5Vi3bgymghyX67V19pqA7lFrbY2rX32jAm2zU1gWva1n23uysD+d5eSgqBoY6irO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4Vs0VHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4Vs0VHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3139C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758746393;
	bh=L0ksaeBWngQpm6f3UxhBQvWy59JyOZdSh/nUnQpy3Bw=;
	h=To:Subject:From:Date:From;
	b=B4Vs0VHBw9itgkHma7QB2mtkaN51aVgHLvdHczaDwN6qfkY/ymo5/jgu5EUUwTWgP
	 i+f/yVro62MFmxvoikMfGFcV0txaHyJbhtZ4nhkHAVgXA4DQJz61UyE7wD+qQZSQvG
	 zK149mGotG/sLmGmQ2qToFDKlCkR3Xb54e5I3+XhSZa88gKRrHyZfiapnpvxFRssHc
	 Q/2yII2oFV6OllVdLCIDK2VDlyOrRXHhI6JGdIVRN79fEycJFTWn63KZ6DNZ/LkBfR
	 o/fbJ5DR7yTpSBgW/xIJfguFo42kyPizwmtL1O4+jWRDmARMk5cRZHT3pAE5kRERH/
	 AYJpbjLePs2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9808DCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874639361.30256.13927488793667800244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da876bd2cb63e0b510f9a80c2b24634dfe2706316b5ec0979a9c1a8e7ffc532
Date: Wed, 24 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758746393
