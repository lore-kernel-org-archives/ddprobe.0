Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039C1368946
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773818694; cv=none; b=E+ql+KEcRtrb+zH5IDMppDPqM6o/bozv7yCPV2/nTTCK0CbSLFK3VPJ2899dAr3B6lnh7t9WSHOhnDtzuAubcoQn/QZpk1jDWLTCgy3MEvM0DbqK4doGNf6sCFd3UxiNUZhqxmQgDp+ieJvPSUzKPb3APqcOSxSGfXMRCtcpI8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773818694; c=relaxed/simple;
	bh=TE4UZbUrpvwmAI2TIV0J7giomfz6VrQQvbaJeu28rbY=;
	h=To:Subject:From:Message-Id:Date; b=atUs48nOcAV/1WfXoAEpYLw8yjRzpWgPzZm9DAXGZTaaNRi9hAQwmjLPNW1G4rfwxwmGE5zGR4AGgFuTWCxxPpiR8wAwDLGZhMAm7lrCWSNxV02PAYDWmL2LnAAsVlB5RDoQNOYkDuFzXcjnuy5a1tCLLQaFqlmTfYNAbR6wbZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMq4F9vo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMq4F9vo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9FBC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773818693;
	bh=TE4UZbUrpvwmAI2TIV0J7giomfz6VrQQvbaJeu28rbY=;
	h=To:Subject:From:Date:From;
	b=kMq4F9vojJ0lLxo6m0lUX91ODh7Y3idIAAodcOBku7eo8dPS/ayKMoklabwJp6LhR
	 BTkfc+ZUcAsaY4lPn7keBZqj5C28KP7COZ7JyYaB35R6dCOAxYlzOX/y3tL3HFg0/E
	 +PohNnmy9mGgIQTGxadJUEfRly80ByBe3IyKQSg3aiTpotUTmhnDeAJsVs6HUExUbO
	 Vs1jQ7/auHHLzZkSHVUOFanvOgZS7rs5GFWn3r6r6vp9Q63U8r/lKf8tV23RlPNjgS
	 lFq1ot47LQ5bcvJ+/lFIHzYhOsnA6kuBYZ8RI4TxcqSYwBvPpwH+hcVP9WCi6Mwt0m
	 WaPnetzemqWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F122FCD0C3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381869357.6177.2364891044988348413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34aaa5b94f45e6085171a36ae92cde0d2240c95b53b29f06cb100500f78681e
Date: Wed, 18 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773818693
