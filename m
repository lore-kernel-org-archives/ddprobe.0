Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CCF13CF99
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714132343; cv=none; b=TsNuWAVaWctQBxidusoN+UHp82A4wE7XQot+gTzlGXjLZ0MhRz1+MX57I1c7n68RKHHPLu6aYjqFrRGsT8x136PRu6HttmwHjGunAsUe+AZQSb+38mDxVgDXUApgKw6M4Pe+LV3FM2rmIUIod15qveZP/34Wcxytpfbwr3G6YXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714132343; c=relaxed/simple;
	bh=+mTNU5B3huGzvN2sgBOY53XjxcIpAnRe5Msfre0ah2g=;
	h=To:Subject:From:Message-Id:Date; b=DZNksGVtSBjM4zupUtRzA/jO6dyT3DIVruP/IySpLHNqGwXGCkEiQmL6tufxadY+JVvyncDZg1HWLxbg9+HmOIRDMioVt6XOAHYin39y9CePKlJQeAAhZCK7SKGa9WF4HMVYD8EF70PwMFHdcHmk0OWU2/8IGyjjeWX3m7imXYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJRNDmVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJRNDmVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB11C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714132342;
	bh=+mTNU5B3huGzvN2sgBOY53XjxcIpAnRe5Msfre0ah2g=;
	h=To:Subject:From:Date:From;
	b=ZJRNDmVf+lkr3w8Bwh/O5EzNKdD2wJYahkTOi8curR+0iW/4ptGfq9lKLYgIgaCzh
	 ed4UZMV7+ehZMEC5UG9a+0ymX5+9E5F3AVZpG/T4DewPPMLwP1kKTphOdoY5Wr2K2O
	 mZgaCGxaR2mnx0wtvZ4Z6MbqPGE4ijRV+qoJgKPS8l/rBVMqXiONlfBw0T/LiIBvHf
	 5RC8WBr/8H5rZhTmjwfJLOftVbKzznS9k1RMsrqANK0C8DkG//Qcfp8rW1qv7xkis8
	 v368q5DomMqM548/r6PzS/7WP+F8e1/QB0ijYsni0BA/vbg0bxhSaRVnaLFvgbqtsD
	 Yylj4byD2TASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C375BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413234278.20666.1173215816872041234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5a51e0141aa40ef8a647399bc945f59e99aca2d3e08b60ddb10694b0045886
Date: Fri, 26 Apr 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714132342
