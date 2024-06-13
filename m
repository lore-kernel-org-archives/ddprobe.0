Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAE312C53D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718264903; cv=none; b=m5ChnwyOwdk3mMtNtmfZVonxOBDErepv1gH/DlfGmdIXPNOrBSiE4s8dlc8jwauWJ+N0EfhZx0ceLbJZcXpVZL0dHkNXWnMqMpsiBjfe100J3oqBTu+w7QNUMRLWzJYEO0NksKXAyWeidUNxZ9hZcrH5dtGMEF3F6an+hXIbjAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718264903; c=relaxed/simple;
	bh=ZJWLs2/VFaEGj+qfEH3+Fljn6YtqbDbDD0uEhVaJAzQ=;
	h=To:Subject:From:Message-Id:Date; b=C+wz8b2RA4ejLIb4DYOIOWEK0+26JVSvoRbxt753wHnOhFlz7JBrWOhl6FwcZhbqfTTJAhDM3wER8b/EFNX14q+pYfyCG5UWNT+adVY1b2f4n0wPkW9wMekzhawt1Z0drxoa7bqJutqK4TbiPqFc5zf3Qs8xzZj0S81c+P3sKOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeaCLmYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeaCLmYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF82C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718264902;
	bh=ZJWLs2/VFaEGj+qfEH3+Fljn6YtqbDbDD0uEhVaJAzQ=;
	h=To:Subject:From:Date:From;
	b=EeaCLmYM+hAUSN9sNNgi5sJeVRwAvtvIfrY79oQ2NyBVtJlVagK2v8hn5reTfLlIy
	 DXD2rLJ2nZDaNiJECfKrKNE76tN6TYxnvPCff6ogv9BOaK4muEHCLIvzxqZZb8MnZ1
	 bjnht6BekpwmEYHcEKtRFAPh1W0Gd61GOp/HV1EnQuUtpLW3lQ0jJl5o8R6OMPLMvJ
	 yWFxGsytiy3ZYRCQKxWLfk3N44f50us2pcEjqhmYa6oUX4mRluYWovL6cN7khCg9j0
	 9SoMcHnfOulcdk8o6uxEqwPqBrKbtZdkBX+2mtEMnrc57iPBINwUcIslLuYXImdak4
	 ZCSNf9WmdRuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C898EC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826490280.26735.14312434032776767760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52193eb1f50cbfaef9df2619c14234672df52aa146b01bae60318273a9c0f38d
Date: Thu, 13 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718264902
