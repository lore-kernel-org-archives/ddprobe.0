Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B73E191
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782623914; cv=none; b=sEJjNgkR3ZJ7eB38d68Wc38Oy2LCr7dzSHZeaO3/4xODOq/cW9NmCS5lahoTsKlJXGjVA5bhTYkZ/dj/JNMGTnQ1Fq+xL3CAJSEEr0H3/PZakLmQ2sVdDhGgEoVmHtwZ/1xnJz+Wjpc8VxizPA2qQcSlLuiBdmRigY9s77PT0lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782623914; c=relaxed/simple;
	bh=/9cXsxVw5z4wS375pIhRdvEg88scAdkmepUFVYbytTs=;
	h=To:Subject:From:Message-Id:Date; b=Ncr2r7QBiZpRU3R3hQMf6DKEPcvtLxaRNmYyhaAuvU5pPQ2NL5Tx94wbnG3hEo22jPz2ZzSxgn14JCT5Htrs2n7Ty6hxGEtNfKv5aC3nnki4q6FC93ivxZWGXSnHshPxGta0Q47yukxO4sfQ5+ThmekB8O364rKci2zzWwPN6F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+SQz/qK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+SQz/qK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE265C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782623913;
	bh=/9cXsxVw5z4wS375pIhRdvEg88scAdkmepUFVYbytTs=;
	h=To:Subject:From:Date:From;
	b=i+SQz/qKc86lbjAv4QxaQCLJ9yV7COuFtHl3MXfIaq7QTXCPTM9bvTVBW1IipaVlP
	 gYEm84SIcx2onrf2OmFDxZHEz+neEpvVWCCgt3l2EJIYeYnKass5MiIS1YZpgogLwq
	 NYqllQ4YxIXPNEf/B1F5JwVtn6pjE8fB8OR+9YVneB5FadV10u2bytuLdD1lLI9gOP
	 xcuBNtcAZbQX6f/uguVvmuDezJY67wzApeq5D0vh4cP/bsehvNXaJEZiC3yGFCoYGS
	 0xVgOmTkFtiK5F8oGZsg2+xGgYkInEDde023hgo9bTUzjBt9Dtv7j5SjK6bdO4cM71
	 Sk+ADvYCyKUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5119C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262391370.4000.18402309769923298431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722be0837432c4076bbc84b9043be39d6112a83c2805c8fb24419afd3a90a59a
Date: Sun, 28 Jun 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782623913
