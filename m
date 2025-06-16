Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2754F205AB6
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750115394; cv=none; b=My9u0iO2Lq3E6cJq0rU62dU+mnGbwwHluXq1WqhAnGvOYSFiaYOYFZ51EGtEshjoHthwO9ClsutKPVpwtECL+nTMcONNY0QY8Bq1gAY4j/TVsMRwkK+PWwjh0UitaIhN5IJpAFS1E/cwf7GTMITxAenXa+u6sqUbuIvE+WdeoT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750115394; c=relaxed/simple;
	bh=aIKVt8ajmxwpFpR+8JKne522azc87H7CL92wslMlstU=;
	h=To:Subject:From:Message-Id:Date; b=A/Q1hyLQldu7v2cYX3T9hG6Dmi8OTTNwpKSJwmsqujKQ4Pt91Bj3Ts/4u1SSzXAYxtyW+CmBSaeWnNFouBj9ACM2Q62fI3sgdGa4K2Tn1VTi2nwBV74bCTR1HPN6Nki9rcoqcCcJTeyceBTDx3wkeaM6+yyK3FMr/4k0PS5RVcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJNS3ubt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJNS3ubt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08E2C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750115393;
	bh=aIKVt8ajmxwpFpR+8JKne522azc87H7CL92wslMlstU=;
	h=To:Subject:From:Date:From;
	b=EJNS3ubtXYuSqaVn8yDYDH687HPk77qBYrVfkDRjumlEshkrOnGfIp1qFx4/V1liV
	 vUaydBDr6JDcsss7mulMnzmyPzDN/u04BraZZaDVdByvUxKeCjI8a1eGKz185s1Wad
	 dLP9vCVMMOr+xGu2c+7ULf9tQUZrRAaiMRFCoL1db/8xz2/3asUhvLdCNDi/JakdTm
	 vOb6J1h4F3vRlt/1in4xUe2E/m/Oz4mCoDMuFTuZQ46/4wa5ox+O7tsnNz89IKmunl
	 r729tuT6bJmhr+cJohAr0SO7j9xbdqK4IwBlcBYHyPsnXxSbAnCvG+uaeLMlixxkOe
	 7H5Evc9dna8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D05C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011539359.5180.12968991562397212387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb76e4b0eb2265f617674f72e3c178214319f53b26cb50506edcf4163981c1f3
Date: Mon, 16 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750115393
