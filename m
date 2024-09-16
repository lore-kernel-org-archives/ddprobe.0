Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441E22F5B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726460154; cv=none; b=FeKLDYuME0lTf3JdEvW5RdNJEaRELXdP/ydxkX+tdv8eT1PgjnypT6oilSqzN1PrlUsNe2k3M/FRU+ZnvwEO75zGCaqWo0b1zmRTWVtxFM2+vIgbiUXHMKWfGy5lzdEPqdxXwmQDR5zG1i6+KzPvrz1va0NRk6foOhW3FupeDmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726460154; c=relaxed/simple;
	bh=cwWKR6dIx1I8Ae7WmSRKlxKvV60kC8nC0A+3Ns4AQE8=;
	h=To:Subject:From:Message-Id:Date; b=nLI4HnnH2j3OS7W7Gb50wjeQsTRugSMs+CPIpU+GE18/muC7n3vo8c+G+zKXzI1TYypwd4u7oYtQmZYG2tgnJ9vEocoXqbSPHVc+m0A7/B7oC/+6aVhvCLn8/5s5zS66/K+IL/x+x/xM9Zq13711XPgkeXDSLYlnNA0PZ25v/OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLMQKRek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLMQKRek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF81DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726460153;
	bh=cwWKR6dIx1I8Ae7WmSRKlxKvV60kC8nC0A+3Ns4AQE8=;
	h=To:Subject:From:Date:From;
	b=bLMQKRekSsg9TonwpVOnKLB0cWO+gD0RLWD4UEecDlNU5nALTyJYudPPudKzJ8G8p
	 KOIPJ3SKDo+X96oWJOVhSLzZyUkn7VIH9sy48DCy3IZY/Wr+mWw7u9zgXG2QR1xQNB
	 YOjmCnZTr9T9+2mokas8iXlAlrlZfHjO2cSNhthXewjZFFgqB3AFTs+uP6EoeWgpAS
	 YUQgFz63uFkA03vlml8QsfWmNmeMQmtjGcbyM26Tc0yrwYDmxxNuh1p37NuN3cTvGV
	 XFbw63e0Z9E7Lij0SturJWxlc3+tf0MISPhNnEOj6/oGUo/MHnSYq5nZXDGxOAdmN5
	 IkMZCUgj8n0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF35C3ABCE
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172646015363.23448.13031654926615538845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d32ddb06885a9d739c0b91bb6fab5434b94ffc3a994c7732bc6eb03ff36246
Date: Mon, 16 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726460153
