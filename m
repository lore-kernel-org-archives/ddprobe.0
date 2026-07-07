Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD03EDAA2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783426714; cv=none; b=Cj2cKl7WKw+tUHhprse/mlsgpQizkwPl3ber3C4019dBne+OJ3SrMiYRmJ6Ol1XOawRLUjZKpdJbD+HpP6yLzPpQD0Yrfi272WmLkbnoi2nYX32MyQNSPuabE6Ekpc2gwcO/PxfcjuTwy6BJdG3FYQ5vkkJgLsgioNbqdBV5dN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783426714; c=relaxed/simple;
	bh=Eye8ez+/PqNTlGd7HNKASjbP2+2B44RIVgUzQAozcu8=;
	h=To:Subject:From:Message-Id:Date; b=DxGZy0U4BiA4kmbk+sB6BUABO1MNkxqvY22D3E8HfAYPiS5BXSjVe7IMPR+y0lRJKlQPjwnHP2+FlvBHkG21NIzjB+Vmj8H4kUsNpJ8nOF2meKau2dSFoeBQEpZawvFhnyboK2cx/IrJc0+UEUqgcOwCc4Ur9g5FBU8Mrbe/sKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAY/7f8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAY/7f8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA683C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783426713;
	bh=Eye8ez+/PqNTlGd7HNKASjbP2+2B44RIVgUzQAozcu8=;
	h=To:Subject:From:Date:From;
	b=RGAY/7f8BHGXOFmOEEj06B97EG+EoASdsuMZpHfsiEhS5ot0JqpS6ZgSWw6Q80dGv
	 q3pyJYYzkmhWRYCR/EKDrAWTdDOczk8cu2QYLUIxyenfEIIZADjh5u/5qFCnc4ASh/
	 LqmGRI3F7mkrd6VQ5VOghhw6584t8kQ+y6XHkYKXo8SDTQSjEVfg7iGt3V0JcR9nMd
	 ie5OcennNO+2QBO+CEKymPcGHlFPXeLTXEQGnswah7mk019YsUcHC+w3GTyJIaC0Mn
	 bJKJAcyDKTEqDJG4gq5DwzJZD91EU1G7OQ+/siLa0Svhz3iUSS6ZkPbu0lffDqm2DZ
	 CMETByN0Ox0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDCC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342671368.12106.324655342889205801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a4614b6b1b5376045d49e38a408b622a7757b78a64b8c966bd87524b631799
Date: Tue, 07 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783426713
