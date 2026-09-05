Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66959224AF2
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788584434; cv=none; b=uXeDhp8JN2xub0M62H7JMW731juagSt12tRM3oU3ocCGCe/tYLlMZ9b+oEddjk4cekFhRJ+0OlZvXFb4WFpNhxrp0mZ2K94Qh1kvD/MSWTiTpVV/DQVPIr4JPttCdWR2gFA07bv0idWUs5hNHCChgadM7t2LJXEz3WwDm7xVc10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788584434; c=relaxed/simple;
	bh=DlzSpl8O3caS/706fhxNxkf8k4Gk+scIemk1g+P7I6Q=;
	h=To:Subject:From:Message-Id:Date; b=Wq7k2HDmXN+CZtLsAqHT6kcbaFtiFOgh8e9gC7FOmlFUxp5sUPjHJdS3HWqiVnIefuTi8srSJ0vl57vVAH7P45axMXQjVvTAMKtmARgbLye9m9vlaMoRdeRpbru1MyE35NRlUoDdE2+YCekEOw2NRxKTkmFKhZQOqOitjaQB18g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1JVeewL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1JVeewL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA626C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788584433;
	bh=DlzSpl8O3caS/706fhxNxkf8k4Gk+scIemk1g+P7I6Q=;
	h=To:Subject:From:Date:From;
	b=r1JVeewLESNK1Mpr+wn3pnxPE0iNNRT/xOfMNbEN5M1g/fGPK4GzxKGDCUdLHKuR+
	 PYHrwEJMPoUn9BkN6qoy/b+HYdOgBFNu8rsLIzzw+Y3j72DYDsWB9YpbhPqR/UUHFP
	 CddgQdYHd1rUISHNPN0MbuoQ1xJ/AeRbxExY10dTDR0TBnWrncZKKAMoQ4IRDyDocz
	 tKajecOi6LGdAfVoIYUx1UTNLN1THSl5bm9EmneP+56pBKOyAJVQojUihOqMW08Brw
	 tmSkotyf7a/mIAyraC2xPLNMPtTXYQN6s9RZSkRxB0dsDlv/YDRD8q98yLC/r7Ik/n
	 8RXEqzpf30glg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D25C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858443369.8336.1597294103776966712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3c8e083743e87d95eed688beee5d2d2964a38ed3029e1346b70346062922e0
Date: Sat, 05 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788584433
