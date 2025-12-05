Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485F2341670
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764958974; cv=none; b=ouGvEQ2tJzwVfLhGIvOsrPQVmU6dUWEo0OqxW9fJIEdNBqBaW59h77r+Ur3KGyHE5L91fDkDFdEYsCQIw9PTFH3R1GSQI1R4x8n2DGY1FgiiC0DJ1o7wrSDN9uJ74u3hzlZLExWeuFN88frGOfKnAoDhm0tAWNBPOLLNmjdLbFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764958974; c=relaxed/simple;
	bh=IV0AYclOdIHG0l7PKy3q5BPeFz90neY9+Mw9UvmxuhI=;
	h=To:Subject:From:Message-Id:Date; b=G+vnkWiImYlFYHIA5SPxNH/0vYtSzPshhQbWFJVXNDZ9qi1nJ/shnI7/MdiILYBuceMcxTAMOK5Qn8TPDKHJ11TM1VEvQZpSB7e2M/TsScVG021ykuMmVg/H/4LolXBAaMgpp4HfYWQtLI9d3p1JSKt1XGTt57F7Gl7xjUxKfdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtKhpQMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtKhpQMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5897C116D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764958973;
	bh=IV0AYclOdIHG0l7PKy3q5BPeFz90neY9+Mw9UvmxuhI=;
	h=To:Subject:From:Date:From;
	b=EtKhpQMiKsJqKwJ+zPl2aSLBC9Zm9lAGfI59ZgRs5JHXawE2Ml8UPoa+FgPZBiBso
	 GjApTb3gaUvKMTs1UPui8smvL4A3GCCXYGaepNscbtXug43h/qOeSyU2o1FCc9HqMR
	 mWdQXT8p1/hYnKXxRpC3GvzNQvjq877x2pOufly7jijc9eguB8TTe4nY8/6BTJZDj8
	 g8z3kjb0XwyKX/3oMaNEAVsiJoSM84ZpZwILzuxwBcYCIKu5kysnhALGzQMzGeM3wd
	 7QRBF4HH0078MmE0hZvU1ZqsZZp07mvnTCJpCINoF05Fq/xZVH89vn14xLD/i45jPT
	 VB2H8k4q+Y8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3796D339B9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495897366.32319.6318668628904946451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1987989bb0d8724b22d59e087b5936a2b4355ece5c41a729410ade8c8346916
Date: Fri, 05 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764958973
