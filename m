Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B72E79CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713495563; cv=none; b=HLwSNcTfoigl7v0jxI+dp6KkLoBD09lBZeEOKkF3cpL4L8e+YUALkNc+oUf15DMXcI1cjtzrpVfKRedPRIXEn0JQDq6XxVDnDYLkteDOoiDvEku6uRyLVRGc2FmY7Ho6UChk0l+8HQZr15ho7AyLoQLn9g1Os2CWjm/eMaPuCU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713495563; c=relaxed/simple;
	bh=SxBFwAZiba5JbbOhsrVnU3jerBFMmWGSIyZoLTL/+x8=;
	h=To:Subject:From:Message-Id:Date; b=MnPpbxn4YEIMRk2LwVE/ALRZWz0L4D8duqrvpI/JU3KJjGilql+H9+lkCWDfPwLnd/dCW7HKSkCpBh6W5dqBOgkauuoGD8Bq06N1xy2vRlCLacOMI2cNWj5PV+JB9tv7dMhUnEc0G/7yOyME6ldIagdAos/+etuWtrQbVjyd1hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6NCUIps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6NCUIps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D762FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713495562;
	bh=SxBFwAZiba5JbbOhsrVnU3jerBFMmWGSIyZoLTL/+x8=;
	h=To:Subject:From:Date:From;
	b=K6NCUIpsag5I6BmNlqG91+8Ravj5s441DHe5qh4rZWtDc62NOJ5+43AX1p+FvhkxD
	 tQhyGbPZwR1X6iaLdNOqgbBz1di7WkE94GqEmqaE9xRaF95jGnjfEo3nDJlf4xKDBA
	 V+PgloU2AIPIBmwu5660DmC1ZlbGDyL3Z+5gZ8CPqy2J9DRSUuoI2lUdWn29VLjJlW
	 mOteIsvf7jtZQkgDh74d8OhaGliYdj7LzRVHMrAiAXvNCrXc3eGDbFvJhn/z0XB7Hk
	 fDHjeCtOaJeS3BeLrZiek+DEa8eRiA3tFtRuCWV7pTSZ8cJSoDzS5HArWVRqNOu0+9
	 5OqDk09184E3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB74C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349556275.31941.3079509310515458199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f37470993637131a59a69ad15261289480ccea26a5819e14025b29d6e9ea0e
Date: Fri, 19 Apr 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713495562
