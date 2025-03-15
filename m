Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590CE367
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742013535; cv=none; b=N6dRanvO3y9cVO8RxbruqiVk7x6aBHbtbACqJE1TxRya0wlQ+RyF6ylkeGSaa3Io+xHlgtVf542UN+SKGKJpnSjPK9LIWHwyhpmDnxATpfckMjKllXE8Wer/22VaYcalFcnNpJjIJtXkl+9qj8PcQMS3PyUFzJNlukYS6Kk5Twk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742013535; c=relaxed/simple;
	bh=A7XLY9p1cjY41hvBpH55dU6nNQTLLVtdXPsZmsIc+18=;
	h=To:Subject:From:Message-Id:Date; b=EveJpxVkdlFi1pkCT7poSys/4M+9LOzPXaqy7gvRmueQ3nCCkQFfh/eYvJ+Gn2B5rf5gz1/fyOl6Ounsvm0ZqMkb2qyAbDpxUSoq/sdEJCpArQi7jXwY1z36lC02OHyr3HPj+r4edoWsIo6LXGA3iADcdZDmM7KrBbRBJZsM7ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=os3Z7E4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="os3Z7E4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FFFC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742013533;
	bh=A7XLY9p1cjY41hvBpH55dU6nNQTLLVtdXPsZmsIc+18=;
	h=To:Subject:From:Date:From;
	b=os3Z7E4GOnbpHnuXUuGVuEVZH2b3k86CCMBEe90ijrnOSBRXQ4XtRbqT6pVqlaBFn
	 yJ25F0Qk7bj32jeumHSScJk9BY/82QT+AlbH+hBSVJDDPXznBcBEtf+A2Q1BaMUOuT
	 n7TPIHWljVjXtreJguI7lT8D7BYFLxgd15fZhgMmlnm2G3gYbAfF14iTEPHa5AMfKQ
	 N3/s4Ayy72810UFwgVrDwpiqyMEPjwJ/fTCucxdI8y+L0WVpyNr72mnib1JfsDBcB4
	 mZGknfvK6011XNZY0gM+iPjSn5oz/W6f9rxVv0p6D8aHS+lUUzPfveaXbp19OYJshk
	 SjSeujNIWAt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BADC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201353359.6663.8228917179716822457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9809184c7912d7439506f72d050a2302d8de151cd7aa19e2edf6df3606a96105
Date: Sat, 15 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742013533
