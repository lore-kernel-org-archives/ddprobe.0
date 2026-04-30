Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE7F477981
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777574254; cv=none; b=K0hCoEDVa+G0h3LJOle0nUumM4RE0ovz1MOFCNrSAORkOMVQO7Ukb7FQu8FT/J+VtlUGA0WIsa9+KuwivHABrDM1jFYVLfxDV5jAnVSRnIf7lEJwoUeCZ0ioQ5HD+rf7pYqcvQQsy0lP0v0+zbCfG88HxW+nSyyAWXVYj9lcXMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777574254; c=relaxed/simple;
	bh=+kS6Fio6vlPcVPFJpUwjt8d5vWRduSp3TINJNelJ8Bg=;
	h=To:Subject:From:Message-Id:Date; b=HmcRwqX/iACkkuJ4Zc4CySM7ltygpqcgdB3SY08K8l5KmcdKTj9nolncU3hvtVBeeS0DmRJrPgZupSKEv9DaeVttqwAy+kFqrtRt3QZGZHkk9NTEfnd/nqz/ZILtyWP3tdGGB7Ay4jxOJi8LrIGpNgo59CLMmeOWbxytWS8BnME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0QTU3o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0QTU3o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE144C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777574253;
	bh=+kS6Fio6vlPcVPFJpUwjt8d5vWRduSp3TINJNelJ8Bg=;
	h=To:Subject:From:Date:From;
	b=G0QTU3o2YKixojnI7CtcErFut0+syriBQCrs8kd+Kfyw6epIXXr+c4X2w3vXeVABm
	 PEBWP5d8BROAk42o5owlT2CnZCsXxGnhe3W1I4kzkxyP37qGrVkaN2do66p0eZEjy2
	 pyQSNEXINQO1/WMm2PVCNIXSbZcR+QMRnsUkHdltPiSzS/Y6+U8GYwqkEd4rSdqKt1
	 dgd7m62f2Kcni5z3uqWc535cPzfM80xwSZO71FO5zHuaZCeywmlOLCbUWD4FSs+A5+
	 +tUx/t0HjcIW394zunQpTNGC9Sp3xZjO8IL1M9y1sLRD2H/hzDxjT/IcNhBVk6lQZ6
	 tSVF5MI3mk/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A07CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757425368.19164.8298933343163122670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4799445e1184c8cb2a91bab398c9cfa011c590a67e85759f2e4d58f44c31dba
Date: Thu, 30 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777574253
