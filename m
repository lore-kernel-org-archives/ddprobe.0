Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1181C56448
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708385297; cv=none; b=roFSgZ776I80ijVaH/EmMgPVrDYGOfpR6HDtdXcKajlSeAFuZ78912qFnsPgWLQtmUh4XDKC4FNzNOWm2lP78ensY/M9KM6DRn5RvR6ykdk6GWhlTb36vj0jlP83GO2KLJrWRNaGFFb0AqUThAazSmPyXem15evHPyseGG//h2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708385297; c=relaxed/simple;
	bh=RIsnGynkK097qqgYymPgmqz02xyV2fxC8r9VYXFxyMU=;
	h=To:Subject:From:Message-Id:Date; b=IWtzaKZm28vgwDylobakUHa8NALlSk29s9+6sVxMyz/cpNTNNF7nQMjIXt4fIqPwbYiHTeaHKSTknsAOe7dqHwuvegooG+P1aZswcBq3eCsP1+pjIbl6NOmfp4PVIS5i8R+mP1eX8ziQ4VFEnQhm/IawdDWx6NlofXYtM32jvXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l31YQBbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l31YQBbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 852CCC433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708385296;
	bh=RIsnGynkK097qqgYymPgmqz02xyV2fxC8r9VYXFxyMU=;
	h=To:Subject:From:Date:From;
	b=l31YQBbNlI4pDlusdR1OfEiXyx+oTxu1JxLV+ISrPPiFbt/4LGfV2I1uQMRwXjEQA
	 jw6LzQV4RuQA3QRKTJtyrkr9xtebZTRMeAxMfDy3WnBvVM8OA+mkzFW2N+K5RX1374
	 1JPaz+BkDBe3e7VBfLTOGSrLb4MlcTqA7AHIraDQkOvrP36PstrLQC3Hmpc+SEQsOV
	 DExa7NLp7SMQLns2aXBCemCrI67BYQ517z672cbxuwfYMxsdBMGrgkm5v5G5oOJV6N
	 05C+GMsdtQyb1JJB/f7ISqAaSEAC0PtSH07ZoawTRm3E5zJUme/dh3SKVR4gE5PsyZ
	 wsNELb53QzVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A811C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170838529638.26385.8483049673870894725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85db738164ba4bedc552dd22cbc6fa26b0ded184f1e542e3e5b3d5bf543e412
Date: Mon, 19 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708385296
