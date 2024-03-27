Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051C81DA4E
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711580897; cv=none; b=iCvhjk0uVz8Y+f8esLs/tYKiDA6Kj2bGabl5XaHKFEcPnGlrf66kPWpLOLdfZgfBKBsLcZ7W2VKNLEcIJulg5RGKmJrRcTjLx8ql08EvgH1hETPt1wQhlNnMEfOrL+DUnoyWdftM1xt8xS328fpNRbIaly5SkWlBaDqVAfOscPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711580897; c=relaxed/simple;
	bh=qBMuG4nfxzbISBkUZK1h2lgLqUsZZ2038+BZQPjfU1c=;
	h=To:Subject:From:Message-Id:Date; b=tyAka0ZSIOQdmBpSpxG75MhhA+rQGVEUd9c3CISkH6VyT4NThbqv9t+V6VsG+1VI6b8nUEtOSBjfzHgyAjCBOzGKnuRLHi/8cMEGZuMG5S0LklvBJLxZaSn12Vjn1h8jIypfNpJ50qKAn0ezRoGM5kiCvklabW1OlN5eudJtws0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuJgcpfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuJgcpfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745D2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711580896;
	bh=qBMuG4nfxzbISBkUZK1h2lgLqUsZZ2038+BZQPjfU1c=;
	h=To:Subject:From:Date:From;
	b=fuJgcpfU/wutL8JApcLNkk7OWVQ6oDH0zE43RTGVsEwdOjvhhd9NdsjM7UU4QRdS8
	 X0XhT/FA01WLV2IGKBJMh1HH/gL92iWP5bynWw2hGsWmYA7ZbJI6JiGEC54naMyxfL
	 ioKGjup+6cplbwksYzmJeGMheCOm5KE3oebuMBks9P3yN/JKGgmrofrNcGbq3FSXcQ
	 VT9Pb/mtL5lKIRCuhj2O0UvMKRLtMxkdTFyBwbb0DE57+N6SP87yyI0vIJFGOQmmph
	 suaNlPlmIWDBYLujO96im8O3oJyHIGseHul/gbIIIikdg5TG9qtARbethU09hi7UfM
	 3pvWay7oc5Gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61602C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171158089639.16518.3099060994188250825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0fd5b4aa88918097185b63c1477b2ea73b046c44b96b658fe4df338552b132
Date: Wed, 27 Mar 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711580896
