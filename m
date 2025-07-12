Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9C04A1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752360594; cv=none; b=DGcKO7oXDVRMzkKRufRge2Rwf85q5HTIrVLXPydY66v+O9XGCxRXtxKSsgiT4apfrcYWwlnz9yqNJMJGehq1fnNIxj53SKMHk3KKW7UX94cYX0cqVSDS0nbZsf7ERSTazfQApYtRsUdaHvB1I673myvQc8RDb1LVMn5SJpl4OF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752360594; c=relaxed/simple;
	bh=S/8Ji+u+Zy8v4OaEdw2xmNrvPmOOyChZJpbm3vc8EgQ=;
	h=To:Subject:From:Message-Id:Date; b=oYWTHvdUlo4E7Wvg0J4kgmsr/13QcMs2eg4SgldBTHxAXAa1EKyGvfatLhWh3OprFQaba94W3UkV53ftNOOsZG6WYQAwthD1RKZZwp5khXbHTW0y3kq3sTYke239cq7L0kbbyA3yqYqKIrHw2ZBeTs/D0dpOAt3teThw8G6Izco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOlupbO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOlupbO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E448C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752360593;
	bh=S/8Ji+u+Zy8v4OaEdw2xmNrvPmOOyChZJpbm3vc8EgQ=;
	h=To:Subject:From:Date:From;
	b=fOlupbO4GCPO3tK/kNKZHx3NZL4BkLE3JXUd1dA8cWP0JnC41MOjWvWYo4vx5gH7X
	 YDEtFRda021SR/bdgaL8s5q1z/pLFqtQPuNgiTp7ZfRVHIuvSLTrSr32SnTfIF9x2u
	 DIGj1DtoQj49hWTS3Tq1ljqVeK+QFgkCNlPCQ/hkV3EgygWP45TUb9NVtNOLkhCOti
	 0pU3MlHsw/jUmdAgc4Ts8kwvXMoJgv5LWBVl28PzYGAysL/6QAGPgvR3gora693sH0
	 6u4Ng23Xl0EZEmJb1dP/55egx7U90aEBsMmrvHFv583+9DZhZr9wLwzuO32jOzkayK
	 EPRBftZp831fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA3C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236059357.6473.9381546114105181063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a19a5ef373c9fa5f53b7bf21a23ab29a107665b1ab742b89233da62a3bad7b
Date: Sat, 12 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752360593
