Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DC67A13A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770477834; cv=none; b=iJrfPrXx9PTjD6O7ZMDTxnvoK3lx1RZdLGF8xpeGmEbyPGvPNb/CGEoa6Hqn8SCPeK0+bVrE0AAxxP+6dUf0jHpsdTkqWfHjmD4soZgyeLRwo/yNPPQ5whzXERcuNws0xX9DDdmpFqZg68iwOWcRuR4oiDUwub8ekG3ajAjOoMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770477834; c=relaxed/simple;
	bh=8uo1AbMlfvtbTAKx4rnEToGFH3Y6ewke7c8FrWIaqKE=;
	h=To:Subject:From:Message-Id:Date; b=uH8vXnYnrC7ETUwcnYUnwG/jc5MKlnmkAJxHesz0ORLMLYL/vq/z4lmsRjXhIV1Q3GO62IrhOE0cUXrU9EH2b4KNM6IJJbFJPtZEL/ppmgPyxb+64qa0Mc7yi75FEiKMp6/KXShEcuFOF+WmmisLehP6L9xzvKDeabCX1g4ZFRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNfJy6Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNfJy6Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E6C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770477833;
	bh=8uo1AbMlfvtbTAKx4rnEToGFH3Y6ewke7c8FrWIaqKE=;
	h=To:Subject:From:Date:From;
	b=RNfJy6AaDV61Nn2lwibs8t2uunmg23QS7MKJZDj/j4UDQoYfZN0WsZw+kljRcm8z2
	 n/uV1n7SWzDINnvx8usQE8yAvNxfYWTczulWfXVByDDlpIJIv0fTXoRtCOYnjm2UHS
	 ffjHJdF6joxDXo5tnRexTNEg/wFCc6hNFiuGTWuu4ANszsEYlc1elkIfHj9RYnuwfY
	 OtEX+Xw76X0fphzrpZq6eo4HjlcLQzSTS6QGOncr82L/jxnvq4IUo5AxkmGoFvno96
	 gktt65eWRsjnGZSxQ6YSCigGg031qWIGzRrJz7ejhsfeQuczGaX7Kx7/73T0iENSlJ
	 SWDrONsYN3CmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985FFEE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047783358.18223.17330864361571569513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98558d22ef7604716631ccc77a950b5b70b2d9d38e7f9a0e76e594f10c40b48
Date: Sat, 07 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770477833
