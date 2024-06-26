Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F6213AD28
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719377003; cv=none; b=eOFKk6xxA/8uxuPUWeu/bJ6bJV+t/+4PIJNYrXkRyUpCCQ3UrQv0G6tx3V9WZ8QU5hlHXVVreZ37CmEcTYbKAm7FRn8YQH2LMjAUI7pd9R9Bs84gQgN3pCy1yqRcNYICES5KkL7wij7XAoc6/8fSr3kT/l/bmC6XEWyFjd3xW8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719377003; c=relaxed/simple;
	bh=q7Fsr5Bon53WMDlxnH5Np/gqikR8GLzA+pYmQvHEPuU=;
	h=To:Subject:From:Message-Id:Date; b=MHVnY+/C1gcWYCLelemcZPUEzHm4eOs2m2Yz7agi0W+hE1zIg8Pnfzb92GJeUUapvapEYnCd1BRied9Q84vF79jalmls67s3wMxMxsmsSntrE2smvPbLNBN4QOo2qNPHfGoBoTP+KkXBh7maD8xHeRkCO5bmCcGEigclf8Ah9fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQRNPaKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQRNPaKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA023C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719377002;
	bh=q7Fsr5Bon53WMDlxnH5Np/gqikR8GLzA+pYmQvHEPuU=;
	h=To:Subject:From:Date:From;
	b=OQRNPaKHHEqPtH7SlSGlO7QbgrOiIBZQh2jgTdBf4bX59ak/C85VXEX4k1zEfz0SQ
	 P1jU6Us631uWCdUdxGEEJNnAgVXnZChV00cw0zuhZFKr8DmrW1KlOFbu0JeCuVxoiB
	 WYP8f8eCtMt440g2NIOvxYlCyW6No8yWbVdBFEpg1U1ha5fXXcB4+perYfuYs5IdBL
	 YHzrFXOk+582kUIEBLp7hnBOs0ef69geQy6E1KTWVhKqFKb/r3G5xj8DlnlQFPTS8H
	 FJNMaQ/8whCfvFy9sgT4fUEPXhbj2FiAIOhJC6PY7sYh7bXfV2ye+p3cV3hMDCMP1b
	 VSEyqTOAt9Ymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24B9C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937700278.32684.512049538103732285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705a0d480590a88213640a875666b56859a3c1bdd3696957ff2aa92f2089b0f0
Date: Wed, 26 Jun 2024 04:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719377002
