Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCE3264E0
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791739234; cv=none; b=mdOzHupurX4fTYE/v3ewN6+zTzaKbJbiT4VRRWDKhfgHXlAq8qI36oqRroS6xY8gYAqhIOWTF85Qk1rs7ZZ1KbzkB4I6qVGMhn9T98xkylC5yzFt323oSP4NtyJNACtu8mKLM+wzGDj/WPe+DbUfGVhuKnHVXt3yuRoOZrxBWAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791739234; c=relaxed/simple;
	bh=sr192jLypqV0SpR4tcfDGLkHqaouc7/QLegqziA0L9o=;
	h=To:Subject:From:Message-Id:Date; b=ngBX8mjR22UeChTZi7ad2y6kxrTZtDCrz4ZpoetkUS7Vy9x8I4jpohAr3htMwAdoFikSjIg3RWN1jLDWHpJF0QOMBFNHnqydWmwX7E2MlZEyheKVISqCphW8NiBv04aeCuwQehjAhQohIItMoZm2tSw/+3P85Bau4uH8NPweOqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t++i4vKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t++i4vKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C49C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791739233;
	bh=sr192jLypqV0SpR4tcfDGLkHqaouc7/QLegqziA0L9o=;
	h=To:Subject:From:Date:From;
	b=t++i4vKS4UO5abJBlmIwBMzczIY9Yy2aoe4ZGbd/98ZOBdfNMQv0FqTd5SJUdaDN0
	 uAaNH0as6zbDa9ntmlrxswi8I8unHVIxrv583HXXyd2NqN9mGelPATqjfO2PZCO93O
	 rSbAeBkuphxDrH8Kw9i2nX+/6bkGk/LeehrOOG6SffIhnQ+hoI/XFrmslWfIn74GIe
	 M9DULV2hS+7poKEgYiVHpZMGg2fqbT72g+59YFXHFbs/doyqYVEpbCg7r6ofOmG9lG
	 Lll+/OdQ+ngXE2bfxVXa/fcbEv3cbbEJiRC6X1GrASzsWAE1RhGvnKl+aE5xAomHFp
	 c62jMXmq1iSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FEFCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173923371.23454.2411212678843349870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85986646e1c8f8c7363a9051f8bfe17fd268049af06059bdac9760609df0dc8
Date: Sun, 11 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791739233
