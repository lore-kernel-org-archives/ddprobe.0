Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F3152CCE6
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791922234; cv=none; b=XLFuS5fzG+j2V3P8MGRgb3jh+m2tnRbcQhjDNVpMxZPlqSRShKlmumRF9rjNahyaSZXyMbZa39VS53GRiUyGJucB7SGpKYVBRXFDm5GTx1lKaWm/e5YMRcH5bJPmYeY74q+ah44DKrO988pKQYONobeGWoIZFIm+ofkd0TDV3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791922234; c=relaxed/simple;
	bh=iE3KtSYSSzJpRg/Kh8xAcMEIzVw5roGu5UQrBKoirWo=;
	h=To:Subject:From:Message-Id:Date; b=hpgMJiauw5SfvIXmg4AXm4E1ANn7C5aOILJC2NYNc+BD2R4vdSCt3P9nGhMGblsCwsfCdMNnplFzoZhnzdF9hKQS6emFSR5+o/lXpeiFWlVi5EncRRADikMLSI24YRo0yIlTtlCVe7wBbfLmV7wKfY/59uYS/27iggUaAdev+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKPAR59A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKPAR59A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8947C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791922233;
	bh=iE3KtSYSSzJpRg/Kh8xAcMEIzVw5roGu5UQrBKoirWo=;
	h=To:Subject:From:Date:From;
	b=uKPAR59AHUOqTjlOXm63ifS1hMGQcwZqTeAXh4BaV2ArHR6s3uSvF7OLHix1uoRnb
	 WNPG0UomL1J7gLPlXv7zFMIzGAhwlodEHQjDHhzqh46iMrXo0kuTBfh29FfM3/45/f
	 bcXPypQzxn7VgrfeafHpphu3/PqoVLRBOpyvWx6agXzbPwq4XYYhS7XxowJeuBiNo3
	 xzSpz6epFk8VFivalmFMQR2sV4Tpijo5gMKzJOGP70yCJH0Exn+1UXgXDM6PSJmFQn
	 8H45j3/90FYAZWvEyVHsoGrwQ8MiUS8vI0EtK/XiJlCtuiGZ7aJD9WRmF2b3rW7/j+
	 Bn36WZx2OlojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B3CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192223370.16007.13494546433647383626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77598d422aeadedb59887a7daba3e0c64231d5bac62d536ed8ecd770f5bb874c
Date: Tue, 13 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791922233
