Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3833D25948B
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734032754; cv=none; b=uqQZDQuiQtIaOdVc6uU/tEEOmr+brLVsF5j+qZ7Q87kP6cheaXxxBljY8U2XskGJ70DwOSPXvMKy3pt4a5upooDz6tNj2gXvWfji5dkgHQaMx/s+ElyQXNLr2vg+9Xy1PpAUQ9gfAlbgXMDLp+eg5CNxhhe1kMQ0e8cBFLFWTl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734032754; c=relaxed/simple;
	bh=LhzUkjlQgp2Gj6fZATXC2EtshwQob7Vijd24OlRUTuA=;
	h=To:Subject:From:Message-Id:Date; b=iuPBoD/ySBoW9JL8qvvjFRkZPJzMjQKbJ4ILXlJLiPJJTeNl4jj6I2Kw0YCTiopelOE6EBJWdBb+e1ysPOiuH+psQOBZeSw7v9Zm5tGxCixgP9K5I7Hea0IFIVSgmeqdHaNfMi6ri2DidWFZCA9gxum7HyDH4SjopvrzR7cifmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQr+xNK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQr+xNK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6568C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734032753;
	bh=LhzUkjlQgp2Gj6fZATXC2EtshwQob7Vijd24OlRUTuA=;
	h=To:Subject:From:Date:From;
	b=eQr+xNK+9OkGZxpScPDBLAcQUl81XOuQmeiqGO8a8iXrpsaeLxXPOQ0krW84Beis9
	 +l4YteXXZEy0fTdCB43OpunsgKqcSfqBItp+T549nqrQdu3ZreJEVGM0PY3pLK8wos
	 gaCye1ibUucV5LCR75y3sTbfi6bsTrG0iUShF5ehtyzn447tNa5jKiVTxdQ7jTTi85
	 PHHbYzrQc5jR+WuHPxSGb8+AS8Ycpg5RxIGN8rUT8qS4wzs9FkP68s3Qqi6e66RNn4
	 GFIs+HJPgd4BH/XsXQi8XHENacVFfma64ZoZURAq/qbHlPvkH46U2hNi9XQ7mPrmIW
	 8qxJ4uIm3od8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34F8E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403275365.24023.4446015220573332057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e2f33ba4e5576c7066af1f0de6c89d9aecf884b3bb104f49e41be6f0b716ad
Date: Thu, 12 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734032753
