Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162D221726
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760722794; cv=none; b=EqkLoDhuAI6B8SYWLaPaEguCYM54+z4Aw8oorzWDOgQ/G8Yt51Sm/8C52YameUWgv/xS1EFqkAFOxSGO5idP4nzvo2XezgJmwXbtCit6/F73eNOXNfw3DcBCHuhVHrkcdD6laRBQNTFIQuY5QEKwVptpI9VhTgxufAwTfiLKx7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760722794; c=relaxed/simple;
	bh=8VFn7KbXEbk+puBzcXY8KyOG0QYKqO0l2Qta28TlpUU=;
	h=To:Subject:From:Message-Id:Date; b=TssfpYcjiJlALTjvHwV/r4qDLF7OZxw/yssBcskjBvrXWMUHt738/z0jt+Bz1Hsvim8UFmwXTEQd5gW6IQmkHVt6wP6oZTygXHRZfYiWwAcOB3a9zqqmQXy6c2OumRr/4FFODG0AZqYP/5F3gAXnNShrlmOdhAPKm9Sjee3juRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py1Hlooe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py1Hlooe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E60C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760722793;
	bh=8VFn7KbXEbk+puBzcXY8KyOG0QYKqO0l2Qta28TlpUU=;
	h=To:Subject:From:Date:From;
	b=py1Hlooe22Q8bLQRujF6+PWPDnJ00h1eFCmi+vEUVR5vAUntSb8oefiMJzCPKjB+n
	 iThFp9J2ODmrT9CIQ4ZVoQ+JeaidDSrTuhYrOmOb1ww8a/XnTffpbJAyL+mvtVNVol
	 0euSFp2Z8upVpEwKk0d0TiI2tYddu8oHT2GsHr+nkSs2Bbkg6oNuJJbkRdjappXvpF
	 NVRjFPeOGOLVFGVddUyuZYxgk+3CeMn5KTqIw+xYlnwADKjObIHY0q/glSN20hiWi+
	 IeQvGkYpFJozgqyPEEATP/qJmCWdFbS3xU50xo5d6wb7DllYt2HzkasxsMzBotvKdl
	 vKorE9xO4igeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90891CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072279358.5292.17949941263926934440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0704359f5e254a87dac219e7abcad8b99a154db70adde533ee27373b20e35269
Date: Fri, 17 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760722793
