Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4050A305E3B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786153234; cv=none; b=niceSp9cWfsgzEeHH35lqJO+J1qTiZo54bEoEnGYRnrzid5I46046EwCJJYTnt+v6e5PiCbZjK7YbhfU62Jqvo/rmdE3lKyIxUoH1MS0lguG/3v2EyGBLikvtIVYPG52FwWORPA62GsX7ry9SkaGOL6GgEHfPconm4BQdV2rW+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786153234; c=relaxed/simple;
	bh=+BiKH2dTLTw8cT6DLJebPknmXZ+nrr15Jn/T1SFKwQI=;
	h=To:Subject:From:Message-Id:Date; b=q3CoUp+kLsA51thUNJQdz0xqQVl2TIKiucvmg9csB83BsnjPvllH36SeDeU5wLm4Hp2iB8AIa0P5Iq8MnLULMFKmap7i6JNqMY+MiVL4GVdPdc7NrVYxyVhC/uUiarVyP+uWYd/qHwC3p5TDnQA7gcRVp5otDxQMr6oDdeWnwt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1DaqqZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1DaqqZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2029C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786153233;
	bh=+BiKH2dTLTw8cT6DLJebPknmXZ+nrr15Jn/T1SFKwQI=;
	h=To:Subject:From:Date:From;
	b=u1DaqqZauHGcXdm0QvRtC7jUdUUEx5pk/958QU2dQ2Lg6s4h0HmW3VwKkmO3vEBG6
	 Rn6mRYHVq2ABo87+NzDNLVkd6IFMDW+A76lIZXueO5gs8j21jQAjB3pqfVfkfEtZ9/
	 5aPR0eATyblGy4Wi0Y7jEk6Gqot2IB7gmyTtQTso5HETOpFDK8Uk5cG+sZcFoALbuS
	 2t5XS9s/2d6OAEjgH+tJHs8Bc/H4+2Z311C5e10Vs0CUQ9DDBNzKGOQq0MVBmVm94A
	 aaaAWRa9G0FSI+Zkx8L2lL0PbJ3wE0lQfsAFh+jddSQ/e9sUXa1GrSuL0yjKLUhDep
	 w9F6NZ75gXY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1AEC5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615323368.12434.8210346010362483161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7301590292d7a983be11156f06a1dc69591744d4a9ea1f0ca76a6465e70033
Date: Sat, 08 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786153233
