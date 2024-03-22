Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2DE8BE0
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711083496; cv=none; b=AHtQ/3Dwd0OQE3Hy2Wf+EQSymNF8LT3xjYzlDISAaoCCiSOf5LHxooISGFXhVOrAjfW+roF5pqzNlv5htSj2ZUQ7wXK/1qLins5S/+fxaINxlBgRQEuDfuYJOboCzXT6cZw9R9IoerQPVY1ArXsGpHMD1CXTwOUe2fvBey5P+GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711083496; c=relaxed/simple;
	bh=lHEmPJ3q8/DOg3iTZjaBxrds4lgt26zm39iqO1fnSNo=;
	h=To:Subject:From:Message-Id:Date; b=K0QkNlKDApOV7KRkmYjcAllQPw4Kt8QkTptkO8u0T1DSKJowimYXGpMb86/y7BVpsybwX4bux+UxfkMbDSSXfyRipT2TbQi2AB2Hd6TlRWewi+u+KaB1hY9dzQ2ZPvekotCKvBCIfF143aDraRIBUKdAvQARfd5kKwk99H8/4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5qzCgV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5qzCgV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F07DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711083496;
	bh=lHEmPJ3q8/DOg3iTZjaBxrds4lgt26zm39iqO1fnSNo=;
	h=To:Subject:From:Date:From;
	b=Y5qzCgV9Kd8Fgjx+FyLrxK23k3zx4CEYQJNkIWp1wSqXjffnm+jrbRHPfsoTmriQ+
	 RnYpQnVDpPVsda5UB9XQ5l+dBY4FylVxqMZ+M9B+UsdXvDUFNOxO6uuobB6Bb16Kwh
	 /H6D9kOUm9XzNGPDs8EoWCdnIKOEN6xT9k0gVhDpX3sT/7MObPxTiAy5xApeYxP65T
	 CCr7QU8rXcomdZCqzOoo+NxoQxrpGNj/0SqsrAMoMuWQSYlTj8Xcp2WNbgNbhNMTxp
	 iCYTiAEnZBAxbp0JUHFOmwbnLz6IuKga9FYIz5VPqeHFmhSNYqKIMnxoJjzGEK7Kph
	 hMPhX3+932TLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EC5C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171108349642.1503.14706723549297564492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7487b8c14c7d683bb06d0529024bd6b3248b97e534e4db26ff847e77c080ffce
Date: Fri, 22 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711083496
