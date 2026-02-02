Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E0F3EBF14
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769991834; cv=none; b=gUvsw/hi45e7SBuJY0Wi8oaVH2bg2+pJ3FVQplzkQrPr8xWrJq1svCszAAZLMKiydSam29wQYp+Ev+WEBUKY0Ud4QwRTKHA6BDZIGnzB8sP5HvKnRnim0H+Vu+2ZL7nE+Cy3x/koMx/bTIbaoC83aogUjc0CpB5rc5svtSeDfvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769991834; c=relaxed/simple;
	bh=HfjUOA7BxOWEsmyMAC+IbzKE0pcpppAuwzeb9SgKyV0=;
	h=To:Subject:From:Message-Id:Date; b=ikFbVILyTJHjZdvn/tNyYaG5IDj8XXBKZV9d1iSTrAdsLu0HWoWN6AzIpXq4O40uBax6xCLIRs80vO50xTKP63Q6Xx8djrl1qr3VCR4FFq4fditsQvezhyizEp/yGJJKtzm5ZU5vyS45DPJGrYouvISSyjQg5Qy3NKG+AGJ+n90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAqN/ZS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAqN/ZS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC952C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769991833;
	bh=HfjUOA7BxOWEsmyMAC+IbzKE0pcpppAuwzeb9SgKyV0=;
	h=To:Subject:From:Date:From;
	b=cAqN/ZS29iMcyScR9pL7ens8viw7l17DcyCcw6WbZ8SggkMfDl09rtpJhX3ZI354e
	 YV36sJb8vZIMZMHaym9LTS7mVH8HdFR+epXSOi0Ua3IhuNdr/2Oak7JAG7b8d1muTf
	 Ufew73Q0gGrNC7IGcMUQRyRcSWPmCqbXvGHMws+FHjwZZwR2SHiEg7xfZdKSwgAcsy
	 I0sA6UZ6V1O/Liw896yhGc/udZp0qGi019i3zyKt05KumjMVcRqIN9TXlxAmdlNmCr
	 wFZ0BmAOFpBGNneUp52mjX77VLAPdHoErpb9QxOMOq/nGHInKGehvblqWSve0K9UD6
	 mcjhm774OwEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6CDD172AA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999183360.510.1095756968291602482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84e72789ce0fdcd1f9eaec597e68cfdf6f27bf88a23b946aa784486a683dde7
Date: Mon, 02 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769991833
