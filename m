Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0635E199939
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762601994; cv=none; b=aojtybf7yy3QysWSynvJytaQmHJRu7doTLgpRIvqh8dspc3GFXpJA78cPt9xMZe9AQfEHi+5il0zk7tjAoslI/6lymt68b/KUgI3V+it02s+zBzMoit3SnrZXvYXXJRA2t+IT3oOkdkh8Zw20uXZJfZloox99IEuMcEh/AVdyak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762601994; c=relaxed/simple;
	bh=hQGm/IUbJ1uWQps/KcML/nZ7jtMR/ff9viCWrX431xU=;
	h=To:Subject:From:Message-Id:Date; b=cYxUPrqBHVmDwBTEC4yNSUpIyey8/7c46FgeMuU0u+dGEK4cZesUAemGHyBNN8xGxvujjXrkVjP7hVXaMboUywO1w3hFY+VvBEpoKE43TBK09tS5hyAYesuuxW3nA35S8zby954ZzCrI5H5zxRQ4v8LDdlLpgpT1xshLj1yjhBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j68YI7BM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j68YI7BM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A8C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762601993;
	bh=hQGm/IUbJ1uWQps/KcML/nZ7jtMR/ff9viCWrX431xU=;
	h=To:Subject:From:Date:From;
	b=j68YI7BMBS/hN+Sz6CTBYXlz0/qd/NQNUcOoeIIe2jS73TctVaz4dEj/mhXSQctdJ
	 jomX6wHW/UQ4v2RIME3p5BkfV5vE/HGoZpGUcd8q6e1C+U/rEnBkkfh5IIP6lsdjIP
	 j8RkyBDYGdFP75SOyWSnFMr75sJmrNLY/hT92Lg7Nn9gFAWVLWEQKWRrucZxQLnzHF
	 eeA/+GHHqhiKpOjobK11IiaWTYr6vOUq0hH4yTV9uIQeFBqaDvXl9VECrW6+Cx1IiS
	 YA3v8xVRYIcA4Pwhj/rjC9lxElBLtSVez62IWNoCuCxVVGipqEdTMJLGPjM/1pi9OT
	 pl6mKwF9JhU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC7CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260199357.22983.16525976813495839940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceac594d6713bbd8de984cdabf772514e53369c3982bd9a13d56901b85a93212
Date: Sat, 08 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762601993
