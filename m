Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEFC2E2830
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755696594; cv=none; b=dRZImu8a5OS9IERjQ22ZZKVihu3Ef8UFPEvnvD+CsUlap5zAU95nPqx+YztUR8a1Fek0VSY9dC0QxrZF6UI1fQVUH49WI7ZziVn63DIId9riHqOgQeMyGLXY/VFcX8RYVbnxrjl1XjV1+SOui5+BMsWoTlvnQ2bAznx6PVh0/Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755696594; c=relaxed/simple;
	bh=xI5xtiOLs4T/G+fDjiX653asNKvEt9exGkKIiWP+9Fs=;
	h=To:Subject:From:Message-Id:Date; b=kxIh4n1+owAxBebCd86VNgMuUThyZnXY86WYUeqz4AhAYSuQxsJffew3sz5CyvLWcqUJdYfgGTGrWx4jxWJKYJsaBLaTsMs7jKqjaJ7ZZtFGRw7gT+qSBcN3U2KN9G8SbDKReV6Bwv1fY0r3XmQHLFa5JpfZlcgRw4YM/23oBUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2rpDVjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2rpDVjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755696593;
	bh=xI5xtiOLs4T/G+fDjiX653asNKvEt9exGkKIiWP+9Fs=;
	h=To:Subject:From:Date:From;
	b=b2rpDVjHOh1DPmBBy4hId7tbOBEPleqa/qTklOlhX2JrxZgEb+PeJ9pehsFv1Trhz
	 NsX+eUmBjnkh99Qua2jhdJByfW5G5HFtepRPCuqlMYRTIFIirCY8Xn5UK0brlWj0r1
	 fVZtIpm/OGngRT/QP8TLLhe9JcWPWuS+My6LMOAYor5JFW58q1Rv570aY//RszTDha
	 KbmCd0RvaS3owxtw9WCR2n70WATgLgLQlhhkVjwiBzhouD+isCejFlus/9DGpWNhMP
	 u7h5w1exGs2lUS0GERPIHN2cm6iSChUAS6OHSHBwyrbR0LMd3x5w+N5yNSGUWt1YGr
	 9fVKzUCBtXWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF8CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569659358.18961.8443303977792338329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c689772ba2b7581135f7c45d0b135243f20e955662da0b8d95f87c6c828efed0
Date: Wed, 20 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755696593
