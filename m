Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B6B28F1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728549354; cv=none; b=a+3EQyqO8MlwMKoCefMpt+2hVrSVZSj7dHrv3nCrbmU9T54z649IwzxufBsjoVwzknDvzHEg99m4jknbQlQ3eBzBi2/VylSePwJg5+Zfi8y7QrmbluVsHWnSwuKxFu0Mjwo06/34nP9fJwjcuVYFAWtmSY76PTPAKZw6zOp2UUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728549354; c=relaxed/simple;
	bh=AUqviy0HmZVKKuYoDWkyXiaRK9tGx51yI1fr+2B4nxU=;
	h=To:Subject:From:Message-Id:Date; b=Z7/zR/Qq0uTePUqSqKMAO+kabJNQsFB4UjJoCXjx+VQKKgYWvKw+fmgEZRpdmmSm4hcMwZVE9ORuGMwUSfc4S93pE4C1GNjkgUgKZpwf/HmBYYdAg2XVRbwGGVhQMyHIaBs77RfgUeeWlSMXm1aiw/zotiFebOqZvBHBM+ycNb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddJQiySH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddJQiySH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036AC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728549353;
	bh=AUqviy0HmZVKKuYoDWkyXiaRK9tGx51yI1fr+2B4nxU=;
	h=To:Subject:From:Date:From;
	b=ddJQiySHlUJs/m+Rl2RfEwGqURMaiMCKY5iQXJBn1BjdtJkxWe/JqHzz2altqoGzw
	 ft1GqeTqGy6n6oYMmAwwJwTD8Pc+eWZXMDrFBha7b5yyBDSSo8EhWYUtZrI64vgKzu
	 qNC913O8mih/MKXgtU3ZPczI5rrY/s0YMZAWFQxp223fQK4S0HBd7F2S+ZYKWRQ5WJ
	 kRiS8XHgvem42qze1NHXkMNjdtd2EHi37Ax7I4GnyAJW2Cw5RYRXWe7DDeKABiQLUM
	 Ukf3lQsFbYZ8LbKTF7UzcJKrmhzM31SfVo7qspHjEKnWAwBp+KHE5GFs1V5lzPOVBO
	 UhJcYeQa6a0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164ECF07C4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172854935358.7803.9532984803455997256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05eaab4305c959d2d5f483dc72d9ae692dd51caafba75a38d2283c0251a9a4f3
Date: Thu, 10 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728549353
