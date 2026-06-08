Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EC23D3CEB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941274; cv=none; b=E9qt91yOKLKmYwRL58B4g+yywRgHMXKNQW6QyuhYxbnu1cjyOKXDZ5i4PlGAsJTqo0MC5E5kDpyVD/MtBpkPubCq4C9cYj/t6/wrnkRgR39mK2VZEZB1jrL2bwxGjXaFIArL89t7YcuCKP2BvXVLj4QCBS4FUDQ5+utYBdfQG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941274; c=relaxed/simple;
	bh=kUFJouWYx1aQnHKPgdp25QR4NoA1QYS3dQVltDrcacM=;
	h=To:Subject:From:Message-Id:Date; b=BxgIwwsxHxIYR9IloFYJ6dzDmomUMDD3rTKbPPWJ7dEM9d9+b6DI+jYn5R/+Bq13VC1f/6l7DqwK3nllJG8dLvNWDIalPWeMKl7W6mVQttxR69UGPNJF4BSHnUySWsp56M7CY+WTRylPHGzgEP63Xtzph3mxelB/EpMjKhtARjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSpgJZzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSpgJZzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88CFC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780941273;
	bh=kUFJouWYx1aQnHKPgdp25QR4NoA1QYS3dQVltDrcacM=;
	h=To:Subject:From:Date:From;
	b=YSpgJZzg4oFTu/OYoU9AwFI3rC/11QPpKMuN2v9XspZQHpLZs7Yi1g5QCuBIXW6Mr
	 MybpDj4zUkhHhYmIhqieFy+BajF7PdzefiZgmA52r/1/Zxt7eiRFM9uv6z6PoDHOn+
	 KuW5UAQoR7YwEH2mgJiwmFEb6cHoE7PpZbs7JPVoUS7M7TOGn5WJnYtYnogTBcuWn3
	 /k/LIcGZTbipqGJsgb6JOAgMc5gPljwQm7cqu/GMP1iB8hNpND5vVJaFOcX5TTR0My
	 8IbHsKQDZ2ZO3RaaGo+O1ekM5cBhX1GI/9gd8IJ2Z5q7h0D5HjStuTbYsaalOS7N17
	 kQzbPdmxJ6eGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA90BCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094127375.31423.7623444938817319526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c8a7e955f46a18f7355c07498747810a4565af42c2ffbab6e54d171bfbb708
Date: Mon, 08 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780941273
