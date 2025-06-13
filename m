Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCF120DD4B
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749810595; cv=none; b=RxSPHW7bylvqL2nKS/u+vTLsmCd2mc09MiyuwYqfscm79qROw1kXX8TC41ZatJqREjNVBn3O8i3NqSuoozezqKmkpt+vp5nxqlQLhCfC0CMJtHfo9z3g+03UBUg5k7rDPCMmo6gV5Ho2rEC7UP1BVT1Hw6aZ0AifxmmfzVCvS48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749810595; c=relaxed/simple;
	bh=anP1AUZpT1FAoG3FLv/wzib5KWr+yc+gQ8hXnZnLlBI=;
	h=To:Subject:From:Message-Id:Date; b=VG9tIwa2gouPWXdUs61WlA0QHQUDILk+TjtyiuMEecylZTisB49LfiTmCc6YzEygwZtYZRCPVNcZgNt/IkWiVIUnNbSUmAsgeXkVocxvTBCTooBvlYpTgt9M7R0+Gx+R0zu5j96jJwk+JB3IjnMGeoCasZKj4dRLd9LQpt4f6Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKfmLOmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKfmLOmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749810593;
	bh=anP1AUZpT1FAoG3FLv/wzib5KWr+yc+gQ8hXnZnLlBI=;
	h=To:Subject:From:Date:From;
	b=aKfmLOmAaHzsNDpjUPf8Lqpp8VL/osWBROR0ZMpqBjFh6V9DR5KRJd96FAfT8ps6o
	 EpqYbcMAv6Bw7FTfxOuusR/uvGeHOqDqu77YrRqwtnYANVS2oF5ZCddt7q+NFCuzd8
	 Py85rKrjj/ES/8z+qD6accpwPM73oKOVcSKc7ONgQlhNx2C6CLusfa8v+u9yulRve2
	 o09L6He6fH9ogLJpPdENM6S3Ibr2D8zebuokWmJhgJ5X3L6wCZyWIap+LHGE7+yyUU
	 T8SB3A/q4Bbt6fO+zdBy2rMn5DVYDkFST+3FzdRo/Slmx12eOx2N4WY4TFRy1msfeu
	 VJE+P0KOHzVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A4C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981059357.29326.9988388419966423602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3028a75a323d72d04c4f86e72df0b5e3a61b5ccbb468ffab067d506aa4eed6
Date: Fri, 13 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749810593
