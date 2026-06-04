Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F13B0AC3
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780553674; cv=none; b=CMEXymduLgahDO3vaM2c+g42WUw8JM2+cK5Id3ObYrXZSD8iobNvZ5NVsBpLkk4NjpgjpMPCUh4X7O7JZgFvLkiZbZt7jFwPiefn4bbdO/4lCbwnVIstxZe5WpWxi6wMKKcA17jPqJRXHxG3xsc64eIPpz7y+nQmnhx7EwzR9KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780553674; c=relaxed/simple;
	bh=YR0bhru6F59yDYcV6k0O2umPifzhIUfC2r+U4NUqYiM=;
	h=To:Subject:From:Message-Id:Date; b=a/N80CeuJQks+Sg8aifebW57YmDws290H6yLjChkuP8RT1IiZWEbTBvNIPuU+vapc/JrkXCmnATyBwu5eBMO6z7oLGKuR99mn7JPv+ion/kOFMfRXTtZg+VIIxyvjzjTku3/Y6eF4tWplIxL1wUkh+azrAUzhLHV4mNqSleJZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1aCpG1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1aCpG1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C5BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780553673;
	bh=YR0bhru6F59yDYcV6k0O2umPifzhIUfC2r+U4NUqYiM=;
	h=To:Subject:From:Date:From;
	b=K1aCpG1YTOPMW22IUXlM1wDhCNFJPCuyQi3nxpP97oL7vdHviczis9vLbj4lm71H1
	 t7sSrAxOEPyfPUo3YHEjWZXjmiJh7oY292S6tD6JK5EBLp86PnNRyphx9EjGZhvR0p
	 VFAGCn0DpVBVgrCVRdvt8gYAJscp6uREVxVKaz19xeSPrDcBn+oiYNePD7Avg+rWKl
	 oSFPGhXysQ6eFF3N9h/lTA1/hmO0my8njX6mXNvmJbSJ3ezZ+A42LlA4yOkw4gUXc7
	 vW9rUkJ01ERZ+35avaAHZVAi8M1lxv2FPFpHJd/Ovk1L6GJf9teexKU5ogqwH3T7oh
	 9J76up2aFESBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2CCCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055367370.11577.17951249236418198734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32b5695ceb8c83bd23e922a6231da632a15c93fb537f0bc7036e394acdd5314
Date: Thu, 04 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780553673
