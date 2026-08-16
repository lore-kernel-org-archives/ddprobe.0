Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542362DB798
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786852234; cv=none; b=hCIjHhsE1XJNKT8GKZmoaQKc1LJ8XR5cajEtaON9M2umwxe2PsENF1/JUAfsFWoZTR5WkQ+zoaZREt3nr69eB/1Qy3U7mMMIxWtiLxc7wAol0GxnVHMKSqySIrBo4PH3yD+0z3v66TZEIaaTuXJg6/PMYtZpGQcjK3mltssnOYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786852234; c=relaxed/simple;
	bh=MSQtDs/vJJNl3dRGedt3mDG3l3BqYH/Kt4dJl92xiTA=;
	h=To:Subject:From:Message-Id:Date; b=egm8jpyGizbdP8gD20PZo+51iSL41LPIlEjB63pioqDhdV3coAtu7ipB2LdJ5e45Hw7wOBEwMYGZKShNMxzDv/0PNLFyAEdeDRUpzCMR1l0758eSSf8lOQHnvin6QdlnQK7saQaHYeI4V9DN0wL00lTWWXRxr/6zwj8SfYArpZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7DOA4r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7DOA4r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D780CC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786852233;
	bh=MSQtDs/vJJNl3dRGedt3mDG3l3BqYH/Kt4dJl92xiTA=;
	h=To:Subject:From:Date:From;
	b=n7DOA4r+b03CwvgDI9S+Q6S5kcPmtvd3Ah6AI1iM4MO0KKqalSX72VmKLsMT5NV9t
	 UJS+hyfc8Wjuzr/Ln1s7JLM702BJDRRQRqyjqpJ9ZvyS4DIwfovEyFqGkMEoUCnukf
	 b8EAaSs+H/JlphnsC6h8tiMlPlW0pzoJSzEsiKbyXXRqLykeBRIT7Xe1mXjNfytd5o
	 S54fM/d/kPtn/ybsm3wS6Bl5v9LZwuZefn7FDo9Axs+ludhbd2kKXwGDHPogSzkVTr
	 5P67Q4NHIlNTOoZr0VdxUssp1xVHE1uPXM2jjlMeGjHYLdR7DhY15eTmRdR74UQfDN
	 zQX+UcZhNzkiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD111C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685223368.22861.15150878878833774037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c635641f167795ce49c0ae51fdf6aeeec4dd9ca374b51cbb46262f369556f31d
Date: Sun, 16 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786852233
