Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2AA2A8C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750396194; cv=none; b=DzWif71sweGs97hWBhqzkfh2G6K5/MiSv1p2j9xX48R05vepe+iuqml+KbIpTXRQPM6G7AaUkhVE6pbj+u7rHGB8UAKGvcoXAEIhJvfu065hBFqwfQOJUa7NTu+JgAq9CnZ0msynAaEvAGlFU968GAnrur/sTz3+AxoI9mWofcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750396194; c=relaxed/simple;
	bh=+wOUFKKJZm9Z37yKaIQAcJetYGT2xqif6bPi7qwW2nc=;
	h=To:Subject:From:Message-Id:Date; b=VKVIujQZ1Mvp3os4UtiIEr8lzBJIqbNLxeCj8XC9ds7SZ8UUC1I7MW8gfpJowUnAUySYI/WPHSQ2pphwrr01MvD6Iu0DkJZ2cFrIoaIzrOfEc5Yoa0HCL5CTKCFCk25fTmABtOZmSEA5fQOxOqq+wXkOELxYLp13IXN8OqQJxbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw4ZI1mR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw4ZI1mR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750396193;
	bh=+wOUFKKJZm9Z37yKaIQAcJetYGT2xqif6bPi7qwW2nc=;
	h=To:Subject:From:Date:From;
	b=lw4ZI1mRQTyiJfmczvWQZRk4qIjyFMt52RAxBwY3a0bL+P4rrBl/pgEoS/v3PiBbO
	 iwP/l9yiXXsHecCtNAKbv7AAykobNQJvhwEr4jTd7FU6NeemcS7qcPeTzbgP8PmMd2
	 De2f8QtpHuYa+cnjq2BTbup+kJRlfubKFMmb5lY1JY/41/fVpNv/uutJ+CcjMiG3gz
	 888h1JKeMUML9yL0lFNeKohfu65ovF13yyFL/1V66VEreTrQlTZIdlwXzBzl5V+qw1
	 /Pve6T7c8oBkNMLMwQ7w042M1jAOxFU2YzCtwn1eRXvFCrVaUCydo3ugzTThB8EHXR
	 Bqluno72L6oXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF10C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039619357.21471.127647782418908217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffdf3248d8292a3f14fd51405361a54035f917b00fcf8963a8b6c946f4651b5
Date: Fri, 20 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750396193
