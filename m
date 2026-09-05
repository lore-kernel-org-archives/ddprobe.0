Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572DF54788
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788650434; cv=none; b=NS7MxR/t/DMEGrmwPe5UihvFc/8zN69TQjR8W9vTMfc5POOj5MXIOcmj5sSL6caIGdFoj0enbzyHAJThrwtBGjdXsVFRi298ia9yC/bngvXGzBqQ4Kx8oV4BUrJoTf9rOMsuZflSf2Lstpi3OgxfjaMDcLOS9JAe8Dbg2s+vQyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788650434; c=relaxed/simple;
	bh=oPKAgzul2UpVUneDI47JByw5q9fthkZytmb00byeNGk=;
	h=To:Subject:From:Message-Id:Date; b=kISNbt+wIGe56QV7CHzscnwcu8tE6yMkcJyJKDF3whl+0ZouPUE1UpYMDJ97MKzsvvBC+Z85CwCaeDA1+xVHizSlnqpCDyxgGYK2q26n2F/D2rIgEMBotzNsgdjDgvEbsJSPKJ56Sopbb8zVgqfRIFzy2vFkx31Pl9E4oYjCqTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd1t38lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd1t38lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E3BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788650433;
	bh=oPKAgzul2UpVUneDI47JByw5q9fthkZytmb00byeNGk=;
	h=To:Subject:From:Date:From;
	b=Cd1t38lr5aKZLZjhI6/WGiwuI7AiY1uTXv6YlTiVvj5dO0NQUHFUiwTk3le6rp+dY
	 Q1w05DMtId1uaHBwO/dHY13OB+WoDs7dAbQ6cg9CJ1GixyOpQTzOS5PXDAMgpT1X9A
	 kij160HCbYEgIO2c8YzvBLfOvOkrl6yWa/RW0ycPnoNK23sW0MWiiefH5CJso497SF
	 NgeiBy8vXTqYvcLJuq0ZHW42bp9s5F8L+7NUnolGzZv0H6LetzOQh3c4KMH7RVCR5Y
	 nIGRgdRYAUk1cj4f3D7F+cv5rs8eqMjK9ik9bK7iTVlDvW2aHX9ZE0B4i4jPZGXh6O
	 D4QbFoFxsYJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA134C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865043368.3607.16668263227429625740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d9b0a9a57a0b77b8479c66cc583ae90e3ddbfc344cfb9eeccad90d8e469952
Date: Sat, 05 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788650433
