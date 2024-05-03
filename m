Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842BA17758
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714736543; cv=none; b=I7x4kg0rtNxa6Ztf7QqeRXO5HQ+dCzaWb+clMBrAIx3d0VjuxXolDNV7PSgEJXjA9/qaUzyRP99nEnTE23WKefbb3OgnFKF4fE/jgscwIklksjnrGxBAxUu1xktS5zQm1+gIbV+qtySqOcf6ulZ1EmpAeeJxQxCVk+eAjXnS8rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714736543; c=relaxed/simple;
	bh=mI0XZwvsL6r93IELGi040chCbRr6IJM5wDMKyvTVflE=;
	h=To:Subject:From:Message-Id:Date; b=UqDqiH7nvO1lWGkIwzJVnBCWj+mdzOE2b+C+QVw9ngoKAQTMFhgd24oK0GdF2UNy3VhdIcaZbvM8HKoSNSr4pij03tyeAaM179YE7JvQhCxuq7taW2FTJ6Vuw41bRXs+0Jxdurm8krwwrTh6+blqAkppJoYm9OzdlrPAinL+3zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAUI9eog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAUI9eog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03D77C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714736543;
	bh=mI0XZwvsL6r93IELGi040chCbRr6IJM5wDMKyvTVflE=;
	h=To:Subject:From:Date:From;
	b=NAUI9eog5sv0QHHhkoz2qyc64zelJM1v8WQm4O8LU8HU0hOPiDcnPkpp0EhZJt4ld
	 zpbg2MSkVniLDmQo/s2bzJHoo4Hfqd+HddVO8wvNwYvnf8y/RbT2gjfKOP/1tXRfpY
	 i4X+VT/EokWI3tq3mRJj3/2aF5q+TT7Sz630qnTpD0G7l18YFuHzWlY+zeYbrETgRS
	 TKwKSgIItFOtqOvk/04e99NTOVVli0zeuUNJT1B45cLWvoMxuFDq4RAqjom/FiYol4
	 IR36nxakhuKd+dWfiJwORAAJEXOYHuGqFPWroN/IDqv02CXcNFisfHm8NDjSI7A7MD
	 +Sg6nnHimyNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0780C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473654288.4085.14291876127162266842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8325c0f7acc9f6680e5a28f636d8698ae3b704f8b1064684fb200df522bdbae
Date: Fri, 03 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714736542
