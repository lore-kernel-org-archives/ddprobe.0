Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05924611EE
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775060734; cv=none; b=E5t3u4olUWSY+ivG8wv7aSNQU3gOIhypVQjV3t3rBB2FUuUnEEva1MgZhL7Ru4bf558QUKkb0MqOK9FR4+jh5mB0LLqcPcjlFHsow8U4uy3a6tkG36E+Zp6DNs+CVrKADdytGZy2UmtnHh2l11RkZwZtA0bQmExzTu/+sz4WgRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775060734; c=relaxed/simple;
	bh=Lh4c+88XLjE0Ap/XENWQ6K1BPC9mktzDzIkxYMOJhrQ=;
	h=To:Subject:From:Message-Id:Date; b=RUIWr6RTOV9HLsOYYn4dnAL2AnuZJRBWEmLD3xq8gw38Gz0veZOqZhM1o2ZYTk6/iHF7tBRKnygiaVoX/1oiExwHj5C/bUEwxoLP9yrau0ff3J5e4B7R0YJjbulW+FwKU5KLopUp58HyGtNCkEnCTN1+9D6r6OoN6ee5W+TPSsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmraJNfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmraJNfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAF3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775060733;
	bh=Lh4c+88XLjE0Ap/XENWQ6K1BPC9mktzDzIkxYMOJhrQ=;
	h=To:Subject:From:Date:From;
	b=jmraJNfPXfScMi4XnU1YUy80ziGuQPAMa5FpWtWkvCICteeM9emH2B/GTqq8LMhEC
	 REgv38san13pXWLIoMOJoJpm9i9b4l7mF9+39WLeK9sy/VlPdx5l17tRioqnVgROHB
	 JQEqqypgn+aR3f2uk5n4PrIvPESMRA9UqLncvOK8k+gYOt5lZWeVMLLcwSY/vn0Ovt
	 /Y+FR3v9ODR7k7i8W+HrOteCt7pnXGqkiG8oyOijahwFMOn0jW0jIuUB4OEZlXR+A4
	 fmd8wbNksgcIEBOMB01WYLqymkHPPhrQQLf1mPDxiJT9HYfW8b8T8p+CesqR4aOxvD
	 5HywDZ+LxVGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1AC10F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506073369.28367.6759983439941246178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdffbf31890f5090bf77e6398d7683ee6df43e664078c14f4dcabf7b9f2245c5
Date: Wed, 01 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775060733
