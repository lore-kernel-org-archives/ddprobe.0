Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A0239E6A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747062594; cv=none; b=jDq7H7zG3OeHFVt/kwjyMHj2+6bFsipd0BCBiBg0AULoT8clY2y+BjLrrnUSCqVQN5Hpd1g8b6ugvxMy/Qb6QDHYKOpB61GcFUWdycjBPZdRx/2lgmrrXOrbdm2MP/Nze9RqEjBufJvayq9UsGiNLaOEsAzwens/GEjF8gHrR84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747062594; c=relaxed/simple;
	bh=73Glk/+/MuIYHZdyvRFns6y/rynvy6lTt6pn4+Xqn6s=;
	h=To:Subject:From:Message-Id:Date; b=AApCEQ5oRfG0S8Sh2Gpyy60oQkajRTk0EUUk96MSKHZrvYVhq7iH64xlzEgeVOM9/sxq+YLBLEIeuZnfaVzRGpSfqkLA8k73s529iI8ziqNR9+ChMB/nNHdymCS9q33bKYmYpkFg/u6evyJCNOQmZU7pklqu34chX5nWB3cNoHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edw53tYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edw53tYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD03C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747062593;
	bh=73Glk/+/MuIYHZdyvRFns6y/rynvy6lTt6pn4+Xqn6s=;
	h=To:Subject:From:Date:From;
	b=edw53tYn7KOPKg3NUiqDaprfbUjUU+MPNfaMq0SqMYiDBvqcS20cpjouCR7ABOZPz
	 drL0C9L7zuRHVy0ju5yYrdkby4R/S8n8oXxoOnK6JROFva+vijo6hf+cYWop2oq/A4
	 m9mEez+W2OYRxYGn6yXhSGVO1q2kwj4dnsQHHv+pLNNYHedMLeOyTLa7QIDjDTkRlP
	 PWOWudT/OPUHpHZPVxAPgCwDf3Gn2NMG7WVGStSuSB18YX55KXKdQpIoKkkyMxyYHU
	 4FSczfqmWFQd4edmLGPs6dsxf/RD1Zk/NzCdeWUPbBuEHvi/y+fUTkk0k8AnIMCW9J
	 r2vWoYCpXe4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28AC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706259357.9484.9150948994226006789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195cab99b0d535b2f91e7316f803d672884ede60f8eaf365805f1705b385bf27
Date: Mon, 12 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747062593
