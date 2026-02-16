Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2272989B7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771240494; cv=none; b=c/mDE3LV8+BlxlnpDF42eSYpTw7UzCchiS6W5CXy69KBM6h95VoZcVc7/3BV9NMIpdhaZJGdtJSrvkOHojtunpYwCzNVeABRDJRcDQ/ZxbZpu059ugbOgD2cwYCDErUSqDFz/LgI0v/xdvoWOeHVehKKTy/ZKeotsLdXCmI4oAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771240494; c=relaxed/simple;
	bh=cPZ4brP1FioGls+IlpxC705TJIh9qUYi9ufC9aYyZZI=;
	h=To:Subject:From:Message-Id:Date; b=tINJlmISfv6SU844O9JD6L1RuMsCRvzdsxYwfn9fi/GGxW84eKFHyBvq1er34HjpN/6h15mQyu8IzbRdQFex+aJoDuCjIkh398mBpJS+Tfbt9Q2t7uhjwVEftOcwqPLEmj3kLkuPH+Or151PvuJXqKGt9X7lBCXt/tuR18f8rqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXrR3RfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXrR3RfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F57C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771240493;
	bh=cPZ4brP1FioGls+IlpxC705TJIh9qUYi9ufC9aYyZZI=;
	h=To:Subject:From:Date:From;
	b=qXrR3RfSg/YF4Q8YFkf1NMThwkb3IZADxex1QwTr8k73vgXzKVjuUAryxR0llT2Cw
	 pYN6Sp9awRG0j7nh9C5ZMFguDW7dscOB8sNdaAOupWnZLuxsV1CfZand48SukKESbC
	 SAWrT/iNObUSkApODfK2l+yTC92jNHh8NACdHYuNaF/JoERdcYg1wdFfvVg1u4BkXO
	 Wyc3SGJwHJEr57pSXoAAM4VHn5dHSPJZMmQkpSK3mOzTBwZLYHlSSPB6ZxfWhimmES
	 HzX+v0mMUH2OP4jTngXndHwUdNptpRO4tyj9QaQHPgQPuDgKbrH/30gUdLHHu26KXB
	 CAMItgAvJbaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C949E7BD8A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124049362.16039.3417849699329365251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20830069ecdbb2887da6a0942853882156ca648bc7af5cc1726d821e2a374cb
Date: Mon, 16 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771240493
