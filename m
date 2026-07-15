Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55533171CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784075914; cv=none; b=Yyjk0Pv3WrWicRcM5XezE7pY67bvZyclJVxhZu2/l0ZtlsUI9ZcOpciwNpKKysQ7KH0yfFU69tXf7jV/7HuW2I10ylEzfRmRkJ39BtOnIvL1Qz2pHPzHBafZ2Vj00CD5w5ghUbg5xdlZlyG514iCARpkVEluProMZ7D/4Mf8GCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784075914; c=relaxed/simple;
	bh=iwPje6quZWKzk1bfEMJLX+cxtlxn/zCpgzgH3Xen/W0=;
	h=To:Subject:From:Message-Id:Date; b=t6zRlu3MMDldInyYOZh7kxkGsz7jiX2VzIfyApeMmR8RAVe3h52ZwG+9xjcQv+/1AuKEiGYpvY8qtILK9CTaOzc5TOVk8rNpvs/Arv5VMDwG2fFT2sOJO6fORo5j9jipTKXM6rwmHK6jVId6u/5huqhwqs93VZpV7Q0H2FLn8xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShQ2DsOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShQ2DsOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47C2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784075913;
	bh=iwPje6quZWKzk1bfEMJLX+cxtlxn/zCpgzgH3Xen/W0=;
	h=To:Subject:From:Date:From;
	b=ShQ2DsOEkY66bJGiMw49m4kod9zMJx04PY9fwaE/ltfvpxWTNP9PR0zbpwbPQiMyZ
	 TQ/PepcqoRLgjczZYzu29rOKjUpXISYZfC44mn33PFRWWFhfc1deNdkw+r+mDFqefb
	 Yr/mu51cOshRP72L7JNrJxR16rd0W6a0EMDlE2HfDHQPX+nZP2SYq5YoJhHPlmGZlE
	 YHCmPmBfnfBvFZvJCqNC12M//uG7F+BHifbL2YxfZFdO2Fk02DvFZxUEHICx+MXdR5
	 BuJX6fymCoGhpNULSe+AN5u35DIh5D+86reFxK0f8tTiVlvSTeqTdNhtvtZ6hAEyYT
	 ym+fUfBCXrccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B302FC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407591372.22772.7718450489302231488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06d2b524156f71c5aee920ed68b2cff3e91eb939e75df4da56331c5ed1695f8
Date: Wed, 15 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784075913
