Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7512FCC10
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761167394; cv=none; b=TIR6dreknqos9FAcSYGiUTXR790x+by2V3JOw+dzFY34Jrtg3vno7xBGn03ZjIGVmBEQlfLFlSNbUWiz4TOVqXGJX9hpHVn7u7U3drTtCp+S+6abgK1y3LfcAJ7wC2c82hoC/0eReKa74bMAq+OEd6kydIo9x0kqLucMNU7OGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761167394; c=relaxed/simple;
	bh=dGL7cHR6TDowexEhWA1gp3zJLdpwsPtJJKOzLnGiRIc=;
	h=To:Subject:From:Message-Id:Date; b=KkKwNrOKvovHY9flKvNtCX2hlLinljorW7SXgOgmqQo8zLcOzolxCjlqO3p1r926XB8x5hfSthB5TA8wYsa5gkjWmgXZfVdZKHPJk+j4VCsh4HTIsVTl83P98qIQHvp9NwX1uhVQuG/b95ela/9GcZSkLAvJvcIeoY8mjm7sHTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw73dzTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw73dzTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9620C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761167393;
	bh=dGL7cHR6TDowexEhWA1gp3zJLdpwsPtJJKOzLnGiRIc=;
	h=To:Subject:From:Date:From;
	b=Dw73dzTGJcwNEDgjUvp8o1XAWpQUFXPbN7sRJLMRukooSz6Mcvd65bDbX7gJtASJ2
	 RkrDTbYTbgsUeP/LTI1QRAMRrYNnf4/CETwiRjfVRwa3dZ8lu2qgvOzrEi5opyaf6R
	 jmA8KD+R7k0V7UdS/Re4iMD2iKj6B6alu18Rj0Di3iP4bQ4nrnWc4hZD7Xbhy5s4u0
	 snBTdQbapZUvnpUPRCV3cprU9ec0Jw8gS2f/E41fUbKICvxJjYKDAra2KhNY/rzKBz
	 QZRGn0TiGLwlHoXMl+9p6EuxviNjamZDJHuutf/EQw5+ggWZPxRaU0vrtVdBcSsypB
	 JaCdQ2Pa5PtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D89CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116739359.31207.4868946485988082567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5bdb90a1985ef8b9cb22b3e407c120e2a395950619ed30e9e35f51f5b7a33c
Date: Wed, 22 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761167393
