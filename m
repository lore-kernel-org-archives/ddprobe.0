Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5D2420484
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784131714; cv=none; b=Km0VINum7oLUYJ36aFPGC+iK/JrMp38T4hhkQW364j2WziuiYjVyv1+EMeLpFxpxNre+hLOS5p/o4OF9h8fhErZD+e4Wsri8+ZGo9Dz0ei+Wl7n2jq/6pD9mB1u1zj9mFVdUhC5zvLV7T8/bCoTGqHwEQPB9/+7dX3oljsjfPjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784131714; c=relaxed/simple;
	bh=INHUsWsHu4lYBnqaauvw+MYZ6eKL4Xc9eIHEa4dduos=;
	h=To:Subject:From:Message-Id:Date; b=h5CW2pwDIN0N0AgXv+oWdBOv9KYq4DMvIX1G0SZLOMLBTBkhkzNFIhAJVICWHaIXjOukX12X2QLCJLxGVQRoJVdur4oGSr7RhyW7uTLbhastDm9vg8pFUIY0INNljcnwBoQHTwQ1GcZemJikri/7F4oZ5AzumbKoA6fN+Oso0BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOaItzr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOaItzr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE855C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784131713;
	bh=INHUsWsHu4lYBnqaauvw+MYZ6eKL4Xc9eIHEa4dduos=;
	h=To:Subject:From:Date:From;
	b=bOaItzr4pnFtQZOqRvABNU6u0Y9xozL+DM7CwtUytZGFpqATlTNrfujxt6QAfJCWT
	 bRkVJLLWI1hQL9RqJ1d7pnid+xDW/i3rlgTThbdUcLFnUZDjLo3/NVsHcwfcsW4R7i
	 DofhkUUuA8Kd4/rwyn+meIbX4eSWReOkKBKw5mTMwsWRDhlGOavY9c5llLYGdAACAW
	 0Lh/r6Q8VtQEDt7SpxblSL3LENhPT30w9u+Hus9bRzfz88Fg7+vgW6JYA2xXSVnCaN
	 cPpAXvod5dRzhedmXGQsrQMWi2RKOn1fzi+Ow0fPILeZ94f1K2Z0P9U6GxjByGzVjD
	 H3XlFogbquluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB324C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413171369.25698.9108505571371040805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8162ebbc198e20370af44596e9fb6cf972ca40416df9c2b9e506862c5d711d
Date: Wed, 15 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784131713
