Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0E6481B2
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709192297; cv=none; b=Xg4GThbTfihLhN7YOjg9EndBuCe4vUkKwvsBLkgRBlJDgvLqgeq6SejNGFZtmGOgTYFODrpwdFH7RMpOcFodVrRmDvopR2WeGCE75jerEi1kGFF0B1W81oGoGHtdpq1iu1W63UisEJKp4ZudxrzjdrhMfkVoj8GQwtfER99uEvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709192297; c=relaxed/simple;
	bh=qKZJP/ugVmCt+N5q26LNX3k/TTmPYbLayNpvweO+7wk=;
	h=To:Subject:From:Message-Id:Date; b=Re6dqzvb013JnTw0coqMhYmGVJruPXHuRuGLEV8CITroEvCDZKt7YRtvTf5qjgKhxU1wKLEWUYUuuRq+Vhi+IHPwxNvpFHhlmxoWNbG83KHio8llQBnI+HC1UsReDJiTglrfvvf0Whq1tU4gPP6l1nk18sk4UJfBoLHW7QfrGFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5gktV3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5gktV3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83387C43394
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709192296;
	bh=qKZJP/ugVmCt+N5q26LNX3k/TTmPYbLayNpvweO+7wk=;
	h=To:Subject:From:Date:From;
	b=O5gktV3Z/unky+xQrKJhN86ioLxVaRhxRg4YXBEkakjhkcOpSke6V8XxIUNTP2Q/7
	 07wbQCNFtr2ihh3yWDmIRIeeVB2Wej6zHJdCQvCbjhcEDZ22YMuRUnSujlBHfwNk1i
	 RDHRP+vknw45dlC8tv5YH7Gk8TebPAeXzS/7pDdL0KkUweTZuoF9VC0e66TtLnAnWp
	 nuEfGrPnHP+oo3KTUzI6/Vdq4WXjmej9sFQ9m6ot2PPXRgoul0lqoLStO/ARJHZBjk
	 oOdnNjpKNawmWVMkSv7RawValLF626ljVBagAl6YzKNVYbHgtmAe33PO2S8bacF/Po
	 qbAdNpz1VXR4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EBEC54E41
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170919229641.17721.8775469977595129038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b475672baee028a9e381668bee100408566448280d91ad3655d8ae11b5cae0c
Date: Thu, 29 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709192296
