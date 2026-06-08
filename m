Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACD93A8721
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780945474; cv=none; b=Hj9yPQwzC1tr8uqfAG5jqyVxzT0Cc6MyNEwi9KmwVonAA+P5wCrGGsHfaMUC+QfVyMZkazlvAE9BUijgZnNWfFL8nzIk2ClpvDPOGpbhpA+X3eYNcZcCcHxD9gxAW5+xhsrEHFD0gW52l910u/WwDMKBt1lfbfGNJTgzURYRoyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780945474; c=relaxed/simple;
	bh=rww9R8ssh2XvhDxpD3JBZR+ECGRa7ksR+ogxqZvZbTo=;
	h=To:Subject:From:Message-Id:Date; b=jMYBItW3/JkOW/QPkVeJqMRLGr0wEXQ0V/m38CZ+kkFG4CyaWdwu8TtXu5oaOud7e/0iS21p+gImgKSMLHMNg4P4V98Rdj5F9bXI+u3qrAL9GBi4y5DlAi19jPsq4GQeDg0kgEzAcIcnUYkQrMYxpjr5xneVIrtIjgGXfnG7L6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9NgACxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9NgACxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE93EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780945473;
	bh=rww9R8ssh2XvhDxpD3JBZR+ECGRa7ksR+ogxqZvZbTo=;
	h=To:Subject:From:Date:From;
	b=p9NgACxadRV7CuLXxH7Fx+31Z99YHhPFNTYzktSqUCq2Rl2TocZMlVyYQZRpBMpPS
	 ZGqfAuTaP4sXdDUyanNkBA8l57f/Oz6IEFDkYwQ/Y9C73TiCJGBtyIfBs8jFM84SNH
	 TzZ2SYYRQZTrpv/JCGMy/HXucCr8UzegHtfMGKPT4eWBCXebD303msVYwUQEbA+QKV
	 HRkslx8GOqi6uk3VSLbpVqF8kBdiHHkf8WBZ7E7LE8xPalKfNNeSZksrIhHfxNSrBR
	 +6C1J7rPxXlTAkvYMwLGkmJ2gXI/+E+WyVV5cwPUT0RQWk876FuUDe7pmO85xWwOeY
	 2GBwr12LyvD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA730CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094547368.27997.18415093600009218107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5177de6ef9845c942e187f8c2ab5e6314543888ed1877f8292c1b9fc09c598bf
Date: Mon, 08 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780945473
