Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA892F0C74
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779645154; cv=none; b=A4nZxMUP3L8opx8+T6LeNFHw7+PE1cpYCxmzNY0iJgs9QM1V5Df1OR7lbQ28kzwttggd+KZB5Kc+2Hmxj93PSo6NCLIi1HaU8Gq69lUzJGjsBvwI0aXSZQ5gwHl5Oj5/y8HrMqqOfGbpeP2ciBjFUsU0Uh1B3kMo/ZO8N92rN6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779645154; c=relaxed/simple;
	bh=DdywlMSgUjhVtMIkUhuJ4dBe7o8CjK4rCADWW/F1SGk=;
	h=To:Subject:From:Message-Id:Date; b=U0lYe4bXrcTADAh04vGvWSRCgTlXNSQoXCR6uDqXa/addRTjVxiW1r6dbcsslGpTId4bG4TUmheyW5qMOnF0EI9ziU1ZNBRqrTbCTFXBr3L0a4bYocII6KcWENkUTpnenXEcqcJM0yYVhXWizmV9lYgOHFSlFk7/TEWaGH9OsHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhi5rW1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhi5rW1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51D3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779645153;
	bh=DdywlMSgUjhVtMIkUhuJ4dBe7o8CjK4rCADWW/F1SGk=;
	h=To:Subject:From:Date:From;
	b=uhi5rW1i+uC/XtcZdCjpSKCyH+GCVX17Eg0Diacnr/8b+SkP3wF6jlpXycXuOXJjt
	 I/4kw60XPw26iwdxrdleEBGeiALf20fQPzTj/TflIpScEI+cvq51fUHYigSeNTq3lR
	 ZpJXfwhH+fXy8FmtlEv3nRRl0kH8CcURQ6/D72bf6Ydn0ZBG1vTgCHUqGM/fTEFVfz
	 4rXXllQoRAihkLaLDV/7baOTTs2frLjrEnUBYodGbmAS5UfE11nPY2U2w2R1KKtzS6
	 9xq9OVrUFh8o8wlMyUnoYu5dH0M/xb1YUuebE/QAqaj0gNlqIQkb4ghhnaUUonuL7N
	 Zh887tie75hwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEF1CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964515368.29808.17900059118066917904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238b7b5066dccc902a71856091f4c2a9da88816347f7e65a942125455fc717e0
Date: Sun, 24 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779645153
