Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3573446A3
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775819854; cv=none; b=T5xUMl8bAJHrBykTRgOd1Gyvig/bn3eQPTtCtRNbqa0IK6XD5cWcDoqUl8XpJlxx3ot/YctS3ADtXRBaWVj2e0ub59unxwFRDiLkvXEjEp2LnLnUBNAiC7z3qVze5PeAFZeGPqZa8wwCoxdy2Sed25eolxDb2LAZXDgig/8J1so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775819854; c=relaxed/simple;
	bh=eLYZmX8YfFqd0S4wvrnzEZ9sKaX1a+OB6d+W/4NlZjY=;
	h=To:Subject:From:Message-Id:Date; b=u5NktG1SDPgV9OdZHSzQmM1LvG62HgbwDKh85tZzKtroc/jvBpsUCTce28rp1+eEnYgc7eWbezV9p4Xi0KGrSBK8OeVYPLZ3+qra0f5irKkgIXE8vk7kZW8IQQVB2bCGeS6CJjy67nm/SePPiUAS2+3+dyN/sEyWcW//PgBwqOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVC9c+K0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVC9c+K0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D0C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775819853;
	bh=eLYZmX8YfFqd0S4wvrnzEZ9sKaX1a+OB6d+W/4NlZjY=;
	h=To:Subject:From:Date:From;
	b=aVC9c+K0joLWJl0F67pdxjuZxw+Dvxjy/jDY3/OqUNB4FeQQ5CmaPOw1X5JjsdWc9
	 fIDYli51fpzD9o9wUH4ST0d14QY3qlhQMWzGXlP20ilvzVkeNcFDN8CBsXd9XaHuXW
	 K+sT22IZlzyBPUJuMx4MtuHKhCU42tuoWp2K9y9q0DOnS9OHctDuleWAJtRuYUgmCe
	 VUsOE6Zeu21/xoPqBHTvqwHSlhqltEw19EF102WhbjHudRf/mZSDlvZwdfdBaeW5TJ
	 NeuAuYqdd+0uMFFizUlgZLUIzOqRYUC6xRpMufETNE3FMGo1KlkrXDx8ws8AF2+USk
	 oZVNk9k0a4ovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF40F44840
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581985368.10768.11091265466891842121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ead488432479907739b5408474f97a2ca92b4d5325bde16936aaf80c4a9edca
Date: Fri, 10 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775819853
