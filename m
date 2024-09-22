Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBDDA23
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727012754; cv=none; b=SigvYA1V0Ahnu3s4++uI8gsXNll1RmXZwQc4pYFqUtsS7luoWJiilW2JMCJ3CnbakyM8D/d+eFFJl//Kghd4iV0eB0RzODZE+53nJ2UdJ3FQYbP+9o0hgu58l7wkJR7lAmzjShieiCOyd33SHR5A8sx8sHDfBNOu4E59sRou25E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727012754; c=relaxed/simple;
	bh=S6ru2tvkyYRNBC81fp4uYMT4P5FDsW9BWu5Rvsmt7JQ=;
	h=To:Subject:From:Message-Id:Date; b=RWsoCi6cliQiMXzclZIT218Oi0XNzExL17tyzzwG+46zL0cF1H+D5z/y/N0uh44S8nEa9mQa2VTw7Oi89MgcQiQP2yQ07+T4l9rzauZcDi9z7TdXy03IxMuBx3cyqYhF4gII7k6GqeA9ZnWUpt5DhHqSYEkX71nCxaVXLFoOM1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgK4SnfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgK4SnfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC22EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727012753;
	bh=S6ru2tvkyYRNBC81fp4uYMT4P5FDsW9BWu5Rvsmt7JQ=;
	h=To:Subject:From:Date:From;
	b=CgK4SnfBW6+i64EYM8TRg8VnTynNtJiNzzyg2nxdLBnKustl0aPAurnrVst7nfqY6
	 RFM65wPt4pqYEuCRwhM64001DYopZXz4UHKkjHlTfYRw0aJ8IapkEVp3iZ5jIOpB6J
	 H6RTyuZYzr13sprF6yaDbFme5HfSFlwYDQSHUuCvTD9jq3U6LhyWJJCvdC+w6+xkNj
	 4WR3/PImObCSH7dxYo0ugPcB9I06Ak8Ph88TGJMeYrSQebP16k03QsZD9ndvs/lCWa
	 KPokkDcl68nfzNo/r6/xN89v+UKTg30B3rZ6fDiyboTZyQOFnPCL2NmRlN6AhRWQgt
	 ruwR3Sq36H2ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8369CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701275360.4895.9180502405366731635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151bb1b7292581cf133098223dc0e3cce791668050996ad6923c693259f65bfa
Date: Sun, 22 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727012753
