Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863229BDA5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764717174; cv=none; b=DX5JuHwh9Z+kPWBXMINw0hC2/L1MPfnxWBF7yqqbNL/pSaXxhnhkxHSuPWwzUuw8RmoFtlYeHhqqqn84puO7nCOXQjSAlCnICmP5x3dyny/QnxKZkruEqZbCSvudFr15UDq9WCtzOLPNMcbAlfDnlaV+43y5fn+D5S3BNkmqLUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764717174; c=relaxed/simple;
	bh=UWPXf93aQbkpU0BZjWu2mVyogljVK/o5EVe4lF7kJfo=;
	h=To:Subject:From:Message-Id:Date; b=amDs3Z2xUBg2Rs6ZCnCA9KByfZBSULqhMNku08ZnKi8pVsAfKjzMr7JlKStbOPxappVIrQawrw3ToAmhg+NQ/hDx4xNaRNoxL2YM5gcHq4qrpAIERS7U2e84BHQXrqMeOTGEOwjGJsD3/tMGv9wrjG86xa4LBKyAxh99UYDW7m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB2ofaE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB2ofaE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF922C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764717173;
	bh=UWPXf93aQbkpU0BZjWu2mVyogljVK/o5EVe4lF7kJfo=;
	h=To:Subject:From:Date:From;
	b=HB2ofaE+OCBPuszlw592ObuDE8n4EVkQGyYPbbsHOoDB3djf9m178w6CZzhuyUSVJ
	 bg7YG5WS4tJRX/wYMya+jODyRWIBGjNdHa6l6CpRz29XQuzlRVmxtoGHpKqZBkHGgz
	 3a5gbvzL7IL7FfbSQcPgBIl26YBQUqVMviTqzzkqI91oAGTo4tQHP7nNCEAhz+MKR/
	 Zb1DZqFwSqfv6aDG3loVw3cJpE8Wt85fB9C9b/8JJSIgWUtIO6g7+tMcAfVRLYXePy
	 nTaHwjS3VI4Aon+W3NbUuyKWo5xxT1JJs7j4jxy2RNviNKa0SmbLreXgBXs/j4vw9L
	 O6SNK7u32zQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0ACD1267F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471717363.21257.1941482830597148814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8535ba2194ca76dbb0c5ec1269b8f1e0431256f20eedbb55f3e32c4b9564ebf5
Date: Tue, 02 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764717173
