Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CA17BA0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727922354; cv=none; b=Ud+mrRbYlgDWyBAFa0RAk22pz9Z4xZOm5H9vuRkgmnz8lndeWjrZ0mJqgC8qY5j+Ul5dKzj6NYt1TM+kvE4s27Ku0u0bz9CCpT+WXMOeOAc4gNujp2JNyt1GXFN8DQTZGxtR0OfsR4HS8P2FZI1B7A67s15/UMbvJHbk2hKE68g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727922354; c=relaxed/simple;
	bh=qWpxhrLVDJjnr4kUIP936dXOBWrSQvdPkT/A6tcVbx8=;
	h=To:Subject:From:Message-Id:Date; b=A/TFoAu75eMbSjogrxK09tNkH55Lvh43edGja2CotKSE9TsQc1aSha2csqFTHdIHyJEDcXnpuHQIMG0KgNfFcTImbhF/U3NfsKhASkwFDU218MDs+XmIMgI0iT2SgmGRGrf7i5o4/u/VqgnCCUIQHNIBkBi501Qqi1HjNDXj96Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cx5m9onA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx5m9onA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F9FC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727922353;
	bh=qWpxhrLVDJjnr4kUIP936dXOBWrSQvdPkT/A6tcVbx8=;
	h=To:Subject:From:Date:From;
	b=Cx5m9onA9Xi6ll5V/QTdgRwxK467sxnn1EDDicjbcJ9BfP0yi8BEXQWc6EELjNhbY
	 rOUayijC3Hy0ILAFbuvX8wAFpMf/rBLCoGQSpx8MDSiT/anK2fWfNGV4WVo8DzzfNO
	 yGZag5slE/vBQsA1vQGiy2YB9jMUkhISGhoDl6BI8lhFXs9ZLrWcnWK7GHvLdsCF3v
	 R62g/OcuMrRyTKzLJHtdumhCAX0BPh/dyl5HD3QDls/sZdsletCHTWTUgF02hs7PY6
	 JOJPZyXAg0ndbJxjyU6iBIFNwDfbMudroYhHv8rgOgM9/uBtt3J6hEkptWvTx/FgWX
	 VXLZ8/AJlosiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFA9CF8552
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792235362.3142.11119320075652488118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6259327c7ae781f905930f5f23d254e808eab07722b1517e529383b3843bc7b5
Date: Thu, 03 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727922353
