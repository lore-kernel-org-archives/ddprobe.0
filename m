Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF53345CA5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142634; cv=none; b=F9KrgGB+k9ZA5/Iv2dPOnUC8zOVEAYEWkwF0qM93XOiEIvUEoxIRLoCr5ioraeek4J6vUvQSnmGrWlwff4jWXCsGuTDzGgMTvr9+k25az0We5YK6M6fjlYZj9iDa4qOVoVaNeN3+mZFejTkQ41NmZzLKOSQhPjHXI//vMKttcGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142634; c=relaxed/simple;
	bh=ZKLpn/f0i8tWpklQTPlNOXz55sHDLU++QoWccyqiSYk=;
	h=To:Subject:From:Message-Id:Date; b=ZJRxhkD71SNJySEAuDoeXZvHl16I6HLym4emcCrdQBgvDCvybZsItRs3podI3htGJxcMlkK/wTTq24w9R3bXJFQDHCI4zh1INM9qa4Os8YlTxfMqLiiBJxIGTS0h8ndjgAV8LHrWvA4GzvzjagiGZ+yZaai7jJ2yzH25IzlmSyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHzZ3KPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHzZ3KPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E224C19423
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768142633;
	bh=ZKLpn/f0i8tWpklQTPlNOXz55sHDLU++QoWccyqiSYk=;
	h=To:Subject:From:Date:From;
	b=aHzZ3KPm8EZbw1k2brd6R4CHaFMpQZe7USLkTVQTz0Dwawt9wG4D04kkGjBz7aREg
	 x+DXUr9lrafcP17Ho97/9iVIQWIWGlu4wEQwljA6VY3ljbtYC+dSMkLc7R8iRMF0ya
	 LLZZo+cYDzRske+XW+Quck10Mpqb6gyidrCEV2S/tSPX3Rvx2uGVw0ki8uOcCJCUij
	 qGP+QY9OVciuJayJZwKtY7bbwfFKKD7If99Q2pIV3ZW0tdvrUpglUtW9+CCiH8oOVN
	 gmzNW+l/lcvd1xDWAlLXa3QgAbKIpR+wrExhMZ+bV2TrtruPHY6oliYorRuqawvkSu
	 d3BUOLHik6SIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90117D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814263358.17605.4754134133808668863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72f543b0d2d6c77b3530af0dde72be11564fed6dc59df76e09408f7bbdccc94
Date: Sun, 11 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768142633
