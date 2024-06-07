Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BAA200A0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717753643; cv=none; b=YvF48oxrxzZCxnwRlrl1h9wdh5qJXBNfA1++1+158OH5F1YcN7y1jgscltiAznmaUy19oQgfUaj6pebLG3VvWv+I2/Zraborgy6C/dbWNPTeJ2uK2dTsYFCBx/mc4iJI/ncXtPi86PYseRg9k/ereIuN1Y1zPrRHikv7Rda9AvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717753643; c=relaxed/simple;
	bh=5VZDeRIkXMcEolaQlU4wwaFg2mRPAHcOF4DCWqwDyNA=;
	h=To:Subject:From:Message-Id:Date; b=Y/w5lQ+ESNLmuqCUIM8XqyBBIugIMv+PkXoNoTQVZRv1aXVmqMXnuIjG6GZIp3R++Zm8rejNK4s7AruFWlhoMwFW43ELrUFzd6Dv5Lpm5fmpsf4r5PTk4WHBz77l0cdOybl5RUUZZ1yDPE2Q/BtFwEr4lKWDkA/F3W/aEzt5Dgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDrt7QVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDrt7QVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78F4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717753642;
	bh=5VZDeRIkXMcEolaQlU4wwaFg2mRPAHcOF4DCWqwDyNA=;
	h=To:Subject:From:Date:From;
	b=IDrt7QVl7AadyWuBU1Ys6hFvLFj0sTRAScFCpS8QUnV1LvCN0IUqYwZqv/2zeboWb
	 3SsV7jf4yN7xdscwepL6Ixs/V3cytNLSqGh2MVG18WP/um5YCET8gLpWttZkcdIgpD
	 nlwuOcLMJUgtLzyDxtKF58RvXoj+9bevMNtzuV65SE6h9ZpdSXIO14EH6WPIp4yxOD
	 Qa7KkxA5aVle/x747MKZl0De7ZOu1gDF4XtUN0vHh1BZk0lpid3ZV51SMrK8yNis7C
	 V/LnzT0HWy16bnxXWh+QnGdcaMcGqjEEk3OKqqkdKr4pCorVO2QQ0Z0mKpDUUAXBfi
	 +iKIkmMaLpniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4D0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775364278.3938.3551684379477490383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372f24a9698429d38a6953ac66cb906ac24bac6d3ae9e62ecfbb505d5e54216f
Date: Fri, 07 Jun 2024 09:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717753642
