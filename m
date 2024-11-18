Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D60155322
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731929154; cv=none; b=u29A2fy79ThAXZYkjgs+NAoOjgCXkn7feN+4zsFhrvz1IhOfDJD8kYomr7WPjREJvFnbX2nZmKibTZY3MZvwCO51v/b3wjKxLzlx9bytbs0+IyqZe8BbBxhTbQ+uj4maxbb7oTrxwdS936AEFI5+N1Y71EZk3CurEueDxJVwQQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731929154; c=relaxed/simple;
	bh=1mrWNmQ8UmSLX1PgulmkJtbV7jKX+Xg5DQefzjLf9EU=;
	h=To:Subject:From:Message-Id:Date; b=Z5vzdSNhUC8Q0UmWHJ5+rs3AZtSFnchvwkEwd2P8qtrnn4g9W3eBwZAzTayDUyou9T9wsuszoPCEh3KVOu31kersokMgapcN0gWJGTGwQWzgFCleLdo/cu5I9q7btWhKTVskxo9fkjkqyY7PRS6aoX7veXAKALdBg1RUrsbWhpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyUuJhNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyUuJhNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA804C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731929153;
	bh=1mrWNmQ8UmSLX1PgulmkJtbV7jKX+Xg5DQefzjLf9EU=;
	h=To:Subject:From:Date:From;
	b=gyUuJhNGcvk9X19uPRRYu7wNO2gUEfqv0VgX1CkqCoaizYpYJpwGCYdfulT7ve5d9
	 cwOyzQ9Aan/+FpIQcdUeW4Gk8fzdSWEbh0ywgKpSf85GpT3/PXfGtWZ3bnLpNjgQrI
	 q4t1ldWKZ0t70AFokuGJDGGC+a1HJOAEpp012qWX8UsSFV4cWtSb424pOVOlDHDMdT
	 OO7ZuMCMB6w1CDoMmUYrMAKSx1Z8QlOTGzqcO4DyBCa0DydAKmsrhpkJ3DNz66Ufzx
	 ae1YQs+MEAoq7fcpza6szdHsUEXgCW2aWrC/rMWfQUCz1Rsh4D6Ka6vZtBAA5FFY0P
	 rINUm1A61RBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD4D4920F
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173192915360.4573.14575909937753756933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c32731ddf031df4e62f15880dfd08b272fc59676ad19d168068cbbe6f45a5d
Date: Mon, 18 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731929153
