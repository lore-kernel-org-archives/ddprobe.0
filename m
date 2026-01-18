Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D189C21019E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768758233; cv=none; b=PiCIPaQpRB5mLE9vw51Kxtu412PxFQv/3LkSjisJuqsNcn9uCS+JjVMMymBwADUMoPMHAN8Z0mM53Bghs+abXPDhmI1QE96NNHVl+cyZseTJfzFRUDzE25zZvHDqlbP1g/qcsSRC2USURFe7sEvV7Emavpm7XHJMCUrCFzFKk8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768758233; c=relaxed/simple;
	bh=BIF2WmlreKTr3BWw5IE3sfELMsdS0N/Ph47a0mCCUoA=;
	h=To:Subject:From:Message-Id:Date; b=ImN3vHnFvSNmNPM2aKGiooVM9KIQnY7XJlu9gyKJIAUT02QX6b8LCVqMGUVV1/uewNh/btPfmSz+cyWuHfkejKgiMsNkYHwgq/cKudXD5zPp76bGM4MFCv3JMP/uqPoluN2Q4spX3BptAJNrHfv4y+dEUxQHHqJDLg1U9VCXg5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHkipUo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHkipUo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDEC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768758233;
	bh=BIF2WmlreKTr3BWw5IE3sfELMsdS0N/Ph47a0mCCUoA=;
	h=To:Subject:From:Date:From;
	b=dHkipUo5vp1Igd3LbvbzfwdQV0j9PfVCjq1YCA0LcZgSfm55P+Vx+Qx1G5SgYQnpu
	 J+aqS51AwSiBUZkiXLhJSxjgdyec7XQAP71T0WbPRWIHFmvQeyb5mrODbFWRkxOj07
	 YTeaMI9XzxjdJ+fD+5gh+xcWFO0JiBEZOOXJp9PmXpOh2cHL8TBeU7dE6OEToakV8n
	 FXo4F+X+efuLEjpd43Es49GbFK4zz1oWMoNPNwC9WleO6AeuNDKGwHK9jqiLatunqc
	 f4PDqABBIWVoC6HcROG3qC0oUg9BcvG8cohKPDOL0JwJR95letEunLg4sCDcJtnfQt
	 8rwf2hfKbjP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EDC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875823358.15272.9284753542809260765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b395d7d4ead2dbad13f39381fdd6cee2d14b7423a14b678d4935110ea9a07fa
Date: Sun, 18 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768758233
