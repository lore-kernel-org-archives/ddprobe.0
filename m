Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375B4374F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724088954; cv=none; b=ua0PiR0sfKqo7Bwt8+gjyETk/CFICgC+ZyAV4DGagAfikdf9AVUnF0Q9/Q8RmWUkrPibMNLZ6uHTJtekXdxx6rWvRHW99Zom98Kz9iw5x8gZP/2j5WTCxARSsThJs28IAIOOGiBIZhe69zz3Qf/Knggx2Aqe34WqyAa69OEc4aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724088954; c=relaxed/simple;
	bh=zEoVWTgh/IC3zwfec7IB3L8qQfAuBo0oIivpThub7PE=;
	h=To:Subject:From:Message-Id:Date; b=lLls9ZhpiafE9Z81B0tzHOdXCnuNlJa6dhx6Peh8ASJDjJsKQd8pO8MNYMdlzJBMMh9hQ5h8+FpTU0T1xQaM0OI7agZ3H/rqVP7Tmx8k66KC08E57sI/B2CD1llGkRfSAWB5q8voAQ0H6nK+CqYHSiCFN+3Z9xH0MSYpprSQYOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkxMSVKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkxMSVKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C79C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724088953;
	bh=zEoVWTgh/IC3zwfec7IB3L8qQfAuBo0oIivpThub7PE=;
	h=To:Subject:From:Date:From;
	b=qkxMSVKKMjhui4WyrovqPWxWWQaQA90sj89RLvdWMG3Ra94zJCh5HbvY3rj+Nk2Gp
	 as4/SSHm9KRnnSEf6tKuPYE5EcKrcqao1hj8tvK3EvsFLZ8C6FrdH5UDrqz2lDSmSp
	 qp46KvrxsrAWcBrDogUEVDQ1GXZPOeSDqOpOrOTRg2uQqGIgdBa9XQHtV+s3H1FBKW
	 0UTYiI/itbS2zWXTq+qlPCsx26Boybltg+wgC8opfW3+jXIaCNXnb+d+4XzIrLbwo8
	 YVUHdlXNxaysL6X//R2Vk278md7YWnVNRGwpeuQvFbzYor3NCmYUO0XeE20j0QwAp9
	 uCmWB64g2yK2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1ACDC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408895365.17368.4762100491649847162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca2e6b106da83e981de581e11d819c098eca841b981035cea867bffc0bdd451
Date: Mon, 19 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724088953
