Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D46F1DF749
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741706334; cv=none; b=hV6x2Qug31ebF/nIaADmHHrRYwjthK6PaCyCfSnOxxKCVc3QPOu/GYQh9gQw3wg4esL2V+Nd3oMy26vNhhvldh9qwlDTlrJfc4YlQ6PInKaST/VTNaXnc96rwsrV2j6phDgPiXZxtTnVITx6Wdc5nQwt/6SDe3C+HSYSYUdMUes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741706334; c=relaxed/simple;
	bh=49lsyBgvZkafh5S4MlnBrd/UkCIiVQnl2GZCCuKA4h0=;
	h=To:Subject:From:Message-Id:Date; b=FphnKvv68Icaw9iPmLPdbidh8n0yxInW73TweF+nmbZx2xh05PYJD3k5WQnG2LpDjc/hfMYa1YrNT6/5+Z0NYEGwE48NaaYyh1Y5OqEsUr7bkwvKOFwEvzcl4HBT43E3pUIkCywoA0LggtzGC8hgHlhOBk5IeE4PNCkMQF8Jw/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olLrwhVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olLrwhVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF271C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741706333;
	bh=49lsyBgvZkafh5S4MlnBrd/UkCIiVQnl2GZCCuKA4h0=;
	h=To:Subject:From:Date:From;
	b=olLrwhVgVc5CHircLPoQTIeY35HpWykY8QzCvo6nDVf9Xd1Eb8pJlnn8zg3WkwfEs
	 LDDbGnFopUSlksambcSG6jIznDepvxlb/YHoJQXX43rK/L0D940OKNngANRAceVzdD
	 2okoeyKqJL7AGcTSPCpvkrkT79kOyKdDg1IZ1cNozlHvKXNXBiBJ04QIZhruwijJF2
	 u6vfYwEyf8trTfkZvG2TPCJYk7R8XE1zkp6KisW7misPY383da+4W83qvXt+dlzlXD
	 NAA46mPiHzjf7s9NMN/r4q2AC7W28UYNhJTyf/x7Df2rbw69myGItCSoPsYb0Ip8hE
	 v6+LfdcmwSuvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BAAC28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170633359.1226.5236185058964068235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39b5e83a68605489fae0caef21ad30020891743e3d4330705ba602e77581cd3
Date: Tue, 11 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741706333
