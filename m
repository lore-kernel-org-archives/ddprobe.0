Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3827D77109
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720590383; cv=none; b=TZTfo4KsTwQrZhuzqPsnFML9ay3uYzkS/GQAvm33VqQ1+CnXUBKmA7fAIDtDoZcBEAB9fOW8Iwx/g1k9S6+TwBqpCzN0ptwUrvUyWwN5XjXxx5J9bSOQCDAr2DNeHgLWnMVFVi4/ir5ronkGGf6ovWtWHwdWqupqrth/aWAHrjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720590383; c=relaxed/simple;
	bh=zJCYgc2BBQJ4oSV3R/hgOyOcZG6nwUvrQll4uKpdF+g=;
	h=To:Subject:From:Message-Id:Date; b=MxSdpXAxouh+fAiPn3CQxx7m4Q9rwiW3/2SJYKO1KqhmpswYeCHwwQxoaELh+dJWGuSCushXBpMHg9uULwWae/lYN4WGzszi5UHD33TFlecr5XjJX9j72Zd1X3OtWfzSOhCVcPqUqad+LRtobE5352WXNSMyDeHZsu4PtY3R++g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUZocncL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUZocncL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD91FC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720590382;
	bh=zJCYgc2BBQJ4oSV3R/hgOyOcZG6nwUvrQll4uKpdF+g=;
	h=To:Subject:From:Date:From;
	b=pUZocncL/QVh1CPldRFHs3EjYdWSrs7dwYNvo1IwwU9lDchdmZ50i6ojVCzUlIo/g
	 CUyU12l/foA1RmVK/K0zxRVzzItUwLKzljC9dvID4MxVmNvGJZMEHGc1i0mipr4uUB
	 7iIKltpZz7J0JdpqUE8xIp5Z7EFXbeDNZdqogPoJemfWMPIdZ2BeeCrlyNRlbaKWMf
	 EjWjvgx8sQmM9dwgEfn3MkR/dbzm7+wJBo9+mQj4XlVsnTRi1tH2+/4NQEo5et1OjB
	 Mxu8lEqr6VMdJMvDsL27YRG0tH2QzJwtImp544IoaeEUV1V4nXEp9O75PwHC3E0ES4
	 2LI9mccNrz8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA09C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059038276.17018.577145269006836219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebae0350209e6791e6da7fe9d110c3a0a0709c17800dc89d05afee9bde4884d
Date: Wed, 10 Jul 2024 05:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720590382
