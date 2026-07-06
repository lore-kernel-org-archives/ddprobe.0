Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD113AFB0C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783321115; cv=none; b=Iop5LNSWniwJEbRbTllTUU4CgEQJbtOPhM8z6qClSqF4YsOVMgre3z+NQrQsi1c3u066bSOLe9QCLrpKtzcaUH7v/Rb/cKOD7uluMa6PjZ48IfofnquegWTsNaUdLpjicdBxjs5KSSD0Bgkd8xy6cKcjKVfDkeh370lEBiC0YHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783321115; c=relaxed/simple;
	bh=ArWcF41iHVONRmFbFEfszXk4e2Ky2Bg6WOsuzA4VUVY=;
	h=To:Subject:From:Message-Id:Date; b=X+Z77yaSUvjZ7pqk/fCgcN0WvOVkcfCpDz733ZHlFGlvGFJgMCo4e977EyYbUiwbgTUxYxOq2SDC6mnr7BPn62YCMEs6MCbm6SjLM5SalV3CR5AWUGWDscSIt9w2KJ3+UyrKf3Iv66OsVqechMeS9O2pwWMvRBsx8dTZc0wJgBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrQF/8fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrQF/8fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA82BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783321113;
	bh=ArWcF41iHVONRmFbFEfszXk4e2Ky2Bg6WOsuzA4VUVY=;
	h=To:Subject:From:Date:From;
	b=HrQF/8fWX0+bu2IB1qJaKKYJFXQ5S13V+5JIp3UghValgDO/j06Vr/Ds6Ue0tUiC9
	 87tgWAk077P107wESLKA3lmoOEneQUP2PsGd7cgzPzpFV6LASTE0BQEq7pxAcGoq68
	 sVzIjcqClfPatiA5VoGZpE5FX4twgxTnpVSxD02PA4jBpmC907Ne4HilFh2dD/9Rie
	 TWOLJkzDkf3utKl0tZEVWp47/+Mrs2K48Gx3d8NhF1DtZ+PvyWOn8DU/V2fDc2c/8U
	 T4mzcHuhjH4xp1xWnHkbQaZDxvDWqeF/UqaI30gXnebk6dVAiXiN7vhYX93ohHjad/
	 ZxrldpU2ihu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332111368.3426.7315917212724050979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccebdbaf620be433b39f64074b8e06e33eea389a9e2eec8ce7115d275fa428d6
Date: Mon, 06 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783321113
