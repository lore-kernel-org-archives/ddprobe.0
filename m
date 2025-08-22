Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BCC280A29
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755838194; cv=none; b=OBYcNhlVjt2lFKnaazqDWvueclR0Z2HwMyttKZMdxivX0l1KpKqkDczh28eZfqympS/3C0L2Pg3tRgtgqmjw39v2jMf0Bh8Xoty/8J6sVqt31mEeiifstut6t9kDyIIv0FXdaBeuh3l1/hXrbv8Lm6gxNemvVVMmZEqu9oBX15U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755838194; c=relaxed/simple;
	bh=bG1J6HkVZw4YX0lhSG8FZ7XeYaydfNxRw8xD/PBAyJo=;
	h=To:Subject:From:Message-Id:Date; b=eO9DHeVkXiXzTT6FFpDIx2D6O1SqQP3TfGOHIpQQAwGkUaJNhekBUxU/nizMUrkxXIc/rAarZQYnyAHEneikEHY+EfEroy+P4WJdKEu8u62tQww/KCt7ClwcDrQwWqwkzzP3rGKTy+GTP+ucNtGeay/V9Xm8utm45GHpsFcDQXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lspfeqVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lspfeqVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755838193;
	bh=bG1J6HkVZw4YX0lhSG8FZ7XeYaydfNxRw8xD/PBAyJo=;
	h=To:Subject:From:Date:From;
	b=lspfeqVwXBFo7oiq3fZ7P6dP16L5PSO1H7pN5SSNUZrm6kg+ZUivVw9aSDfdeKOcq
	 RTLild2xQEWQhfmtupOHB6AA5TSKhEWRlucFaelTLkX+dDwFBBB3P9DTW4e0FVJWWc
	 yOGTeRUuYNmk0cmny3aFXEsF3m+kmzaDfupLi6MBX9Vyrqhg7i+wbs0X2JFYlcu7jl
	 xnphg+ZEebXSJwC0clyIeI4kpY99tuRwf0tESk1kbzMUu9l+FiXK8U0QgDsstBdeK5
	 yk3teErbEJomBaVE4+gPo2SUwl0auy9gBWvjQRNGGAWN1o7aCTuvUuZ+n5q8BmZq4m
	 gF0QM6D+zVYQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC5CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583819357.12340.10065098501033229058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2818bc5a9416fe31db8486c556e8ab3fd965d73cdf218592465477a8f7b87ea6
Date: Fri, 22 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755838193
