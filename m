Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2132824DD15
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765657974; cv=none; b=j1l7iMjk98fpAUc6LDAta57jpQOeTyWBPK5s3Nq2hKvb/lC4+JsoOSVYTdq840nuiG9vo/1j/8ZD4qkKG02dGGeXV41wR9/0OzTaPU5YN52fjcCKvIZ3X2TYdzpkpWqaIi5177AbYDB+mC7SYkrQBAojYhtJyn6ll5sbAD7DVMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765657974; c=relaxed/simple;
	bh=gniCJwwA8gUBZFU9UNeR4Ie3fnGkI9BzDqBA/4FDou4=;
	h=To:Subject:From:Message-Id:Date; b=smzCZ91Kh7r+04GWDkP0Z6dWkF8W9focGhx9P/6Q+Mq779w+Em5uppr1J2SepzUSleVYeo3ktG9ZCVlwJ723GsM/vMi90yOgckhkbE5TFNR8tWkyoGUfGkAMZ1euQHdYe8DSC3mACHLnpNDGbg7kCHE6mjDaHweJs07o0mYl6fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gh2Cegp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gh2Cegp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765657973;
	bh=gniCJwwA8gUBZFU9UNeR4Ie3fnGkI9BzDqBA/4FDou4=;
	h=To:Subject:From:Date:From;
	b=gh2Cegp1TKH1o1aAQPESn8BCTLNso+jq7FZ9kR1cgMSiDgv6M+svhvto/jiFNIvTo
	 nWhttxg2x+u/terKiQuEAvCkYodz6eE9Fw5RR4yVI7QhGZCkVMSIaAU6dJHHji1bbj
	 t57tyLMzbAebPqQR/2+GH9xn3f12w8cxLcYHQQ1xsd55wZ6D7CHJxqrPbmjGyS8Xus
	 08V0z8jlPKht0uAXzkw45p+lJXAiOBecVgHJiW3IR9xxlYMyqL0lMhWILnKMToSr7k
	 keCRJmc3SjSrtS8oh9+lBSNwu0zMyCaNZCqf7vBlYZdG5QYAc/Wr6IRAp24Hgz0zsP
	 +6L+B6uAP1CmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF8D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565797358.5478.17838970956871609228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0692b44e786c7e773ac30aa1bd92f5a6f1c9853a7d56ae9c56aab1178f45eedf
Date: Sat, 13 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765657973
