Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50196154425
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788708634; cv=none; b=UtiYgxECkYsgHoTInCKBn8yuGjqqbiT8Z5qvlT8g93olvLtLaXy+0FghL+27LIAunUqvvHXk3LoOtnPQFzM7w2SvrGtJfRq4UqkCJR2tDVrydUtX/CjZf0thUY8CxffkCcDoT+ODgyKvRwdktkgzWupdMhEdiqWGjUGvgdvUdaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788708634; c=relaxed/simple;
	bh=K19fWbVAqjP7+QnCUznv4jCXBV55IC2ktaneMoJVaAw=;
	h=To:Subject:From:Message-Id:Date; b=fu/LhAf7WuwuvDooSKXvNFkYjAKCQN2HlFagjbsaUEuQwBE5fALg718+4FiTDgtjVBZMb5/tVvwofCxiTU5W7/U0ZcBhZdx+IIG8nuv8tVKGilDPCsUoxhv+PsZEJgOMzwcLh8xlaC94M+RX/vNGZuGuAmm13oG1jb8kjOTw34I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7PGVdsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7PGVdsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788708633;
	bh=K19fWbVAqjP7+QnCUznv4jCXBV55IC2ktaneMoJVaAw=;
	h=To:Subject:From:Date:From;
	b=I7PGVdsAt22IMMCp2yM3XKGJ4ABy4odv8J9gUrIoOhBC7Yqy2lWjgQPlOp5M9vxlW
	 Y+Ns1auk9EAlR0sj88v2ISzlTuKlaooea8nMred9cl5HQarCBaE3a2bUId4JbxrUqL
	 0tVuyniZMAZuVZ7H0wjkS2LAqB+O7Gb016BBXmXsmDMgXiyTVmx/CCWh7MDbohdEoO
	 AKHRdRtiCFy1e7oTmVtNlxy/DkDO6jwkm6xoJIJv02gJMFmrEwrxxCH3bITmGRt0UT
	 CEeLt49UfphQMOJZN2CU8AumKL302SM+q1xb5r002+rR+w8dcqiHT5cU3bwIUcG4rL
	 eiz5SYIIjGwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B777EC79FA0
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870863374.12687.1374107642132735166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880d45e88972db54199393a71f5f94d70b754a98686923867cb37a5774f3f493
Date: Sun, 06 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788708633
