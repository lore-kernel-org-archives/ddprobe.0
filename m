Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207B51096F
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756648194; cv=none; b=iDOCgDTaqml5eltLeOr61Bu796bFI7I7mmTTTHgIssQu+bCVKU+QpMBDFYCa95YSaAgtjE+kmefbtm5wBJ4gVo2vcvp2loXFehKcyYR3SM8E9XOtX4WIzGjV5nFO2BTQwv2H7qhexuKdui/o9TFPpAffaE+fiXl0ok5ljg0KNVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756648194; c=relaxed/simple;
	bh=BFfzMcXt1Bs2136DcBcXzC2aa/IhTc+07tG00puZaM0=;
	h=To:Subject:From:Message-Id:Date; b=EPrrMNu4uAc8VMd7/Jvb79Sa0+5A9Q8A1HfqEr96MKr2IO+erKMkN76USBqVCzSxXc+F6zvPbi4gwuCKd7ifGFpUUq3H45GDkiWaZcpla+ZGXihqHDAR/efQYGnVv0sMtqKCzUvfQs9vd56eBIhKCXCdl6ruQpNulmdyPifbzVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0c2JbNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0c2JbNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0595C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756648193;
	bh=BFfzMcXt1Bs2136DcBcXzC2aa/IhTc+07tG00puZaM0=;
	h=To:Subject:From:Date:From;
	b=M0c2JbNs3pu+es2ONDA9ETjgpPS45laevmqw7zhiR/NxHzfJMy0KDoLrW2oq61sIm
	 LiKKP0s7D7DDVn24jAC7IvO+36TzWaZq4YCbeBzWFFmrR01nJP6d7OvFlFbfVKdJyq
	 g0wSn1+pdwaTkxnNX0frc3nFILq12cwXCQ41NoOLiASloRqzgEI3Mb4I0eLni6gdqa
	 ZoSm4SOaOISXXKWcU4LujKP+lZZuePdyF4qsSdOuvZkATyHZqx6m6gkc1GZ0JXr5rz
	 kjYHbbnH7LOo/Qnga/GM3Zw48wZQmhh+9L7hyeVAT76MaOkfUIMF8l5FT9TMwJt+io
	 Myt/CRie6koVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC54CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664819357.31274.7022527923203241087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1e2fadb8f985629f39bb02b320796b502fa682be51648b9ab933a013c81588
Date: Sun, 31 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756648193
