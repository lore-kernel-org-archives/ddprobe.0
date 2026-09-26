Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072FE377566
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790393435; cv=none; b=kp5FiqQoAXD0RM5nFgW/8S0BfmAyqUKzu+Sta9sCpgfprVnJ7IyTIK8+hyCT+ovMbclz7eq+AfVcmqb7l4N24lkfy8TKsPSszBmSxvdlD4ETWp0Qb8NAyLAmBzY4MbcfkosI3meVaITNI8UGBINYnptc9iS8hGJ68SL7UnpOau8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790393435; c=relaxed/simple;
	bh=3u2CNTHu9zNEBEfuZqq0/JG0TiVsdkmaUelgD/seths=;
	h=To:Subject:From:Message-Id:Date; b=cRTZ6Y1DkPML2fwwTagmlUmmGkno4jTgDljWrdt0KolUOCTPz5155sMAvcks4p/WEOAwMRyOLZXuaVP6NexLBUG0zLmyD0lfJOn/9fLSVF/KaC5vDuMBNAKja41gJG9YC2L1/p+KVAPEC6G8bwFF0QN4WZCR8U834xz3xL+ossY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKrrImOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKrrImOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0A5C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790393433;
	bh=3u2CNTHu9zNEBEfuZqq0/JG0TiVsdkmaUelgD/seths=;
	h=To:Subject:From:Date:From;
	b=QKrrImOYBqmt6GYbbxdMkIKhjbwtSmWM5bofqw0WLgIrQQARyGfnTbMXnfeZPY1z1
	 C9E1HrOSEKeM8auwFPhnR/jyGA75IcFz1njZomGNjtqCkBLuA4jvvzAspNBesUtHOq
	 xTdn0QF0uI5JqOko6ZXTaUUwF7vVlN71odyFA4QJ8POJDzqd+VJ3uVsGFze34hs6Mv
	 q+ATl70usi7emYc8FLXk/2zRD8JGJ017JIeYfhbrVZMv+YbgIe8N5S3sJxqPeA5eaP
	 KUYxbB3FmZKIAzCITGHTgJoappWrVlmjagXCGSF8yGP6L7iz/Lg7ybPaTMPsKGjM5E
	 H/o+rgUSLGxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D89C9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039343368.18869.12921441968198807564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f5b65e98ed3a59b7075dcfa0fc595d94f9c9965190f365df0a127a1a6a98c1
Date: Sat, 26 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790393433
