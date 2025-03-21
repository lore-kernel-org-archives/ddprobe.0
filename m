Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF831A7264
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742524194; cv=none; b=KIm+xTRFzljjRQCLUZz+gk32VR5PpeJEm0VK+KU4mU5LXL6LnrUjwbwZTrMwMMoAvWlQqDNWqJQdr51mwzW7oIWflNGAbKwu5Z5NZ8zdJAFjoNzRSaCLGe6kl7be0X+5BXItPtH6uWOQB7EA4Fj8a6iu5DyB/Zd9iLn4CeK+kH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742524194; c=relaxed/simple;
	bh=XwFdVUACBKIpDMmGmxQJ57lrR8fOhY7fMNrqJpvfzQQ=;
	h=To:Subject:From:Message-Id:Date; b=okCmIqZrgz8TXYuaZ3V0NUsAUkEpjZZxt12hEz2lFu3P+GMbRaDpUpmrjL5hH7R8kYYJki7u34s6Fjqq6unwg1EC8MIkMRv42317v2OM/eN0PcMJymPOg0oIj8jPmQBGgr2jnIXp8Zi2VGImrsOTbPdvCygV3tLX5C/T2ewKayg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYUywjDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYUywjDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6F9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742524193;
	bh=XwFdVUACBKIpDMmGmxQJ57lrR8fOhY7fMNrqJpvfzQQ=;
	h=To:Subject:From:Date:From;
	b=OYUywjDtw+OBWMXix5r3bHz29l5DzUQBjLVdQkoTccmC/Sjs/0wSTX/6AqRzpF5oU
	 G2WJ7+/WQMwRFWdjebT0PsBjiZthFjYQRIJy4WaglzMU4AUsJ592QCWTjcDSmc1gN5
	 YzqcTo253aY+lj0Wxm2/NoCPnXgCc1rmWxzqWylrc7hLVU88jr9SdfHNIVaw8l6mW5
	 0MXavJnDWu7dKuLhFUMkPYsTFebMF5m+jfcGhFm0bAsmLI1OM8N6cErgWAtctXn0fB
	 oYMt5voSmWOsxBTO/gwlTBk65t1S/AwCAYN9ldk7omClZxF1dNDRW1M5T3iR4E/7PX
	 PWmhoYhBf1elQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99605C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252419359.20779.12301946292943740578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdbfb5bb03c822d9e45f9a0b3740852ef6fafc886deb2918902a15489c5fb81
Date: Fri, 21 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742524193
