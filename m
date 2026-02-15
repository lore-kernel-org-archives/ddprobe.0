Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189C212B143
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771137894; cv=none; b=LTvpI4gTupmeJPx6oUIYfahjZAjw+qnnPiZTcOfeXVmugWh5QT6V0160HbmLD5Z+Ff6qcbewDQBgyY4W/D57HW6pFABeb71WZh3r/HIFmAe8IL91yPiowjCvOZgqwYJw4ed12TKbDMRQEfA5wEb2XazJlDyhxtefv/g8K96qeD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771137894; c=relaxed/simple;
	bh=l/w/U6zpyCb/InccryHE25aTPZWeQd073FpZJRsRxuY=;
	h=To:Subject:From:Message-Id:Date; b=UBsmUB9aDnxpkc5IzS4/mqtNJUslER3YyDxpfGavDqEsSk+kwioA7OSVFJuXAW8P0PjA1qW2hSPxdmx7r30qcGG5LPXfBXQfSWHqAURWgwFuT09UXiafYqah/RycFkPv6Cxil9Hz4nyMlq+W6oUVvNBYxAAA0sLY+pLKKah119M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSY+HqZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSY+HqZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A46C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771137893;
	bh=l/w/U6zpyCb/InccryHE25aTPZWeQd073FpZJRsRxuY=;
	h=To:Subject:From:Date:From;
	b=uSY+HqZRONoQq6Jicb50JzJ8N+NaoBhXRMTcrz38qtsxqT15ooaM4DTGlhuA4f6vq
	 3Qr03fiGLGGD12P5wgBU0qNPLUgn6arFGFV2rZph59Ed7rnra6nmwphDuM+n2ks6rU
	 1ErHb6InoO6JOmn6ECslARNJXL4BI2fEqjU1nyQHrfY0K6Wx2mJoVOvETTVVyrXC8d
	 cRBVDVayD92V0BFVKl2Cq1hElZGrXnYZctbOpiV8ECEDbEoBgg0Ka6NHunxDJ/GsJF
	 s1INLCUeY6mzn8T1Lrhxhsq8zp6GGJXBU5x65ogvDQEAWtAWH7t03te4PY/KEPNuhx
	 i+Zt5K4m76Ndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1C4EF586B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113789363.6601.17018933663769463293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec08ced1414cf5cf27ce505ef51557cb978dceee134a376f3bd614a24bdbee0f
Date: Sun, 15 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771137893
