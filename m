Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0B8156CA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755001194; cv=none; b=TojjOd9BUjSUkW2R5CwyJOvxG5gIiIWi2CLQmQ/TWFESJ+0qFfX/vmoxomTEKs3skUfusxU6Z02YqlRdc2PgnfvY11xFBvUwtkG3SLaWwpG8PsD50kx+igelSu/e5mnlmk2JH2DX2f1Mz2Y1K8vkvCRCQ06tOhKwhNTar1izF/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755001194; c=relaxed/simple;
	bh=AdMeUcjd0zphuuyYJlObIImV+uQ//4wZTOmwYBT8KjU=;
	h=To:Subject:From:Message-Id:Date; b=B7aKTHTbBVKhE8cPH3DNXsx8AXJZM7HxlAgss/Uq9q/QutvmKGzdwLOYltPuzhWj6Jn6ZWTnkutQJG10ULjYSmZnsHM3H2aZ25BxgAeCq3jUrw/AsNidOv6Uo8ZSAuAzBycQg6ofYZCzAWf8xTP6JXtgKVBrvWYxxXdoe+eEwk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbkZxMTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbkZxMTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C65C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755001193;
	bh=AdMeUcjd0zphuuyYJlObIImV+uQ//4wZTOmwYBT8KjU=;
	h=To:Subject:From:Date:From;
	b=bbkZxMTaDT103F76Uj1L6a2irDVavcxz9GXZPgxzdlTdi1gBEN0uCM0XtMNmkQOLz
	 2HjXuvr1t0z+E02DltJcV+GSEAILYTi/AQ07+lU3oQ7Z5TUC5O0eINyvBusgfV7WI0
	 Xvj3QFjFkIofHYlJmvlFKPHE7TU6HftOOa+enpXh8zXgqErohfgkCABXV6rgAhEs3x
	 0eca0N/uOY86AhBy3hEsjCup7pwO7DBKcHWzGZA7mZxZ9gwWPyK6ZtDTWByMFRqz7Q
	 csz3L/9jLY3w8Yqq2gtVSzQJqMRS9B9YaD3DWBLMZBOWJhWcnZ+Rcb/bwuC2FNstOk
	 8romkSz0ppvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E3C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500119357.3400.10839570104512815136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f7189a978fb999fe427455e004d0adfe3251e1a388ca31f5b5362c30d2023f
Date: Tue, 12 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755001193
