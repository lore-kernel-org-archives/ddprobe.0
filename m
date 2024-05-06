Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B6315666F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715012543; cv=none; b=YqbbX9BQZubjexWGWnuZOl0nBKQxSds1zH7yWm1i7D7sKjCoXsIokeMwGlydqE491k82+7W4++iIgLF0bawLoQnk3DaCKjaqB2+buHcmZngECZ5X/H3wkaFscalFdRMGKDOllp47UL20PGB4KL5mUM12DPuQ9pz1S43iVS63lZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715012543; c=relaxed/simple;
	bh=EwDdvHXxA+peJ2ybnN0dmJauhpqzO6/mQNw5lchd/Gg=;
	h=To:Subject:From:Message-Id:Date; b=YOyRSCXWvzysTQ1gRE3vyHnRjYc7KzviQDIYoBPWmepwo4nt+E9Y2jkBU4TGbyp9eac7p2vhvwmGvky09ylQrfzZ3dFP8Wi+KYJmgHwaa8JJCXGDsTfEEXTYfN2VZEbBXfFHWMlbeHWEPJqnCmMgbxkjmhmbzbGWSFLl+bD7NRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+or3EAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+or3EAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF60C4AF65
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715012542;
	bh=EwDdvHXxA+peJ2ybnN0dmJauhpqzO6/mQNw5lchd/Gg=;
	h=To:Subject:From:Date:From;
	b=q+or3EAjcyZhkzs6W0pIsoAHzGciyDXFYQmufWVPDG4Fd4qYRTcM9DTgsittif/zT
	 GyRaYiqRRLme85dD1RUbZzoXww+qCnSmklxwK/zVMojmFNo3+H+zK+cBGmz7JFBhiX
	 neGj4enxaYRkjVNRDg78cvz+t2zSm5GJWE+ULz7RmEQFY7oREYIE0f5A/auHAyQnhR
	 B72NQExiLGCwxMZ84Ieik0hqzKtJTS8b8FuZxk0IhZeb4nadBcE6Iww2OZ4sgiilAk
	 wI5j3mEa+bEKJt3UwSUf5QK0ulBjO/E/s37sbbGH+rzwigOlH5SSzNV4nR2vPmc2bY
	 R1L3nSVAsBFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3D1C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501254275.23021.7322211392921675022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c490f7657987dcc92098f8015225627bd925a6808e3e5c6c6dd73d34bce1f0
Date: Mon, 06 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715012542
