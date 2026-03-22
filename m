Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE034405C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774186494; cv=none; b=hcNNfGkzTLg2pn5Mrd5Yc/ooonf410evOrRSGa40irsFvWYMEGwernsxzXSAzq0jHrMHARPxj6Pj85FidgKRVERejX1qzThd1z4Zp4hT89/98NCWspAN5uCoPxAzDm+pec6WkzPCP9TVOPRtsjvIeGUz6RPFniWEQ51sMSDBCAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774186494; c=relaxed/simple;
	bh=h/Q53qRESVZKncuxLz8pw0yeSGEq1Xwq+HJNrNJh9EA=;
	h=To:Subject:From:Message-Id:Date; b=DE0twL+ghXFZB0DdHUX6iNzrWg2tZIWSyK84uMtlyNL1tMulc+uSWrvlmOFdb6rQ68RxV+qq+KX6ShhPE5b7IE1yxlRpKBgCvghB6CfDAStU0QJQpBU5UGl64XrzPRmgOlC3twY9WalMv4Ahz+SfPO1v+MVJ/JwplYJAwXMlSaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAxyZggB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAxyZggB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2061C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774186493;
	bh=h/Q53qRESVZKncuxLz8pw0yeSGEq1Xwq+HJNrNJh9EA=;
	h=To:Subject:From:Date:From;
	b=KAxyZggBUJ2drV+K/ARCsPisFd4Giv0t2lzyWi7ImKSNzN4uL0baiEmV2L2+mH0Fj
	 9b1nTp9dcbc7NOIrWDJ+C6yotHt/28vzl/sYEI2+i1X53bMrWL+SOfbCUL16G1vdVK
	 sfnuK6N8Pcnp7V+tjO8tUDcet0yAxPfY088kFfpgKZLwvSCwj1PO8+9MxoviYII6KQ
	 ev0rJAezDca+d6tNdn/56R3H3Ghv+gnAdeKX15scUE7MG52FFzM3t90WGwiBxjuBxK
	 0shFekksPZntv95aYUP8byYHT8Q8nIzdeOiW0VFUI3LGrPHIIJoL1kl19sCwTuTagw
	 mPPbESWcSJb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90222FC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418649358.18551.1822863127836522601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdd86796b38b7edf90da19eddee82a8b3091e6d4a3e347abb69159786f81feb
Date: Sun, 22 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774186493
