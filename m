Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6227F2032B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719689063; cv=none; b=bBaIELyNbGPgFRfK+IXQLF+Ngl6QNkXEyzzEo3qQ0mfa1I4VXudaDLwgd2zZxKWsCFYqPa8kPe6nOqP6JK2btkg1FF5cBZgvQhYhbhCPZSKJEbXlKkEdo8oVbH5Yzm0CC5Mw+LgFHe6WFxewgJ9mLLAaMGAhpf3UH97m6n+XYmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719689063; c=relaxed/simple;
	bh=hTxBmMx6LgT3737TUeZywEt/K0CFqypTy8Qpn37HHjE=;
	h=To:Subject:From:Message-Id:Date; b=imEB/6lcleSh7vVmmWiJv7hKrZrAEOFiMHnOQucL7CLEOz9pPlJRkwiFBZjldpb5kExDZ+wwhjfHiiGvfkM6kjlnERoLtqV39ZUSyfua9PKLUz5M4E/vLQS4ihwwa5ofaw2gI5fW+HNwBJs9SqqrwEp129ixP8VINIwiSHNHzWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqaYhImj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqaYhImj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D17C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719689062;
	bh=hTxBmMx6LgT3737TUeZywEt/K0CFqypTy8Qpn37HHjE=;
	h=To:Subject:From:Date:From;
	b=RqaYhImjdyhnUYHxrhV1iu52Xkr1S/T2oKQbYHaewKt/WmuZ+laKOliGTzdGUdFa3
	 M2OV1cGBUanOXqrsWg2kJWlRUHRD6ZA5+/GDoenn5TPoChJ1SDTmJSVmv9PTn5hdCg
	 f5KRjpwbGipuMF/1KPucf5hYzyVj3IU1fd8u/2Aw0UUk4PRIGZ9UHcQsF9HxqGggxI
	 9GQdPI7DB6HDOYlRqwihADwYm1T5sAFzcTLk+qaX+KWgK6Hn4nK5l5ctHYF9blXUdB
	 vexWky+gBk/1F7UhdYnf6q99/3XPRKi3ZWeNX0BIB92x4XMpANchET/4DgFXBSGDcm
	 FiB5G5QUhXHgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2A7C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968906278.25188.3417162953621867109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb508270c885d4f292ff1afbdb41d2b884af3f2b961e7db1dee73e160e1d256c
Date: Sat, 29 Jun 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719689062
