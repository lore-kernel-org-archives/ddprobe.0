Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CD10F4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732754154; cv=none; b=D7bNa0tfDjVdlahFG1BeJQ/8Jio6RuAld0VKQbMhBjGgvFvrxUI09YjMLCmzFLeuk82Vw/b6OadL4XVE9KdheJYbB5rZby7CN9Gbr1oxR6RW0sHZrGjzY0l9Tx4xSmJqYT3K/bqUTUBw/QHoSnpd1aW/SpvUkOk5wonn5OI27h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732754154; c=relaxed/simple;
	bh=U5DHh3h3ewXgMdkqDhjnaybEdqzTk5HohprGikYxTs8=;
	h=To:Subject:From:Message-Id:Date; b=Mq/Yh118i42Pkk83rLp1VSZqxTuvHGwP52E/SMBdtrpLcViTtIxriFXM0q+IUMnLk3TxEXCkFGwwp0rKSotnc5yzd7mgV967aUIjmR4LtQ0OGkQ+w+QVP50DbLJwtINX+pqx3cZ0lwLGPATmr9FAFDc8cFeHnalQ93NxHLzlYuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g82bgeQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g82bgeQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF974C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732754153;
	bh=U5DHh3h3ewXgMdkqDhjnaybEdqzTk5HohprGikYxTs8=;
	h=To:Subject:From:Date:From;
	b=g82bgeQZ70GSYbpwzcHQ9QGdYf7RnmHEiUnVgjSsfrTAkN8CIJBUowMxwXiYpanN3
	 DneRU1J/QFssY/fs2RRD2LySMQtfl0OfFl1izo9wrlVG+6HvMDv6XCmZg5GvmQ6ynx
	 sa3hb8N9FiviaX4peyuOVB8VfOJvu4fUueflo+EeGTFTmLb4GA1YTFIX9ChNMaq+3b
	 ibdqfJwBao+OtzrVLObo4Vu2vzX1nFfechipB+Z8pqzIH40KXlpelt8crIg9FvR62z
	 GrH/v4OA++Lwnm/aaMj4vrdv8g3m1CWWSM6sqgcdc9fTbyaxqyNEfmxdmYCxSqGCrB
	 h9QzhbmNFt63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A605D6D24F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275415359.22541.2892035071288547972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ac6a507433bd23da47233e8ab08bf9dfa77de8b71f09f128aebe14ebd7748e
Date: Thu, 28 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732754153
