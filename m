Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530AA1494B1
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726695354; cv=none; b=f/2rxd1AcL7qd73TzUctgoijJCN4k1NVOlfkbtyuROqr8T+vDXIvUjNVoVfE8iUBcPCiXzLVG5AskjddmFjzC+JxUejAHZPB3s+WF0I70l7Ri0qY2WK11RbivYhwLo7tTjTxnam4TTH/xcuHWDQXtHLnd3yFYHCnXDGWPmdQSFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726695354; c=relaxed/simple;
	bh=1fSNnwTvVd0WFg2AK+fmALsUnoep3QKa58/ppf1IgpA=;
	h=To:Subject:From:Message-Id:Date; b=TvpkbjTFD60l4bdMe1eW/07fpPC79d0vTfcPXU8qWzN/99z+yCiWDNfvf4ynpUL84Q6VyOvGtjyJTF4MGzCK7Goa6nGxNgYCwVb9Zanct0HzUhfaYeoquF6dqdZIhe2l7zEd365HtRyv7mh8StkmfboEybH453t4ZYVQo1za2EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pehe0MLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pehe0MLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4953C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726695353;
	bh=1fSNnwTvVd0WFg2AK+fmALsUnoep3QKa58/ppf1IgpA=;
	h=To:Subject:From:Date:From;
	b=pehe0MLX5aU4sXK0+4nH9jRFfQ6PVb79BJ2BN56IeDq0v9b2yYHhhnAilBy25r5Uj
	 0KRAVCSLK6jqIs7KGhyZv3RKIurZUKXvEiu4SpaUa4yLyqNZGOcufyNTZDT0NGKAId
	 1kBkFWiCPQeGMywTCJAuEE5C0+Qm6J2tSgOmzOI5sTH2ZL1M2wGIRBKIqO2oaaGxg/
	 Ll970DBtHfKywsglJRj+Z6C6lGCxhRXfBT/Vb6iTwA6dIs7SgSJ2fP/uPEwwZyRv6G
	 fa/fh+hgZTU/64KZT550oC0s+A/BQhd3E5SDyQHFxK0x5UR9MJ1efDpDSSR5BwTIWN
	 /hxOXsxjj9znQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC57CDD55C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669535361.3506.14553324891479516650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3131c3b3373205a7f1e6b798ebb81ac75a328f2130a31e6addbdb35742038bcc
Date: Wed, 18 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726695353
