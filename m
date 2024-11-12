Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF74200BA9
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731377154; cv=none; b=oP21diXtn4c8qs9wC1YWwtISuN/wekzYCLC1B00IeMnF6MbLLsvwByQ/17IPdCbckNDUq4ZsgGYJ2uAaohnSNcNVzr/YFjAcvq6lb+mVNFtZlDi6NzMiH7Tn75CIxyGLTRt7T1FpDq7nydtp0Nh11ssbcpzJKiVFyduY7OlIYKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731377154; c=relaxed/simple;
	bh=vskr0BsMXQ0h8j7O0cc8QvqICZrASAZ6A9v4Xau0S2c=;
	h=To:Subject:From:Message-Id:Date; b=kk8C/baduQdKNlRseZ6oYqd69g73rKTIp+d8scg8Gws+0Rfr7s/HPcSwuwn4y0PZNUhTUaO7byQkiAdHnh1V89wRh8jkQgA1CtlGuhR4wUJ4LLF8PWOF3gmXw93kvAv8jqQCDVsMVgZ5GwHb9XpPoI0iWH1MRA63TazCvHNK5Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSwk2JVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSwk2JVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A990EC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731377153;
	bh=vskr0BsMXQ0h8j7O0cc8QvqICZrASAZ6A9v4Xau0S2c=;
	h=To:Subject:From:Date:From;
	b=FSwk2JVL0mmcHLyzZiLoHWM8C6Mcemxt+tMHhDOt6KEr9WTXjHe78GGGkn80zZ0w5
	 AFSOcwnbF7bD/7bSj3NMepIsi5cFujXEZ7+FJgMOO0rzrsGN14VzCB2n1+0b3dVFHj
	 tCUAtk4jvYMVddNRaPCO2K8PWM0AGxF4mzwqPoXMAgYUcZgWYmYsuhXTrrGP5tzaRX
	 +HE9gFb6CmcrJizoSeMOE3Jp6CbyJuqd5QP/iOYJC0Z7iqoFauZDXXHMJ5RmjcEtAx
	 q5sc5inylQpYW2VyUOE6rhk+Ou4LgzDQXJbVKO63Ai3h7yYJzmWEvghKC5QQGGz3kO
	 SfmmEgYPg7yPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB1D41D45
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173137715360.27945.10422592885710453083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46c90558e3e0d9fb6c44494aef4e376425b67d40492556c76e2b795f32a7eb7
Date: Tue, 12 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731377153
