Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54826107B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713608423; cv=none; b=HwrvCvO/RxSOCdTNETwr9Es2S7YrRFWe90vqtraWblunA5R55sVab3WIgQWgM/Eyef7jWeMDrMOFAoh5JInOTPbQMkYOUmYDf57aEysv7ZjpMCljLplHXfDAtap3tx5AlNARkNZF6yA0yLFrAnG69KYoffC5Ahdwlo0j8Tjt0iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713608423; c=relaxed/simple;
	bh=R7Bt+X4ig6Vd+WToXImru+eg2JB+OETs1/qcuFWZl+0=;
	h=To:Subject:From:Message-Id:Date; b=L3Agebv+U+sLHYOb3dDLP/0+ii6L5mh5hCGRbvQLgKvyfRyN/prPOcfWPaaC0Fn1sYa1RO7F2JNMXvqfaEXin9PSArJKteOG9yZen+Ny5UOAwH0NYjKiRpfeG09vXN3L/9DhKmyWFqrFJWDJIvHNhVzt4qIZuMs84IGHHwSBkeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trg4UYPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trg4UYPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D0C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713608422;
	bh=R7Bt+X4ig6Vd+WToXImru+eg2JB+OETs1/qcuFWZl+0=;
	h=To:Subject:From:Date:From;
	b=trg4UYPRlQSzOKGiUQkOY8yI/02aTSBRRSQg5fgOvQZ8tamBS/GLrTABplVhu90BE
	 kknHX2X2rOKRS/KHTBQOYyBJPBtqwfw0FrVWL/IVNyk5CCPzvOJg2Pec9dEERZcZdN
	 I0yasixZfk5UBhS5UZaQcLiVB+yPBr7tkJcLI7C161vxqCMvTHyCAJrtfugJQEVeSu
	 g5uSj/F37UWuwbfqAyLeQww2Mlgb6h+nbU14Qf/LYFrnmenDMiY0Wo0jpDrEwMEJIE
	 tifutem/fTJpWd1g6Cfwe0y1Y1N3ix65cGYM1/ViQP166P7yiZPSC/7M3QNRpBipUJ
	 v96rnebORAthw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF83C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360842276.28008.4736128868739104432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a677e90c59157417013cec729d473750e6cf165572dd0773161af67879c26b
Date: Sat, 20 Apr 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713608422
