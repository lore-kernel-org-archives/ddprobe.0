Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1D21DFFD
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774963494; cv=none; b=eCqKs9SYOuuEmDCYwaxlIZt4LHV9/4ExEdALYYdbmazW9nsSRbeU8Rhp4KcgAT27HposWIL5eqJi+9CFIHaYc8TfKFpGBBiii+Xw8i8Ygi9t2L7/D0uvK+MlrwjNfZtGiTDLtG6IbTCDv8HsUfAq21StdxVKbipvytG5cfs09UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774963494; c=relaxed/simple;
	bh=PvH0s0OSm+TZeO1kM9KSlPSEJFC4510J7zWleIIWtow=;
	h=To:Subject:From:Message-Id:Date; b=AA7lCrHWQSLOIj5UQyp/2V3ctdmZJoZWnzh7VBBPGAk00eGXaXAUh2XlvYo6+TaDVEt791+Uk8eY/duoLnnmRM6gif0pTOcEby1+ibxqf7tj9kfhGGz8deE4RDqxXnw7hr8aP1yqnLtePoQGispofPQRLTh1OqRwQFE2sXePJCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWWOKofW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWWOKofW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACADFC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774963493;
	bh=PvH0s0OSm+TZeO1kM9KSlPSEJFC4510J7zWleIIWtow=;
	h=To:Subject:From:Date:From;
	b=tWWOKofWdECXOe6uxSPfr6bkMQN20tfJv+LJ+WZUoSw7wfTVWRc/FmoQbd1lZQfIH
	 DSezg+dESnTGs+XRzgqzTtIscxXicyFHh6+TVUE9v73RrDb2toLo9ZtkI0C1kBSaqw
	 tRvtxbzQvEBS4sbCLgD3Ajtgtu31Jm06XRDHURvmnyAlJwXCc0aKhvyvUBpDn5Is1r
	 ltjPOGxX0MUiOfFUcYE2VcaRAq35B/ig03m9vc0cU1YmjwmqriQM/mK32J1m/8S3TJ
	 n0/T4uAwPHu/f6w5pdVittTyqR3pibMRgKlgJSslKdwd2BHQ1fi6XUu4nsOro6Z2X3
	 qR837syQdveSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98899109B46C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496349361.21426.17135454151704790147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b830dc0599126a4ece2be98f3ef0c287353ab121fbc0b3864412ab5958864a
Date: Tue, 31 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774963493
