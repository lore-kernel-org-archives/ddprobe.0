Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CEA26A1A3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750539594; cv=none; b=FlydakVcfskChz52VlizWJdOkk6F0vJaqRnEYNs/0Ygeq/0ax2JggOE2tCHcVsGDfIEz50F1xrdXXSHfLDpL+tgfvB4NSvZYvYG0/KTbPKmi0vB3mR9skB17lUGZA++i69MSFzlgIVmfIjREf1jSpwcOrpx+8Pm4STcT1n1xWnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750539594; c=relaxed/simple;
	bh=dN8ctseIIbhpPQhdJtI62otkLybhUnrbeSZBLsbRgEg=;
	h=To:Subject:From:Message-Id:Date; b=Ef48SqiqtpizIi/iLst19FS9S+pOrrN7bPIZ/+yxXiGdFbCyXEhfO4EKihTDZrrgUQ1eYIVyGr6aZ+3cvyC+iLb+TNSkmTgNZtmPMaV28otQe54sSGYVcekzIDJpAyiIq1xgGxmleTOSC+5D6od/E8pW3XQ6wUhWxyCRYxFGfCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJyAQEMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJyAQEMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A326FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750539593;
	bh=dN8ctseIIbhpPQhdJtI62otkLybhUnrbeSZBLsbRgEg=;
	h=To:Subject:From:Date:From;
	b=RJyAQEMvGIc/2ZuVhMaOIA3OFGe1+N3AVJvKEsAQw/rnn/r/osmRFqrEawn1sgjRy
	 BDFMElZfpU1I4mThUz2nTDx1gT/9I3Raicg0xVXUHAXXJuzTRD9BFo3VUxeLC29u3m
	 R+kECDUmYFity/5IS30qowAxXo3LTRqq4m1nLamyEyZbYVHd/zcOH7dWI/QRNZQ72v
	 s2uKjk2Mv+za3k4//miSmfZTou35NvZ3aEkwehr5XUIRDiKZj2FgidU0OReG634MTM
	 epIE9/QZmZxG6bDqEJS3lFWGvOS2orRoaIB6EEYTTSs9F7EDVblaNfX7zFRb7DPfJD
	 GlKIHLbztcKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E6C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053959357.10535.10025932494663684338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9aa4d2aacb7ab91e424c325b775fad200b10c3347aaf8127824bf8a1efa1e0
Date: Sat, 21 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750539593
