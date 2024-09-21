Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D3E3F9EC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726962954; cv=none; b=KzNq8PjiYD4ztHHRsu92psVAM657+dWJ2hHP/u+nSR/IAoqyuk65JU18ZvokgWl2NsfoO/YmcYXlMyJ0NJqglDw0lG7O/efrWcGNuMVsxYlHumBnW7FglC3cK8CmCMZ6iF78PsLco2vaF3XY6f3gmWhbihk7iXlWwQvsOD7e+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726962954; c=relaxed/simple;
	bh=CHKV0fqeoFZ1ZNA/4u+VM9pruEOcXblXMOcYqsCKidk=;
	h=To:Subject:From:Message-Id:Date; b=gkqD43Q3MLMe7TZA91xZTyFJ7hwKoXV1XlGOqyuvHKP8/f1By6hkJCLEyzVEGcaKuzT7p08W3TQ0VwPGNVbUV1++mMVTUc0JSGwIb3ZHg1NYNGAjnS9NGx+rbZGkOX/O8zeUoVGs/fGdlI2srYPO5cRzeDcR2hE7i2IiVonNi+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx2ELqLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx2ELqLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3809C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726962953;
	bh=CHKV0fqeoFZ1ZNA/4u+VM9pruEOcXblXMOcYqsCKidk=;
	h=To:Subject:From:Date:From;
	b=tx2ELqLO2GHwVHk1B3GStcDyV8yEV3ScSXl6b/9MpOplnKxR2vPx6ovq2bqtW6GqQ
	 I/sSZAbekJCpSBuyvb2PmPwnTUCvsCY+dSo76QdK1vqkMmymVuePo1KpyJtajxYdeh
	 zIlmUXWeNKJZcYrD537ZXw4AFAWWu5hhhQGy832Q7xfUn+ms7SbquB0kXsMHWMfWno
	 DO5NzgS6WOMjSJrbJvBJeqGrkrd0r1fjh0ngvM9kzl5DmeWIZWriH9CrfTZCV/g3KD
	 7Ch5bKj+Re1mknw6AugC1/aYUO8GMbX6dgrLfrHEYd3dzolyOdjheFWf3uIWUE8h4q
	 sul02ND3ZmYnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95615CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696295358.9598.7552450588242693760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2828c0cf7fbf10de8483a5dbc7e1e4d678ecaad67fc79cfb212580ce0373d584
Date: Sat, 21 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726962953
