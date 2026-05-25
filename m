Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3614A2F8EB0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779710554; cv=none; b=tXQFHM0+FoEFEwQo/VNtwCUvC9TbLMhRkFF8qIeGIudWYsrMqataE4JZlQEd3L7lZKQe3ky5xrDC7QvdmDpx5Ji3YCLHHuzs7hQksacjWJm5bhJq6URUrrttbZDwU0cOtmChWj0qtrzD0PxkDoWRcUYaXae5obw1VvRWfoyt+tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779710554; c=relaxed/simple;
	bh=fNp7Tgp4fLCA6DAzybvm1RVYYaJU9cSLFQ2DO1BCSKE=;
	h=To:Subject:From:Message-Id:Date; b=W5O3oDnoklUbgumpZu7SgXYwUMVRfWYkhzTjrZtrvZraJbiHuYJ9FWip13uxMnPhMpgSqZdlpwEhZavIW8BIPmJt6c36umUhBlJ1uPgrFX8p7b/ZQqR5WieXKemlDSNzuhLgOYSlFW5Hp7Vbc3/mASoRsaFYAD2Ml+KauO7ZA8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjVRsmFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjVRsmFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A52C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779710553;
	bh=fNp7Tgp4fLCA6DAzybvm1RVYYaJU9cSLFQ2DO1BCSKE=;
	h=To:Subject:From:Date:From;
	b=RjVRsmFiBpPD/wV7rU2zcnLUpveCvcfwZ9WU7G4KQs7ky3v9VeNQxgVBfHku4o8JX
	 XTb5mgbWaDnzKbWPBP6boBtxUvKDHi+k4dSuXpLHPxuiMEgpGbI+Ksa1uUBvDnNrr0
	 dfMJVa/2geTQ8d6ieAYTu9xiI84Q6AlMV1Tygl0ua3u8qo8IAvQOmeyws51OmLVCHt
	 fvKsUqLoK4up0LRdgCFiV+XWWmKsFLVFDhY/83W9OnbJ1fOIHvhMPjQqu1KD9I513U
	 PbeHCVSxHBHP5AztmfIrr1UWRwafSfN2T2o97Q7HC93HIUaQjdvNn5EO9L4q1PVvpR
	 3t9K4A5Q4MGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB186CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971055369.21271.13536458774388580015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863eb57b7f2e46d387f0ce1b1d0290f4b20ead9acb79dd5c849795db823abd80
Date: Mon, 25 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779710553
