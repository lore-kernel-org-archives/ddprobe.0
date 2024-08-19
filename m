Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80ED148315
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724064954; cv=none; b=NCYcaJgj0JgRyp17Kqbags+HKRZt26vECrSudGge/wEZHLZjog+3vS/upMPKTfJQgZcr96ninbrsmVRsCDct9cojvSga7TrUaS+Lbs+LPDj8CQN1WWzf3Km1sDq1j28/NzSFhUEqeXfr3aHj7+KigzHM6OoAM/DMAO1Yqnyu4A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724064954; c=relaxed/simple;
	bh=kTQmd4ArcZLigwOTKlvK1oTlPiRsos1MyaJ3kBS3c/E=;
	h=To:Subject:From:Message-Id:Date; b=iijBut7h0fUv+jUcDRsAho/5m6dpfFHQsg5ciSCo+PMjbBff1nUwbuOFBzkCftiNluHyoPnvsPCuG9PzaFZcDzb9sMp0/PW8hDzZn5avsX6q5BbcBcPxuB8Sw6wGN+cSxIDUm+vnWPQA6BCmY+draYHddc6+TWnjbm/cxSNHH6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvFXEJUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvFXEJUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27F0C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724064953;
	bh=kTQmd4ArcZLigwOTKlvK1oTlPiRsos1MyaJ3kBS3c/E=;
	h=To:Subject:From:Date:From;
	b=kvFXEJUR6CzZnwTm7uB53hn/5aWbTWWy6BSYtJhCuc2iLIynXDnbDk6O86pVrHyRT
	 L2zVygbjAx6BCmOgF7fO+3htxBsLILn1TdtT+qV95KxohXPbo16gr6Lo8Hhb5pEeQ6
	 Kf5IU0ZMRZvNQqKJfYUk1C0m4e0qr+wOsBem3Z0nXt4sYMLti409SXOcsxKAht7q3v
	 Rl61Vf0WeLcSAGptS3AuS9EWyZtQ1dvRTdbwnR1/c8Hc7vv/veJxY32JIG3fkDYQpk
	 1J7wnX3spD/QpszNemaB7yXsBAj5d9nAM6zlB96M+TjkfSP1hF5Iw1DSH/noA9uCdw
	 XB61XGoSlhsRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B242DC5320E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406495370.19792.9467050891693126218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295209d4bcf182376fe6344f53029d45cb3d2522aa125f6177f619074cd7799a
Date: Mon, 19 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724064953
