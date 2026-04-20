Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3293DBD7F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776695854; cv=none; b=YS+DmYCSQ1ls6i/D/LVG0vTSUrk62qdx7dCt7JKD6KQpP32d1n+OVgs2Fa62bNinG/FrJ9GazVzwtqosjEAduwRRw0RZt/194RArE/EQR4k02dUmOVFaS3UIFG0/lwaUhyXS7QqXlgM1xeGNDhrwPuvv0wUUQPWw62ing9ns5LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776695854; c=relaxed/simple;
	bh=ZNB2vveT2AFfKAaUSrzQsOD7P5lX1UnTDEk2cc/PNo8=;
	h=To:Subject:From:Message-Id:Date; b=p9wnrLBlyJzlsAmgx6RERABfnK6PlJ8OOYLSPL4fawc/zwxh3r7vWbvCDRAR5zxrfwIR4uzb00qKKQRtLx29114H6g9kn3eB4Pehvi+h6TBgBRAi1n/I/gUo6m4uFqnNHYBocy8+eLh7IUZ89Aur8y2QLwxF5uZTv/8P/+vdYvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5M3tXx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5M3tXx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF971C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776695853;
	bh=ZNB2vveT2AFfKAaUSrzQsOD7P5lX1UnTDEk2cc/PNo8=;
	h=To:Subject:From:Date:From;
	b=s5M3tXx+rHcUGiAKKk7df6lFwntpIvMAba45j2E/cSoPQCyd1mrd/zMT92al9LuDY
	 +3LMSpgHHc0FkDYBMzlF6zRYlr+h/GpfLPOpg82zAj//+nLieN4jmDVrNFXdPmFRCx
	 8mBBTMCQq4dmy98hksQ6ABBCaYUKqICxMlYbpMjFUrGsRmiPvUj0PlwxCreLMIqtYX
	 BhS0ztbopZ9N/D7PV28ZzFbjLYJLeCZ5H027hSvHui0OQGGk/3Ao86KnSFfehzdl5G
	 NJXERrYwgFykk5q6tMHEeDOK15N4hreu8vnybvdw8Hq4giAiHzAmhvu9QB30f3ClQy
	 J2no0ub17ivLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB53CF588E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669585369.15973.4492243814547597834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fc1783680b26fb9586a6cad29539417f8143ea866e6dafe819742e3ba2b03e
Date: Mon, 20 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776695853
