Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF85190685
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755737993; cv=none; b=l3lTqEUV8dJT9C4SNnrv79BdgkGJwhC1TowK4dj/ouF0+bACXN4jVUD11Lv6npkYe35I90gamuH5DtHrLrJZyL4fqTU7xuE2FQy3HipGZzqrzH8VG65CJHNvwMWOW8oA1pEc45jpImtm6kn4HqQP+jvxEVQiRLZh8tyd4FISSOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755737993; c=relaxed/simple;
	bh=MuJp3zGKsO5SkJY6hjjy8A+7FH7XV2jAJmkWOqnnkwo=;
	h=To:Subject:From:Message-Id:Date; b=uVMX2QqapQ86sFqIKphpVkpU6tL9mI24JIO+Mmzfw6+hEtH13igg3S2WKKNJ2uInDlXNj5wp+vVYAq5mR/JCZP4UV0nmk0AQRr9TpJkwEqmVrI+CjWPkmw3kFVi8OSGZnIUIkxQwFWviSB5EC1ALoiSD0EVj1vDwDBQnHukTVV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA6g7P3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA6g7P3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE31C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755737993;
	bh=MuJp3zGKsO5SkJY6hjjy8A+7FH7XV2jAJmkWOqnnkwo=;
	h=To:Subject:From:Date:From;
	b=DA6g7P3qb+EqbKqmSubkCLPwaKcvV3MdJLyit4jGh59tgni0Vyzra5SRZfSkxd5RU
	 8bcCd6IY0mKEw4KYTNf1CI88WMxJecMxHA0HlyzQF9CZONmjLr6U5J+TUQwHnV+Dik
	 ZHFEs950DupjJEkJisowGyZfezMzUiI5bVdi1UOrWRfwwVdzhF+h0NpaYAMZjP/jJU
	 4kRFUnSKSK68++3DwcnRyVuqrSoBI+tlH9MZtOMn/Z43J7QKJx3UFoQd+q4eT16YZE
	 jv9p/tS+2R8UbM3CvSL7gjpOaOvhd94x17ybt3ixSJTxySOhbx+QO173FnsBSBdGQp
	 LQsWM/cBrveFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC32CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573799357.20621.10657065868379774645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e826914a2cffaf18b640f9d717ea81819c11c57fe3042c81aeadb0af0f4f0ff
Date: Thu, 21 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755737993
