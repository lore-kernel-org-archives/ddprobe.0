Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25220248F47
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758173394; cv=none; b=kE3VMHzlnNJ0q57zHI9TVT0thDAzBsxGFV1l//vU7y8Qvhos+djdGipBAEcGNQHzN/LSYr5Ey+J2yxPrXsA6V8dXj1QplDx2So0cZrxnP87OSqawblIiZ6V+4/wBoX2brg4njG2wofB9p1BsIJCWOt9mDTffAQZ0OaDr696QArk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758173394; c=relaxed/simple;
	bh=C4b5M+SvcaAdPlOMXZ32C4C15T6cqabY5eF1E/e7Ozo=;
	h=To:Subject:From:Message-Id:Date; b=pmXBhJM6RNbSdGwOce9o3KyT+O4a9hYFSM6KjxxSASkg+YH1IR11aAcTqI0KpGhDCZTDrSCyUxJzYlinN4gA/altXwo1kJdFMA/v0aGJZU3i5B1usv1POXCa3ILDuguPQB5kJpl8iY+QM/YCooWdRaqd/YOCRmLDJFnyeEoxh5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjXdiT0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjXdiT0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9B5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758173393;
	bh=C4b5M+SvcaAdPlOMXZ32C4C15T6cqabY5eF1E/e7Ozo=;
	h=To:Subject:From:Date:From;
	b=NjXdiT0FFjAG1zDb0p/0XYQ9VrdmbOGafL1E+Bc2lrOLOcOTuYDF0Ua8PlJA/y/X1
	 F2eMuuL5/4tcpcuOINZOwpBmAHbE0sSHGqAdcG64VqwentGxCFFQz5QfnIgqPFrEvo
	 sYFu0gxV8ctj6ye0wpcM/2oldHLHexYsoaHmxPHRgDLbNKOGK5ixvUbCTOGhZiXyJz
	 8bqkc7G4k5JpH5QJOQQd3eqsu+tBDuUf5zYqLTsrMPcAU1J9COLXUCdSjAQAS/fmDI
	 0+/+6bXKUURXuz5ETFNKIz93nOecdaeAbx4k+YmQB+BFutPNbQifAh8dlCZURmM7SM
	 0IOFqqNrtT/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D27CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817339360.872.9866980948252420822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49007dd6c0c2fa4db3ccfd1b31c99699a1bc1caa60b5dd7ecc12d774157c8978
Date: Thu, 18 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758173393
