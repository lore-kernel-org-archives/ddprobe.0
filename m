Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71231125D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719131543; cv=none; b=g2oBf8y22WXltJmpSB57ZUjD4mlgPMFxbkOb4dSBx8hWGRmBrVYnPnijLQM4tOG+Q2qWJp8SmuDKq7UxpzF06vfY/tJwLNaxpUV+aXFMJ/wvJ65bEfWgaMD6WTvf2TOe1DMTBhrFV5gP3/weG2jNTxE09yqqSNu+K6A+5j8etuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719131543; c=relaxed/simple;
	bh=imbBACvAdrtn9Y28IWrJXeaTnL3NB6M/R78S3lije38=;
	h=To:Subject:From:Message-Id:Date; b=eMfqaY7DRnnWSGhj7PTeA4/3X+dpVhEYvOQ+Xp/I50ZU0g+0P652o85lvxItuJHg9Su6XCm8wfVestq+PG5Pge3moVVZkbNImP7H5mXPJXhdJqSHF9XSPcBSx+S2Znmn7V4LW4H65HaQ6AJuXRZe+KxXhybeawFeXDTUsccUklg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rom5/fiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rom5/fiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B18C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719131542;
	bh=imbBACvAdrtn9Y28IWrJXeaTnL3NB6M/R78S3lije38=;
	h=To:Subject:From:Date:From;
	b=Rom5/fiQ7+zCFvqhjZtPW45AKTTtEPte+b0r8rDcidK2vbOvHiXHAa8DLmBOB5fvi
	 JurBZRnLcHohb3nSYvukfkTa+P/mhk4j7WX9n4sGhtvT0adSgMZ8rqP7+J0+BvZOwV
	 TLjweE1P6R0Q8j6z4pQ9cdVA7/nJ2z4WkpaftAN+g806vz64wQ1vBpSKCtc+tFnBgE
	 3Tf7gTSIDb+es5eM3aBWnc9EsVkrmcHR9+WPIfHZKcFDkR2G2UN3lETRGg2tihHVwd
	 wB6eBbvIbxAYCL28uiTXwBNZvm+BR+GyxPsxwwM0CUf8Xvz7d9MlfM/BZ3Br4VJ27z
	 ERanLb3+jubsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CC4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913154278.2353.11744825802786012466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bc2cc944613e8bebd9725b158ebbed1653a399de8eeaf1df9a1c74aab1bc5b
Date: Sun, 23 Jun 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719131542
