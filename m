Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0E51E3DD7
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740685734; cv=none; b=tgpBy2ifF51ZcMtk8Yiic7D3ceMrYkUah5M470SsWKrS+qvxsPJcqLlHEeTx4IkICMlU9VDQwsd8tLUQpUMTBpXYbYtjPLG3NN56Sjenjks9DEWeVJfTKsUHlON8jhxjCRtny7GJOOehw7hiK+6EpG3szxN05QBDnpsJ/b4ATno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740685734; c=relaxed/simple;
	bh=PBh2VrODDPY4JGYHM9IaJE81L9dtFcw3rgi9lKVcuHA=;
	h=To:Subject:From:Message-Id:Date; b=tJ9yEShhi6ZkO/S0oRpWzkX7yzDG5BSzC3OrbPn9GYnZY/GXIh5iWVu0jXZ4df784xLtyqD0PnVnYmET55SuJCfhknHSQ0iH1NWTDhYofpK0FLEUH+oZ0OdCvjgvW30836AjaxYvPsIOr7JOEtY29GaXZ0ihZiyUi2ycPyRckCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8WSaPdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8WSaPdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFC0C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740685733;
	bh=PBh2VrODDPY4JGYHM9IaJE81L9dtFcw3rgi9lKVcuHA=;
	h=To:Subject:From:Date:From;
	b=a8WSaPdpeU9XAEgulPSK/uaA9eWTZVDf7xxLXN7wkpMOtfjDoFD8uwqpe2SVdKQQ9
	 JNIvKuFYMUxNDqDsnALEnLFkOsXU7q94eLTekn/cWzGJ5rYZn2pfU5XyaVDBM/EY+S
	 kkqgBLd+qLK5fY8HWBTJFugbRPW31rDFxDimo5gAtQ4/LPtSTVhjPxZ3pUd9oGKZ3P
	 1oAtbScEuhQH6aY2I8N0rmkt4tTOh6L4FEDKsZvxWyHpJerttzZyStgGH0PUgFzYXw
	 8KSg9rw6aDgsL8w50x6AGU3kajI4UfNWL7Igvbq6E6vqrNVBj1euHKm5aDGTbPBA/6
	 dy5szdeXpCgWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CBC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068573361.20136.11780514068208251667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b3e4b2b4cd0561e44c5bd58281dfa2ecb98b38ddbb5bfd0e1d966e9f1bfc73
Date: Thu, 27 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740685733
