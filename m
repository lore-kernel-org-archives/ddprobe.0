Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2081B37DE92
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777586254; cv=none; b=KDcDAd8RqiYWzqRiBN4+hbjNkABEZcCmNF/xxvBfySnVYbC33VO9U9TZHyfswVluWJXPRIu5ZQayBdS12Ac7pSnhATROUj9PtaKZPri57JSJbLkVmcBp/aFaAKad/PG17RMrbya8gwoX5fNAFvbLKIM1hdcKN6GreBpm+mxxxww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777586254; c=relaxed/simple;
	bh=XykJwLgnZIfmxxze54857qtQJYDkspU6LcXINIjn6P4=;
	h=To:Subject:From:Message-Id:Date; b=neR+8lIyyqKOvl9ERV5Vlj+hlr0sRm0hY5zdHmYkfP2/3p0EqndcyeTNerE+tRlhgwAcsOdRv9RVxMoGRN0KL3L+Vp0Ki2fR6uFhKNUSQ9xbR8S87yO8irvHD9M6Uu4B5YcQc4OU98m1VxluIMzUIal19x3aBNhmCSb3c2OA3xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puHffU2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puHffU2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE86C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777586253;
	bh=XykJwLgnZIfmxxze54857qtQJYDkspU6LcXINIjn6P4=;
	h=To:Subject:From:Date:From;
	b=puHffU2jjnD9+fLHP8BQDaJFN8sQ81CqS3a5VY29OUzpnWUbx3RivsloMfVXiTZuc
	 hvK6xnWbYMqwiBlQNhrZd8Ez9LhAUwYzSkUzkIWGcGIMl56m44T8awCtq3knmnTxDe
	 Mk9xpE3OxFkDrobffpALwVXFUfooxaS8OU1+XMgRiOnuXsjH8ykbrvPEgIEy5TkB8a
	 LFgqwTqq+SrGbzT2ILmgsoQxlq7HD0yZjfgSUGcBBha3W3ZkKg+a21nLGhQ4wmIbGW
	 YR0LnWzbXQChXFY4lCYl9Pz31lSVFYoZNrWpS3fxxSHMCK+WI/ADqNN2QlshhvbeVD
	 0o5u0VL8B3fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D8CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758625368.5601.10743406881617644301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2242ec9f0b48f235e026242447c49877f8c3c7fbb52a7e22f369a816ff9c06
Date: Thu, 30 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777586253
