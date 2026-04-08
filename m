Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C23B531D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775648134; cv=none; b=lB/jP112AZ6HqnrFVPzlbVDzUawGxdHJ6Bus0ljGElMNMhUn8TX+vbm11KMsCBstXqFlq3OGVnQZSbv0mO203hvycvgbLaliQOsajcEWVzWZLoa+BM7W3l/foWRxIqkLdByvp1+yzQoUp0JRMoWj/t7pIDfQyLAdrIZbMn4y9nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775648134; c=relaxed/simple;
	bh=ddnZQVEyh92Hi5kJgnWpbJ3zPSyquHpfV0CJHQEKpSg=;
	h=To:Subject:From:Message-Id:Date; b=s5unJFarlRYrDoFQvsNOCjDsis0jsoOKgSR7XPoUSkqT3mce7dr344gfgusukXNmVy/sFpsYdhWIqIE0zdyuNvXyNIgvxFBLZGsZNt+K+W/IcvIyCmvUIyVFzg1PzNaJ8aoVjSqgjw+c6EWT95Dstvv3lV7WWhuaJWJ3jmvYKoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH/EU1Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH/EU1Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC159C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775648133;
	bh=ddnZQVEyh92Hi5kJgnWpbJ3zPSyquHpfV0CJHQEKpSg=;
	h=To:Subject:From:Date:From;
	b=sH/EU1EtIIAhl1kinL+2aF7/34CXJFnVbDGDUuh4Gg9wq+3TZBi+lGJtEdRc8GTtK
	 CnQHMWO1lDPD5BnCqmJ4xKgcNF1aJLUvN8L4apWCgsZOqD1yqdPyL5YdT+oPF4FaRE
	 fsnBu6NxaLDqSOW5HLIhcKrsiYwTVe3j4RkVfSgZcK1U8E+gW2CKc3GttGmBdDMjGw
	 feZnFSqLHglpcBYHlG60gM3H84HI6m/RGvPXegyRRoUTEHv2B/2y+VXnfobpX7w4yQ
	 wb0d3NOgbHka36NH9ZobbyljojtlvATkHYHV23m0iU2VEWbsjvrER5yAuawmyYewKN
	 jWPcSTU8TxLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977F1073C9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564813368.17800.16748719541538352603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9580306efdc55acf40eefd8da005229d1495805e24faef7bd1138a445f65f8
Date: Wed, 08 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775648133
