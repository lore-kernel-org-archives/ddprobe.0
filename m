Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8373C061F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779082834; cv=none; b=ruuC7soUjTiaiYY08PjTZGaao9Gc518SQEbdFXVMb7cF0dwcKcwdxxlmB9dqL9Y6j7Gvtxa8iHMIt3tRKAOxs2qzH0vwNZqk1TL99xYmtL7G64+vhOBGAxaHWT9htMQMyqvr5Wm9YTroMaoFRXTswQSSbe3tT7BAZcElQTBjTvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779082834; c=relaxed/simple;
	bh=U7aBuZrngaaIVeQD1QTKWWlzI3H4I2tEUxlPYyKDyEU=;
	h=To:Subject:From:Message-Id:Date; b=c3bRKrU0LCLzM4z4MN1r1hcS+0mfVLJS0SpQuRu/0Kf0H5t6yjwaglNfsfYj1uKb5FbLmIPfZOAAW73DaurONpCz0OpCo/pSVNrzSkw4V7qjjuoK9Jtvnj8+aCcKKt7fDsttW1dU5fTmfv1kHc1OSrfjHfKUDiV96yrI55jsB4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9eBY0Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9eBY0Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF46C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779082833;
	bh=U7aBuZrngaaIVeQD1QTKWWlzI3H4I2tEUxlPYyKDyEU=;
	h=To:Subject:From:Date:From;
	b=f9eBY0OyHX/z6092hJLlA3dtPP4cAkFzOxdZHMv9NGbTp7wLV3B+BO8Mb6kXgEplu
	 vVT7HVYwzSwYLZn8eCE6zmTXoiCSeBc1xR+ck2LkhDkmxoDHKPFpyu7HHkpIBmNHmI
	 HD42yxbxjlr3/UNJDBsXfGnc6Vssn86ksNKin8Ek+9BKUfBk7MNIHElOVONqfFDpk/
	 +pXgaecsVBgyIKC9gE5OuZOKkTJ87rONIwOQmxHB+J4kDoMl+WWKhTbE1kMDdrB2oF
	 Th3DQRiJXv3Ta+SPuK1JON0gKafRXtXvX68Uc2gzsrn9XvYUFQNHX9a1Jc86Zy1/Xf
	 hv9yJo7UT8vsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B4CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908283369.22391.3550834631451335551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274fd376fa2dc77b33051e54ff487a2aaf19e08a848ab023a1fbd34bef6e1bc8
Date: Mon, 18 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779082833
