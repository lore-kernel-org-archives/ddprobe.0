Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B301F5827
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747340994; cv=none; b=ca8n3VvLseqttrDfrxtVxZcjdfcL/4SKIv3WyrWhaXagn1lP0LJYPfrG7KFwKyO6M58rGBl78aMcvqVoFo7mVWXdS6UcHnF0avpF+xf+jSByHAfJhqEX7zKMUdtNmG32Qvz/x27wSEQZYecg0tNE5xcmD1nexzt09oJaBG8RUGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747340994; c=relaxed/simple;
	bh=7/JCCou90/dc8tJrlDlyz8pj8Ub3kEQaIOYUKZ8HdeA=;
	h=To:Subject:From:Message-Id:Date; b=eYLrDTFgmcTxMYoVr3bTLkDRPF6jRlBbTj6oPjPC00bR56ueiAGfBKrhlUcJQMYeG66RTJBrwCYczChtvgd23P7BsSoG+KFKeS6bTOBeyc0mCQKzbYfQ0vPB/ScX0qd9p7X+7pZX38vnmLla1g8jgdOH6w0/JAIfiBEvUX02kNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocRmV55L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocRmV55L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04ADC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747340993;
	bh=7/JCCou90/dc8tJrlDlyz8pj8Ub3kEQaIOYUKZ8HdeA=;
	h=To:Subject:From:Date:From;
	b=ocRmV55Lc85AO2ZzOYgrJLQAi25L5mkYVUy2LstDfArMfKSOTUw1rpopiIDLnWbOj
	 fPo4/C3eyWEsBRscfUNUBeNSGDDP35XyfW3XkrH0MTpJA+Z3YHHVxKESPds/elVlz7
	 Rt0iWFDs6i+Sd7Sjf8iLlTm+yhGfrsiWXmdfXAG9cnZroaw+Fel+x0g6Dfw9Kn9wDn
	 hc6wOPfvYo9kArzwbN0CXawa3WFiYV38s6nRJgAbrw4p8anauRdGDbPJVRX7HnH1Pr
	 fJRSdknhbwjHCxdVgCQOa9jKTSfmaiTJI/RhKRQjtLl7J/4ZXui3oX7svQCKFr5Swl
	 uo6VlWpRXHjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B2C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734099358.16531.9713102823044083885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbeaf902931a963948f4c1f0e1310e37e829c6604db77c71ce65bc5635697ec
Date: Thu, 15 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747340993
