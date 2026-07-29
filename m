Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF4F31578E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785288634; cv=none; b=AL2mlya6me0ElQ8Whhc5cpDTtuzNUhKhjfMSO6gFGGboymSviz77I1cA+bG56KLo7dLvvYuD7QeoDIbN3iPDR5+znaoR/atCndwR//nWZf4Np9uUWmK2bTw19hd0c2UPSf7NSrJGDLRyt1E0nPJZCW+MNLRYwC1N85+mTUstvv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785288634; c=relaxed/simple;
	bh=4IYomirChcf0YspVDXCVqZ+HQrqnyxUjc0nmTDqQg1U=;
	h=To:Subject:From:Message-Id:Date; b=l6Z0TTBYgxZKsSDjSj/hhObjk6I0HEqr2NGjpezsaRLxRi5FONRw5AdTg6XUjPOeQWGiAXq6aRpNSVHXeM+3xehbk1IjxAogB0y0yj5pyqoedA5XxMJFo0bm4tITCalc3O9g9WxNS3KbLZRhFkfhNafc532zcqxbzJUpOzbY+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvoEUHJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvoEUHJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CECC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785288633;
	bh=4IYomirChcf0YspVDXCVqZ+HQrqnyxUjc0nmTDqQg1U=;
	h=To:Subject:From:Date:From;
	b=OvoEUHJAYQisYYiK8sSoovm5cVyWZavaAnQ+kldDYSsXntAm4+zz3XEItqIexe3jf
	 9eePDxncTVHtUG/ohGq4cRvyEMT1sFecMbi0JUCUq47ssI+228SanIhgQXXhJtIY1y
	 UfOqQaT9NQLJE/qLXFzwBGmobxEv2bdQUdVNOmjwkYLBgRavE6HxZuB6vgymb6A+L8
	 dfJrLkqfW2fvl8dTJV1SDeIJZHYHiFM+K5M5/MGI2E3vDWt7GxhQUVOOzejCyGUS2x
	 xSg6Gt/OShxEuJUCAxxXTFzRR6IGA59zzL+NJoNyvcCP/gkvq3AGBNao+D6rMo101j
	 dZU2K5AQDrLMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B789AC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528863373.4400.7389357127575545782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c691c96c63b8543282688f78924a5e7d64cc73edca0600dc8e3acca436c42157
Date: Wed, 29 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785288633
