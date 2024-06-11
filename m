Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE424C81
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718067503; cv=none; b=L7jC0zfjsqUJX6h3Pm0DCdleGRuji2Yasnom+75sKEWNmkuCq2nEgu0sqmWOJwSfd+eakYcHPojUOFAMXj1inCbCi2pJ8jKlk6Zpzz/IZZOmojNkNg8EAqxyyZb+TALXxyG3hAuYfozAnj2/HjPzu18y/0SGf63yHVj/OqRaiuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718067503; c=relaxed/simple;
	bh=IuRjZiCOO+Ad6PyNYlH/WusdH+XWX8OWQF5RFyiGL1M=;
	h=To:Subject:From:Message-Id:Date; b=nXMcXVFbK7WOFJ5wsf8rfM0W5uOcmSyRPUwgWJupjBZnnIXRSOoyjQV0pz92wiQezp+A36FxJ+FtLqkQRTlie+H78yR0RG1cliZGx9L0V1P9i6xHM5OG2dXAIOhKeUsOtvPWUPh67dtox3PePUxX67e4Aw7Zr2RZl7MFllJ64X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrjQeRAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrjQeRAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B23C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718067502;
	bh=IuRjZiCOO+Ad6PyNYlH/WusdH+XWX8OWQF5RFyiGL1M=;
	h=To:Subject:From:Date:From;
	b=VrjQeRAsvrjKIkIpie+quAyeQUFdwk/YNN7Ng6BckxRPz+pu0oHirvm2NjQBF/eAR
	 DvkcNLCJbbdtHwAtqoVQzA/ccAWhDOjLZuNDDX9H9Wb/Xn7OAKycgOYaIUUPusZO44
	 FoylIUGbOL/sEcYzZvQ6NbaFujvzAowB23l5efLlKXFB3w9O/DG8rjP1qBWfIERCsj
	 IS4evfIaVoeY8qGV6RfvHbbPj2I8WmNQh/cZfhDMz626wE/3GM/vp4jyTLq5Sg/ceJ
	 OudrOtCQaB1F2c4f267K7bkUM8y3DI4MpBF89V/UZhlSOg/HZVfJXwg08uHlIoatBC
	 zQh3upZs0jHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1E9C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806750275.4744.16467098960259629165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e415eec64bc0f48232d9b57e8abd5a2ff61b94ef38f94c5434efbb94d732a49
Date: Tue, 11 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718067502
