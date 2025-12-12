Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8FE2E173E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765540974; cv=none; b=fD1mVxOcZjFx9w1t+4xVbYS62ltQkUNY2VtIBkvPu3zouDq0ub6AMIlg/YCUu2GzMUBBWDuNDuVemzjItZMyKsk7Rk6as+MHgQ88rUDTJNPJV/EuPVJB3bRoxmsvXQg3MapfK1wGnolMv8WbaiMbqygU4BsJEqkeoP+OaUTU1Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765540974; c=relaxed/simple;
	bh=pVA9UdoYAqXh5ajS4a8A+95i1eTQaTltQuj51ki6VHo=;
	h=To:Subject:From:Message-Id:Date; b=H8H/h7CzmLPqU23KuUCug+YG+qmw3KsNWaogfHZkTMmKltmVls/wyjj1YWNcxhnlqpjoAS/x5zwcdgs37PaKkurcn1YiUlT0NYpnNtQFd3dfEHeZlYsrZXTrnXkO9B7A6rgB1ODfGJBGBEEqL6y8T5MxbaQ5Nz/30BUtJiJaxK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtzyiFgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtzyiFgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63EEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765540973;
	bh=pVA9UdoYAqXh5ajS4a8A+95i1eTQaTltQuj51ki6VHo=;
	h=To:Subject:From:Date:From;
	b=TtzyiFgz8ElGtT5BauMgEijWhDY/VF/hXg5+A7L3wpV7Nm1/4lvvayudItKGt4hlH
	 jWlrS1t4GINeXD57IHCQwyAn6c7I75OM0qBEkoElEby8jxyyBO2cLxBdoRJ4BmwNtX
	 jtg/MLaKuchT7vMer6l/qIORcCVa7uKy+3ulS+JyGcL+nXnIwPL9DjsOa8MugHi9y6
	 nwdcgv/UsE7dozqNaO/gmmTxbK3CGNYKfYMHT9/cn1o/1dypEb+dqx8iiI9i8gp2C9
	 77dpKlAMQw4mDPG3J39fBO4Lgv28B6UTzg/iuLSnxGtRLh8MbXHhvJZnHJTQOQvvA2
	 rB73EZ90gh2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93648D49216
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554097359.3501.10281572148609446877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2424866cd2b8962391cfe43ec1b5d3983df17b1510aa14e111ce2451ead14f5
Date: Fri, 12 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765540973
