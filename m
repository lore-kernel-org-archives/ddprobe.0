Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3520315D1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737824154; cv=none; b=Wg34+ihrzmFciT/zqTp88Py+hKTqfDczRVOAIa5ByJTx+RAmKLzhg1OHXaP8q+FFIJkXh7OLNRU1kd9v5s1qAh+35Pdwc7njcYP7k72+nbaLku9f+9ctaLgeqcv8uPYcOWuW9nMQ4GZFZqva8D4/daevEhemW7hPQ0QpYz9IXx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737824154; c=relaxed/simple;
	bh=W6wUZgQT0lmDyQD68TSdkYGU4Iz1rkk36SZlSSI5OtM=;
	h=To:Subject:From:Message-Id:Date; b=GKdX0dHRly6ajKi2M2jyZOyHh/p4IdShV/WtVc8eaggtOm4k6ZIvR9desD/WL8eOmpBs0VjsnccYEegx3sJLb8Tgc0nxynn4xxnsv9bxM9//Fx5oApIz/ouC0fHhEPWkCNgFtxM+27kuLifZg2eOpRl55VL7eddAGa9mGoZFAsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5Xo7j1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5Xo7j1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7354C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737824153;
	bh=W6wUZgQT0lmDyQD68TSdkYGU4Iz1rkk36SZlSSI5OtM=;
	h=To:Subject:From:Date:From;
	b=a5Xo7j1L4iEbjPkpdw9jAKC6AhHOgfSqNsmQQSkGOyDccvt8cnNLMA9nrjR/ovRRQ
	 V3wx99UrEM/w0DmKAxjj5vl0adU9ntrLyiDhJTwpj4W/kmsTRomUfMeU0JYiHVrwff
	 6zNN0sck4QSEeYHE0JMQNnRdQd8G1RWA7xGujGjBtcdBJNi70F72kTRuAQLv0GIdaX
	 OcFXbaKYFyJTFil2LfRjvrnc4rixfXnXZxUF1QOGjlakDeQX3PQGUDntEhYnJlN/My
	 JDP0HLwkGC6Yk5M7KcE3vSIdWLC7JVOC5mWHx4Cy6gFkWzB2B6tWWetyIcXYuhkB8g
	 jDMT/XjduxNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A9C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782415358.32042.2716075424824826451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f2a227fb3f1d9f57f1a9575abe4232929885a72d76ce79f17fd94b166f20b3
Date: Sat, 25 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737824153
