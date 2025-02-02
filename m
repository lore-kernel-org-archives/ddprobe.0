Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D687E1F9A8C
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738506353; cv=none; b=sBT4reseMDlbIXitP92AZlU4BcvKewC5RTTB+YR3ZanM4a/KJCO04s4oVtDsZ8Yw4GanRGon2dGyQqKCEyj7L2JdVK394+lv+bXqgQcYEenlIYbU0s2A4RGlObURG2B1LyHqW70BPcDFNhc2xizawJf/n9YDPbS6/QuHaq3yYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738506353; c=relaxed/simple;
	bh=SuKBTv4ZWXuoZMET6x9+pKkbNsrGFFSt1uYjdzELeSQ=;
	h=To:Subject:From:Message-Id:Date; b=CADyQ06yJBfRFOXwogE4MAEe9x0nx8Gz+hTMPdu6hXRE3s9VQJBhNBxJGimnaKZDvkkpucZuFcXwMvLhhHMVKCYWoOEE3Tw7sViUFwRo+i2wmTcJCpJFFjTG4QcFx/VXbVpgqFCEO+JOZ/6hcTHkbcWes3xSjJtHOm4EocxLAoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4PSsoLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4PSsoLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B052AC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738506353;
	bh=SuKBTv4ZWXuoZMET6x9+pKkbNsrGFFSt1uYjdzELeSQ=;
	h=To:Subject:From:Date:From;
	b=k4PSsoLfXcvdgpQnqcftTW7IrX0rZqUkOkRfqphgOqZoF8HAUN8n+6hAIza3TCT0Q
	 rxn8C9S4oebBi8JNaayrwrK51FwhsjOG9wyCkbS5uIaNcPbxU0MLqteoMmO34aoyuS
	 OemYAgHt0WmYt98eiPYEuSpa2axoXgK/Jp5OlQd1upKFLFpsspoBXs2bu5H9bsjqak
	 OrGpP06g3Q+ewKbUfmNMiObDTGbXKDwXCAxtlNb7z792S8KpA3B2gwbuTbjCuQNV+B
	 uutZDnee77bG2TJ2uU6pwr8gT5nMm8cF64agvyjR8tXx05YtWnnRZ4l55UPaR03yII
	 N9ATxEGORPeSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C911C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850635361.1616.3092584070917828058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42350ca4be7010c16bae637b3926a1ab312d852ed8c1d619cc458938301d4a28
Date: Sun, 02 Feb 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738506353
