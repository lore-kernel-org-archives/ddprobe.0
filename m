Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B5A1BC4C
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710617897; cv=none; b=bYYjFYAdvSUlNnbPR2eRGTlXooSjUqXx6bW8tHxDqk3ZeTJZRjGp59Q16ziMA9gHOmOKEwo5Dk3VDzIWa3cKPqclDjkKtwDMcyEERfufNVU2HliwAaO+SbJ2A5WnWwhXxqRsDGQAE/hHW1jxMZEUhwSut0YTe8JmDvicCUE9Hvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710617897; c=relaxed/simple;
	bh=Y06lYtPIlb0wTnpa8u8Q9hjSJSXtAAme5luyvSvW+aE=;
	h=To:Subject:From:Message-Id:Date; b=AOiQd0Ui/nZb09/n/gpb28tKZfWcPdRUmbNZHHWqwvxS8/ecLUZFRC6u5lexWwn11uUoQyCgrVH/xPe1gLZFulXER+4icV3uXCqCd2WssoYZEqri508vG2CfPaapYCRfuUqXn8T+kV7Vfx0XN5Sg7jgZFugm+pJsYlyOOeJjmcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlzJcStR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlzJcStR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AD9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710617896;
	bh=Y06lYtPIlb0wTnpa8u8Q9hjSJSXtAAme5luyvSvW+aE=;
	h=To:Subject:From:Date:From;
	b=nlzJcStRG/Nr8rbPmU98f8dfwEKG4qOkXr3XLdrSDQKEJiZ3FYCXAfD6RWGTKLar4
	 OYHV1+H/cdH75Rk8nxXAnO+lu8VlMFCC2U2U35aoWiXEmBh3SJnnANIlJQ2zSb+Qsd
	 RCr2eVhMWxJXjoTyJCydXqbgjD4X1N22Q84qF8sBUYqr8SB4zk09HfncXntYB6rKXi
	 176wXqx4HhBwd+N61197RFln5kPlWZUB70cHJIXPNxIepWHSc/cENP4Qa7jCN8fsqO
	 tgPMYZpbiSZaQXfQeWcQerGGY4UtwZbdaRK/fuB910qyuZCsLofIksJ+yI8FuYKkkW
	 +TrdjZIhlW5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66671C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171061789640.13333.12479515895000024516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbb07cddce2f11cb27d85a0d234575e5ac6ed75b0afc6f366ae54a07d72bd6b
Date: Sat, 16 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710617896
