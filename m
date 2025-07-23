Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F92441B4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753256394; cv=none; b=cEmh+0Rx03hiluGi2T8CJ4HMdNIez94RZtAgRJHhMjEoyW0q5K5TnhD/Y1vEYguotx8rQZILJBo5iKR7Sw2BfsV1N67G4+XmTJo151yDZ4PIlimb5HsCZJZqfdvQ7MJmjtFdCzdRapVJ1rFAkmyk9lb4kCyOxLA2NK6sXwUzAmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753256394; c=relaxed/simple;
	bh=YB5lfGpiN6RqBQzfJYazVbUWSu7+fjPP7ppAAQbi5U8=;
	h=To:Subject:From:Message-Id:Date; b=ouZs88gvFQ/u3DSsA3rkyeCKEkLUwT2D5ZoWsD+jJMn81urwxoPW5Emrpje2kYCiFOwe3dVnOh0ZRQWLltZMzfvHq48Iji5Qz5Ghkl0l4uPWNGtS9f4fjnkPGdXt7shIncYiS98BnAZUfP87RK+s/rucQCigIU9CJQBv/It66/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D28dybat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D28dybat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE32C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753256393;
	bh=YB5lfGpiN6RqBQzfJYazVbUWSu7+fjPP7ppAAQbi5U8=;
	h=To:Subject:From:Date:From;
	b=D28dybatjoTE3DBAtaEBMI+lQ1i1MDrWpu1ZlKsoNlhj3JOtS8td+dKCg9075cH69
	 xT0mRv6BdoSU93osgALKLhHfuiWqp9UGcdOPiHmfSb71CCRej0PqPoDhP2nK7TwjRJ
	 6zVRBjH0+tvBdLWgO74Dsnq/8l5WuOOgjzvfSCxzQcTTrpdUC7W1EhO+MGeoZLuIcC
	 24XlpQQtrQjG2bSzzQQZPNypgfCMLxUAeR+YQ10++gEhvPhmVYNXYrZFFve5rVL9co
	 41hppt/chsb1aeQbEMYZ2RP5FDpYEiC6/qAwnme9mwtU2pDQ+zkGps44JVvXVuBsPs
	 vY6pPky6fsa5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90266C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325639358.11120.14252063518791297036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d313604a4b32ad2b2ded2491db938d17a5615077bbc4840c99192f2f793980
Date: Wed, 23 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753256393
