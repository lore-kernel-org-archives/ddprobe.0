Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2397C20468E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776287254; cv=none; b=dKvLJ5nY3ADXMwjS9NTkXK54FXuH7bm38jPaiXXr2M8OduI+nD98q0yEt2YLI/nRaQMUMDUtD3PRQ9RyY3J05HGqj1Uh6ZBjenUIvHZRFsWjMKeOEX5gyUYgaNvkGCTHUSiNRt5Lq6VeOv2ACP3BvXeysGJUTOPGtJNXTCOieZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776287254; c=relaxed/simple;
	bh=HXPuQcqS2tO+hQQmlxo0gyORgcFHXLOGkV3xbkjrPqo=;
	h=To:Subject:From:Message-Id:Date; b=E+sxgUsu7Rf4LCUHG5qPrry7dBcZXX6O5Po4WhsvkU1EdLj5Ty3eEMHeZ9ZOuCREmrN2SgzclB7DQmtd84DfcdMspZ50kbCMOiiRmB0R51tSgOM/qFhytTwOk1uwrdcuLKv99XJjqJvhK8e5B5RS/Juz/E8baM8igobiC3tRQuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/NTCLN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/NTCLN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A06C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776287253;
	bh=HXPuQcqS2tO+hQQmlxo0gyORgcFHXLOGkV3xbkjrPqo=;
	h=To:Subject:From:Date:From;
	b=X/NTCLN1brceQd0nBKvVSxZzwetzGegWq933k4IakYMbwHZIL7dFJIdM4J5eV0Nph
	 5eq3MlyLawx/g3NNPvL9qFCGTFLRlfpUhm+P6QlppM2wR76l4eHK1hSMKLU9fxSlj6
	 HUmSYNZVHAicPwS+fN2yX0DSyvHKfN8E+PNlhgrCYrcJ6kP/poWmydcQf3czNv321g
	 eQBpNFy/4STMLQXiO6syvenPAsbn2aiFJxR0ya/zn4NybhzXdwgtKeSdNpZw2e0/Ur
	 VTyV49qxIasQcnM1cVEe1aaPOF+xaKP/+mzFUkt21ti6KdWOfJzEhdR1VKeDiRDp7x
	 G109kpgGdZ+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0296F433C1
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628725371.17482.15262373443599256114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405938190cfd4e8e43a55674c9c27954d5d2380f59dfb974a63eaf9d6d0821dd
Date: Wed, 15 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776287253
