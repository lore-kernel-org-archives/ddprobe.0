Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B85BBA3F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719937523; cv=none; b=hV8NBzDlKZl2RVyFb+B/vO1sdr+8fD1T8uO2wOGlrUJZ8IkhdI3DHIZN5BomsmVk5xuAJQwUi5vD7HOq3VWSL8oNcg0DIuYv6Q9BjuBaxujS4+/C7nPTtLn4l4lc8zJyLoPGVEC2sn4HE9Kz/CZJT1bX/qOj5zTIFNdDAFZRazs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719937523; c=relaxed/simple;
	bh=R7L7i6QOjqDBMnKDncuM70ROF1DGDLNgtZ8toDdHFKw=;
	h=To:Subject:From:Message-Id:Date; b=PO+dmPJUHppQyAb/KQxxvj7Mz6z13yGLXm+OA3ALa2A4q0p2Ne5lQtzEWYg8zHzcdFLMAATBUmsBJ/uGm4BIiEfWBYvuYxPRu2vWG5rcscKjzIZxJ/F04GWe/eVG7gMzlTEu/PRLbpiWQ5Gr01TvEpTKA9QhOqUicBWgpujFYHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcYF0Fxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcYF0Fxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A78C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719937522;
	bh=R7L7i6QOjqDBMnKDncuM70ROF1DGDLNgtZ8toDdHFKw=;
	h=To:Subject:From:Date:From;
	b=CcYF0FxnSmrA4+5bmbrASZmxykpw5SiyR+wFug+jRuabfPaWsbw6nO77ouEzD51G/
	 QDBryRw4E5E3Vxcvgv+VZUCgWOSwsV2xbHJAYHdUZ+zyh9H0Uk4Lbb5iyydAEcE6sC
	 FazZ6bYCQ8ALBo3smHyWR4bydvhI3FDEl36C/YsDels4bjiDWjIEPBHAagwUYaV5aO
	 AVEJfNOef19O12ywKUTjIK46MbMM2GUhsNv40ZFnF+A6+/QdYCfnPVonThi/oeEUaH
	 Jcp6/e3aerV+X98o+B2JwxZBNMJwvfz7kUxE+NmQM6a07XyNkMrKUE0EhM9WtfiZ7v
	 gSUmBxcIA0ncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA55DC31D97
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993752282.12669.8439068768688120688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80baa111f891da1e1f99a06654e1b747a0a05d838fc5cf9fca0f25e4018dab3
Date: Tue, 02 Jul 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719937522
