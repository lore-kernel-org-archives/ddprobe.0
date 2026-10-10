Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51E3624B8
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791618634; cv=none; b=kf/NsrqyOAAH63gQvLG8fFXszMNnU//IbWValrU201XEOFty7g6Spg71XmCs34r6G8JnzWvynLdPTfi89SWBWFIyYVP6TbYi/WQZqQdv1UXRcIPztmXvxYlZi5frveiSe/UX4ARLjYScqUbWmKMLiAQvs4owyCnU/JFipEQ0S40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791618634; c=relaxed/simple;
	bh=RT2/nWMcrlIKNoHNYyA0qcORQcP8fU1V5Bik7Omnq20=;
	h=To:Subject:From:Message-Id:Date; b=YcqWdH7OacOANlDxXk+1/vZw/G27FRoEa+giRCpy7n1ZhuEyeS4L/mxJfcwwU/bkvbMzVoa18XDpzk/jusOlNZYGuFcE0sqkubBRnkhBZZRMLIF+ES3Z4OAL2o1UDfFhS6a+3sb70Ck/FV13inB+5bA21E8+E+xoITA46hPKH3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7J1/EEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7J1/EEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08AAC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791618633;
	bh=RT2/nWMcrlIKNoHNYyA0qcORQcP8fU1V5Bik7Omnq20=;
	h=To:Subject:From:Date:From;
	b=t7J1/EEeMvr4Q2j09SAg9rLntbXsEVRsQWXniB6jJAgAlP9nT3PqWAArVFcjvTxYf
	 VTzRczoS0Ty2tvyZfrOQIBUpVcGwAx4UgtQ8eZadbpr7UYW3g5ymL+jZeDKa7tRLGR
	 1fj1f5xNDz0LiG0Pe6aAuuP/SfhG3cg3cOwbF3Z0rSYgiiuT9QVjPWokMd3MbmmSB3
	 9CicwcQhT4IuF3ONoC2KdNjlJnKobwgda5yqjyH+nGl+VuoirWF68aQFHG03H6RdnN
	 9bGxzA9Advw4KoSBxh4Kde/YpqLfJZkpF6GtCj+ADpkX5NGyqdoh5BF6ga8LTK96F0
	 BQVMg0T1+K7PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB466CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161863369.32140.9249375124465023645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bcb50ec35f729675079f0477d8c1bcbe2a1c9e8ffe557c8a812e36750ba900
Date: Sat, 10 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791618633
