Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5363E499
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736678154; cv=none; b=r/6XY4ynoQUlCxXnH9V6kgZJcU5GNGfLjRMEp9khxGOAZWbKM2+wbJgiWcKHIuvUdQTZmhz099jIzLQV0aFzi40JgQFSJL441aahteVx597MlvabI3dB+IJr2FyOEHgXiVSpRVSfCrBd9hokgE/ES99SiUGQee/EQIuaADtsU1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736678154; c=relaxed/simple;
	bh=S7uplBz6yqZ3JTcuTq+SnckJ4izskAWCFEB6ZAakDFA=;
	h=To:Subject:From:Message-Id:Date; b=rOYU3FrZ5AeW3UuiaYrGrlHdLvQgbqapBAO6oG87RVIYu/E86BoLo8wSFu1e4KW+6j+9cXR5Ou/Sr6MmAjCuKQyfeHssUBWw6TmIBYk4XrMQTjdrbH3eYr/CHW9NgBwhsPBxtYIAALihAIuNMdwa4WAOq+Lsn9purmE2ebHp+nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY2LdtNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY2LdtNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABF9C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736678153;
	bh=S7uplBz6yqZ3JTcuTq+SnckJ4izskAWCFEB6ZAakDFA=;
	h=To:Subject:From:Date:From;
	b=mY2LdtNofuywwDTFMUR5mBe1j1RHhc+YCFelyINF4NkLJxGHHGDKC0yZo/GNhGywL
	 aSJOO36+cX8JYuar2CKR7clRF/9CcpKsvT9SSJywlMr02i4iYJjo/EBk0UCIyhxacy
	 l/I2iGlH3snumimcKRl3D/X8bbVtaUzaRetQtrwhhdQpqenjid6JSs3kQUTt94JRir
	 ZWyVybtobRRHHESH5ysNOlAHf8yxffdgotbDPKm5MUmzLaUO6w0WfAgKiw49ANAyri
	 r+o5rPIRgTTlsLXIIxRrJ17SclgFxoQMi/bLGOHblFQ1LikkY4pxlhZBGYye0ql8+h
	 tTd5HOBD30poQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE1E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667815359.24432.2624173649843355033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75c7409587bff2592e6edc4543a417090e02de921130e7396c0a23f612a6117
Date: Sun, 12 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736678153
