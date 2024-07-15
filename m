Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A233C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721073923; cv=none; b=pvX//pdA7Pol4+HWRn4s+KrgOkMyYkQbi9sdJ0BCfyB21FUR1xeueGDv+5xLKTp7Z1IZC2ojI4QB7TIPO7V6x0Yx7wRMP2gOntO8G0RLXqRpSYD+MSylbUpE3yxaUOD8pb0UdZp7QjbX4oouoDp+bD3QXPBJF7uhUmr5F6OjUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721073923; c=relaxed/simple;
	bh=Rbk8Y2sMIiGTGehbNwNr0U6hJJelUgGojAHI7sdHM/g=;
	h=To:Subject:From:Message-Id:Date; b=ZowbLHZX7CeBtr+WhJxkfX76XjybQWhrH2f8yq08qe7b+Uzb8U4MgERi0YuKVoLQkaKtlMhwSz5mS3E3ms9XS2hjfJ/oYOhqHYVYs9exlmesRb2TzAbRSrYiEaOrrnpTJhAF7n9j3OwWzwL0NLB8g4AB0XPZFZF+8SH120XtNWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM6TvdVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM6TvdVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33BCC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721073922;
	bh=Rbk8Y2sMIiGTGehbNwNr0U6hJJelUgGojAHI7sdHM/g=;
	h=To:Subject:From:Date:From;
	b=PM6TvdVUItVlm2LEUKSEYdn0viq2s6ziV/5QxuUAjYs/QLxeP+td6G5sjS/UVFLyy
	 4oltgrHwGYc/DYuEZR2o9bNUfegtCZwFkAPv3eODZqcmuZPmrudbV2cCbtElwYPxS3
	 K/U6b8FHwq0d3u3Jb6StVhlCjP9U68ENijKJwi3+H21vV8EBjPJQJvXc/YIbF9r8Jz
	 cUuPFwwyccVvF6th5G3Xo4J5Y4FUYP1/zvCkDK64ov5lY6xvpHx7BSm30FylVB+1+c
	 nkZfg2DtbvL/QGc1yQph0eh0mcHX9gxTfgkS6Sw31m1VyQo9BAM+QvGNAXdzTcLaxU
	 FyoE2zy6VEtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB2EC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107392277.8665.10474045915217917677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da05da03e492cb52bf68294ad16c638fb69f1a49eef40a16012f684e2d5dd33
Date: Mon, 15 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721073922
