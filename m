Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C854C4F54
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790769634; cv=none; b=mS44BnXSv5wMr1rTk95iJNqUUjjQLlny69770TWPeHSdyNkwJ9jhaqIC1dFmya3+jagXc/2vigCjiFBY+YJ9GzOJePwSVsFDKTpFz68XaEhA+Hebgd2y6z+9S2+xVO9l9IgjC3rfme3r3+g2ip5hEGzh5ZXoc7pwtVmZEDZ7Xxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790769634; c=relaxed/simple;
	bh=3TeHy72FwpN5T6anGkfJnMoxrKzUliAWSepQ8TJOb5E=;
	h=To:Subject:From:Message-Id:Date; b=IFX77loyiXM3spDBUQSwnPeyjtczA5HR6XlTNN+4wDcD/pKWDJnXPbZJfA3jARAgWD6m4YSw7K1zLQZcKzVbTpp0Au8cd/rMz3x0H78sAgURiVzDQVpMXDEpL1adnDiixq8VcifSngHBtKAlZhNf/utJ3SgIaK+Qa/EHo7GOnnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyY8Om6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyY8Om6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF98C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790769633;
	bh=3TeHy72FwpN5T6anGkfJnMoxrKzUliAWSepQ8TJOb5E=;
	h=To:Subject:From:Date:From;
	b=PyY8Om6i5jCdZ4+1Gp+MKCvibDDtR/VzL7vUs11eklUftLzK7FNsziCTlPdwfBTci
	 7xJHqRCS6hJEfxFs7BSGRCj3paMdKnEqzBHOFw7hozZyMwMwtlRxv5a6qb+LiN/WqM
	 SexsreWB1zJ/KbK6E1e6rIspJH4esFxZUpNn84Xs26pftW5BdbG0KWwlb3UKwX/iPp
	 xVSLaYRsFPibFIv8VS3k2c38NXCIcZ5me1UuuNKPF+rLPEQ0xsAaoECOY/9F7Gs+Kc
	 1bAuWQZzOGYbqw0ODG39VdL9vHeLAjeUMU7jiF1g7W2vtrW9NlMlEVFVrWZx6+6WqU
	 WxJl+0uf1TaSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97D8CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076963368.19367.6046427029291382751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3471d88c5dcc959ebb80892d00f14b215c3a4078a9f6734d883d8ae1c6933f
Date: Wed, 30 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790769633
