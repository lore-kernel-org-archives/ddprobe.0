Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85936C582
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791186634; cv=none; b=jpWGqruan5zTXeicttV7YZehStZNWsAv99UWGzzS1i2h0FkWBwZjMqUF8c7c1MZN0VDvmCD2+RUNUjLqv8Kq76VaEMGuMizyY8WfTLnaQLXtT1Ev/Ci5Cuty+MJgfsgYA/zIVk/n4HalU8JzSFMkr54bJFAfEXTIhnBI59sSDWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791186634; c=relaxed/simple;
	bh=v2pgvanx2ds0Izms4H0hPIW7cY9PhKbq6qcirzYbg8U=;
	h=To:Subject:From:Message-Id:Date; b=ipjiCSqySxBYfUqB9EzrX8xw6u+P35Ght5Rd7TWu81VfRHAi+zaSMDC6I+EHWOM5HQ7UnlSp6AZVSPHUdWYB6Ig4mOul6HX2dAdotR69+kAlO2uJGDdOJ53xqchx6N1G58T+Nqn65gmJjf4qZL1p2XDMKZsxLnDa7s0R07R+KVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6UM4gKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6UM4gKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A67C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791186633;
	bh=v2pgvanx2ds0Izms4H0hPIW7cY9PhKbq6qcirzYbg8U=;
	h=To:Subject:From:Date:From;
	b=g6UM4gKACdP+2Mqzi7cJ42HckKVnhZwZaKNF57/6/FF+Ozf07SiidmJGgY3Wicuxz
	 3jttSFvM3VLCqbyG0lvnZtg+jXPB7r5A+vQEm0OA0g8Pvb4Ch/XYe6bIfxKgsCS0u1
	 bSG56ia1mkkY6XlMUeB7TuoYol6HktoKYopr1cas+fz6pbo7DY5BP0aOqzeeUBlwkV
	 aPw0XqjNNaAcYFYkveATGF1qMBrzRni5Q8bCZd/3LyngL9UviIBjSPApuMwnGEKzMN
	 8pzFP0XSV5Izzg8yMQJGHBSv3j8SA4ozJ8KLfVBaefiqK54pV6G12S6x70FDvFKbTX
	 s7bCdJD4Hu+dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18FCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118663368.1112.9599542274776939493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eda013b3d585a0728a9cb1ae9952b40717c4404d302fe9d513b1528f46fd58f
Date: Mon, 05 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791186633
