Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47E2D0602
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783011514; cv=none; b=SpJSHKb07AcoyuMAdSfP4I2/8sBXR7DVhO41QuKKgnEjVQv92LfinGnYIue7W/Zb/sHAAl/RCBpO/l0eTaFEF2Znxaf3c+O+3OYnakBURNPwC/jHfgMzrDdtHu/MzD3Ehm5OagjPKcZWkxeP9O8x3iXPX4q0JNqWZ+rrn1c6v1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783011514; c=relaxed/simple;
	bh=OeMwugJN3PwELwP1bAfvPjMuOEU80Tplj3IvEqzymhg=;
	h=To:Subject:From:Message-Id:Date; b=FxP7g/IdcEwcBebBztLR4eSM4XdlUgG8tlhLSIRYRmdzKuIR2vJuLOqSE8R28C9unxSnr/gK3An6ZwCyJycPuhwq9Y6wVkYADev++t1sxiDEYI5qA05zXRSMYY2jo+xRJhoogAPgOUpa8NM/H8LLfmwQJJ1njjO4aIZfui/eY3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwFUBgNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwFUBgNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC5EC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783011513;
	bh=OeMwugJN3PwELwP1bAfvPjMuOEU80Tplj3IvEqzymhg=;
	h=To:Subject:From:Date:From;
	b=DwFUBgNi/vF03itMEOkaHBBBvhSyucW+tQEkg6Qc62Ck5k0Hu9hAzCRbEijpFkSkW
	 zVGBO8p7tyi3OeZHhwcY4OVNVeitAgQdDgaQxBk9q2YOhGkvjSrOouNabBrNIzoPFc
	 BQ27PV7+9hm9biDWUDSGxdLRu2vX7a4CUZiqokhEuLGfZYTTuBjB+YIrxBUti3qoi/
	 IYRRt599NK09YWeOYdK0MR0KbgQQ8FtSDeAhm0wfO4gZ0jS5d1pOwkocWftiuTO/w/
	 1jm5hGVUN8KTeETtOxSy3EPKc3uminWRTTMt4DqfkyoTsEEfgIGD/X/EAGr8trbxQT
	 +mP3MMrXMdlbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E74C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301151368.31604.9402478113114362602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449b306a5fd9a3fe8f64edb0b179da643d3e3177de08ba74fb0522d29d4f582d
Date: Thu, 02 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783011513
