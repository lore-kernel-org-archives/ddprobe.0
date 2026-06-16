Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB2443E4BA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781626594; cv=none; b=aZOEe6r7jWgV01GQslyUa2VLpsTW0nStCqvx5vl/w/rS6f/skTwyRGWeBqVl9lBhrL2yC4MUdiv5q9HKF9eDBIdc+XJuxrDhDbbuRmXSy9Y1EQjprZgSjOSjvcMX7vxb4rhaPqna/SzOs7OukWrtlfr9qfds7tvKuaWR/VdtR6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781626594; c=relaxed/simple;
	bh=a9IRWKSYAEAwjEkSP/5Pd7W5tXUgV5otprOiKln7WFs=;
	h=To:Subject:From:Message-Id:Date; b=BMAVwiONzGLDCp+xs4fj/AMZjMFao+0pmGbhNtGvYTv9cJkbKvaGAYXabTHau6s3nSmaazJ7Np6xF6M1umOUpOSnIlmb39T9/kwb/iGFFNCqMxTgqHM2N3Zq7NuEgm5dCpSheeEasav0cxEyzvocXWqax2i3JbvOR9DPTQY52do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzPg30I2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzPg30I2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46B7C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781626593;
	bh=a9IRWKSYAEAwjEkSP/5Pd7W5tXUgV5otprOiKln7WFs=;
	h=To:Subject:From:Date:From;
	b=JzPg30I28aNpeu7H1AQpvpYvxSi4LYYhxtrn51LpDaCoH5Gm0l5afxuQXtSf7XMbK
	 q6zkPCzd4nJ+nA66LxvYgLpmcXCFA+EVH9y2dqBWxqsp9qIY4vuqlJVIaCHyxTmqKk
	 sm6LytQeL7HgnhgtS6z+NXVbUqH9HEhk63W11LYruUGxsQpjQvrQtLUipYNaI1nJ94
	 +NQnmFAycG03Vm7RKpiyqRCu0crAhnsRw46dWgL+dz2UoBE9n1T5/T0QqvSGdky7VK
	 v/a/aVDpxIWxqdf8tQZ0UIDveEZTq9sTsMStaM+weRVbDTwy7FbJHBQpVNx55rhcyJ
	 d+vRusDJRtylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2ACD98EE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162659368.26774.17014612155165557386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca682a7188f0dcbb02a755c0176ab844f20c286e77992594d42518ee49741c8
Date: Tue, 16 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781626593
