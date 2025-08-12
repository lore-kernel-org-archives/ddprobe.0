Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D320C469
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755032994; cv=none; b=ex17zA4CR/iIfkx/fhUwLNQQ0koF4/Vz4qyArKLPNULl8nK36QDh+N+N5bzAofA9Q7iT8luJOOVCl85fx0QPAFJcV/+gKiF8/lw6jgPWO975WR/JaPDdEwPhbv26zH5u7cMNKvgkFvJHQzZbNMdIEEFzsu1CeCJxtfYb0bRpbI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755032994; c=relaxed/simple;
	bh=Aju/dPNPaT5Z6pcIj/5VhqJJCeqCJTzNwARqOzgJhy0=;
	h=To:Subject:From:Message-Id:Date; b=G0XA/fzkIF54kHDqCT7b/pjYUyihVU+MZb2e8hV2E7B/hFhgPf7xNxRhzSNGqKPUxJa8WhJ7JDoRuj0nFpmMeRAkxzksQwnKIKDPAGPAaqDX7O0JNX2MuL7dJKBEfvGVR2TAhLB34q+Po/761qNtnEo3H0apOK1PM/3tMGW8l6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZggxrG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZggxrG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48ABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755032993;
	bh=Aju/dPNPaT5Z6pcIj/5VhqJJCeqCJTzNwARqOzgJhy0=;
	h=To:Subject:From:Date:From;
	b=tZggxrG9oeBce07N3/GsjOd3YbSqNFqvlFsgMK6DSyKuo1H2Ew03PupGoE5cTBThI
	 d6L3frZuXRCyJ9awE/fDxIpy3XxKAPxUmP0JDOqx7x99I0JsOrRgeJo5NvhqDpBg3x
	 MSXowLuFmhorq47JbcGuVvEY29QUCHdh4vuwGLZTeEk7804gVwu0bQMh+bE35UY9HG
	 uaV+IyklRcAPsu9bfj9bg30GdTD/1RJQfY6PUNBB6VIKZZeIHLaQXpe78QI22LrL/+
	 8ApvVFUfz/BDaFDwz/0j4b1meqZmwOr4hfLVl0rhTtL7h9CfBO9phXp9F9jIJlzYUw
	 8jyqyGrW+kj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D9CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503299357.12080.3631207105827445666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255e3af0d4a3097f598151c75ef7b891ca32992d24e6ec8a35585535e2b50e70
Date: Tue, 12 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755032993
