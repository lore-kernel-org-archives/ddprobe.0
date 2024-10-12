Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB0C2B9A9
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728731754; cv=none; b=a+H0C5yEFbR+dczI6lMTtwwjdt/hJ32WQY/qre1KCFLSEASqZD8CB446pvmQZnXfik2BOpO9DazsXDoOXYf4tUxsOIj5ehXEn8/jSP0gl4YBmZgc/0qKyqLOvK020W4vGq/hRj1IDxUOrLzoFxvisQOXmcVf+K/GhbGTODeK9D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728731754; c=relaxed/simple;
	bh=tjlzoS8bORcF/zt0yaVkzCnOwokn7ShNZVns3ndJHRY=;
	h=To:Subject:From:Message-Id:Date; b=ppqpyxU3nz+Ayi32kINFOOHearVLKpXmFkuOteTJaChxLEyuv72PMVjnQSv5AA+igqF65B3lQGRv6kfYobyeda/LJ93HMR7ffQEcqkYnrRRk73TR6xLpY9BdAnEreoyOyyXEe7qCV6NYL1LJwjmj8emRv8mldQY3xBhXw154iIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx8xLHfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx8xLHfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF6DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728731753;
	bh=tjlzoS8bORcF/zt0yaVkzCnOwokn7ShNZVns3ndJHRY=;
	h=To:Subject:From:Date:From;
	b=qx8xLHfD0XvqO1qVoJHGO5Ag/apzEe1wob0+NrNiMRbvCLcUg3kJwOhd8WTywUy6t
	 xRey4VBADQQtB7s4GeYCuWRarkYyCVkaHSTFmI0elDkn2Dbbcl4ZhQw9bMbM6gzK3R
	 fp2oMBsZr7kxpaFSa4gRiGbRkDmoyIS/wNzH+SpwEKoVVqkVjCq+10FIqhbQJID/fD
	 2fIw4NDjlgEUsTStuNzwHZCFbdrpYFuQvKG/6OeDajAkcHI+yTGiKa2q9/aRGWEd8N
	 /OpE2ZUL5J32wpAGxC8xKVSGuKRTRaBTtqpQ7AqZ+j4BeSZTDIQPE5LJajK7d8oUCq
	 xE5B7sqvOaAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DFCF2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873175361.17608.7293701617517092542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bf15b903f7dbc00eb25a6c78e06996077ec1f9d0090b045adad7d8efcbf925
Date: Sat, 12 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728731753
