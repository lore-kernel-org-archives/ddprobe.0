Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5024735972
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743238794; cv=none; b=hIAZI/ZjD5e+w0RB+2J9keYPs+s+E6klV5TT64GsQ6S+9lVkmoBCufKmRr8AzKESkRAVUTfVkWiFKrlUxckEPkCDtEl3ytZdYUO+0NcX3EWK2kBkDO9kUanufncJMrgpJSDJ9PAfJZ02IW7MrIf/j3+4nezIeOnUjtv19tncQkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743238794; c=relaxed/simple;
	bh=tARvJWOfCRyQRZwM5lkk/dfm3NOYTTzuHMEXPjzUi64=;
	h=To:Subject:From:Message-Id:Date; b=KexHfVgwkj3BZ9IcmtXrKx6fd3HLTxtZrPf0ZakSo2f9Et0+mDTTzAaq6y3HANtKP4Kp2YRe0+e3qk0bijcRuN9SNQTgAIMxflEdG7p+sw6ixbC+bQXdzAzY8brxz+X8q/Z3S5HXpeHd64Qn+irVyXhVE91cnpP/hF+y4+8h1os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHo9X7JW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHo9X7JW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE063C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743238793;
	bh=tARvJWOfCRyQRZwM5lkk/dfm3NOYTTzuHMEXPjzUi64=;
	h=To:Subject:From:Date:From;
	b=sHo9X7JWih7fvzjgFBeoa63a0sV5fwEe33GqjPOyQ8fASVNz01kcPUw/1f6UWYVhH
	 UtZSmDhweob3z/QcuYuvlN/k/TrQYf1NDHRlRkXiqp5EuWYuMbc4CUeljhyNC6V3Qz
	 eP4BOhNnGl19QJrujZrLoS1Z3SyDDKSvVjqGeWd7E0UImnt+fLpj3DHDflo7FuNcwu
	 Yig5yUJiBI5uO+SNYtVNBwEwqJtagQADQ0aJugiif1QvAs/TSYE+/OcU1402w5oWSA
	 b/vzH1rWkikE5yxKU0t0M0nnMhQs62jqbxNqaoZyvjS7qc3ZOGqdZfeO11jm47QrYS
	 esLPIbNxdYXOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D03C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323879361.20033.13967703926447509767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64414dd9a44c53173878678f9322b8e4ef50a671e6a0ba0c9870bf7f1ce3c142
Date: Sat, 29 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743238793
