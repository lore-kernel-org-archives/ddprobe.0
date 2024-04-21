Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CFB17E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713664823; cv=none; b=u0OkPtuKPZaokDzCqP4sp+MwqOmqzIDrk7LJvWM+5HBQWW/PAsFlzw66eBk89WyiDZPpD8vPJ6rhM2LQ0497BVP1iok/AZXBIuM5tyrdNLXqiuE8PIDLnIKiaa1RRt9EsziUTjSk0qaagFOMrkvVSyEIZjtLHE8E+HerNIo7qt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713664823; c=relaxed/simple;
	bh=unRBljn373VKC+L8xj3pskcRTqWLwUpAdflaanp1inQ=;
	h=To:Subject:From:Message-Id:Date; b=LNKg8w9Ubc6P8kesjLSR4I3Tjy5ffBVOcc60zj31RhJkjiwBM7B3JsVB/OMT8NBWcLyKicMQv6dGA+L1jncQEr11I+mfpnSVHJTw3pd0csqfVU3VBLFU4Suk/QMh4RQTKW7/8TPEL6cDrthNQxOmP5SSQCxKoCJZGgib2oXcG68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2NiwuUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2NiwuUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D697CC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713664822;
	bh=unRBljn373VKC+L8xj3pskcRTqWLwUpAdflaanp1inQ=;
	h=To:Subject:From:Date:From;
	b=r2NiwuUiri15QEsrH0YNXCA989MNT8Ttpx+vbz/XAEa5vVvMn2hlWGUvWs6I3JOFK
	 ud3sIY/WUfOgRr9UMO1fCEk2j8TRVmHa5AWmU/shWJnWx7OfiyvmHWXIIYWx1JkTYM
	 h2TSrikjiki+g0rQ8gpUt5rYN1+iPL558Qsz03EBboFCr7TbA6VyWf96N8jemCmUg8
	 PUSgVjuvwDDnmyzS9tqF0cvUuMsAv9S0AGcAHbOOaW9oR+arJ+7+MEHABrxOPIJ498
	 whzbmxJjClzI5brnVj1YbHIcndfErzG1MCiDb2vbnwhf3XPJ5RLLQ6+agKzVyP6TWn
	 rP8QVpnpmddWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CE7C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 02:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366482275.14681.11116874512509342276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e064ebc585782ca6d4a5217d1704fbf130fd6ebbb93e8b9f1ccf1f15cee65e1
Date: Sun, 21 Apr 2024 02:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713664822
