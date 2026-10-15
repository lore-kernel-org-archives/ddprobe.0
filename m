Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6529B53C3AD
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792084834; cv=none; b=PbFNU1YISACY8uLitYZyZyeUS2bEV2E6EKGkuZwUDykqUqz/7Y63SKY+XRaRPEswXb9CKhGy7aKA+Dy3OUdRuplmSV9gFHwYF362UXvqTYPoydllAvJyguWl4QBER5JjTlDmLmZ9Nx7+K5H7JE9PaQ9uzS2sSoNy2snx5TWHV2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792084834; c=relaxed/simple;
	bh=i+bWt31teAhvvXdZJCnW69dkohon0jR6MTX2viL42eY=;
	h=To:Subject:From:Message-Id:Date; b=NaoYnevgxYj5RxtGnjSZTWR9rtTnFwL7eNxUzBxu+eQe1H6mD+nHRvZZxUr9N+qXcvuhv0ZFK/u/mYb7lmI3enrmvOmOKYgMztCUMQs9C+OIMlRaI4JXarGBAzOJkIm9d1mutJYCaLehYl7OHw+3n/5PwCL/P6juDzsmeSag4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CikAy1Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CikAy1Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC81C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792084833;
	bh=i+bWt31teAhvvXdZJCnW69dkohon0jR6MTX2viL42eY=;
	h=To:Subject:From:Date:From;
	b=CikAy1HvQP8x3WypI5XTmqSZC/CViOVQbvvFtT4Atamfj+65HjBDLIVovxIqzULjL
	 KiKLCkoBqb+tD/0W9aCH1f7fpN6DTqt4rtORtoohT6G/bRvWiSME5+o/GKlh//3EwE
	 Py4051ItJsXvhrMzpaklmdwBVBDjSnRrGffiO0aFKZJ6B+0jlCphXjSp/efxnIqAoV
	 3y48LdSdsg9PO9LYED7mqkYjuhK9jQWSqrK9H9M2/A/tofW2qIUPftUhktOQPrh7yf
	 12f7/l5EBQ3A+7hRs0FlQg5wu39x22UN85AgU5QXp8Kgq0jsyt/BXmYmWEmkBwi48m
	 v2p+FjDXVJe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B3CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208483369.14329.11554774292857452747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d551e470ee86ca030c8b05d81b5915e3db31899a852d92a34c9b08e8c4de3da1
Date: Thu, 15 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792084833
