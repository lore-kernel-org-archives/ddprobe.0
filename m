Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C6436B912
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789900234; cv=none; b=j92ps7/eLqN37URfe4Ij2vWwTXjqWXd4bsFTaUUQezFeZ7Z+RO+uBqwiz2w+YUfBLhjV4kKj3f8zMxM0Gp5AQSQgN/LYgVQmc/7Pdz5dBudzFtm6pVstwOCe4jOQprYMsDOdkMDkaVHYtHr7uNb8voYjlXbDIkzI1tEPxhN6mzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789900234; c=relaxed/simple;
	bh=2XxIkSwQkZcCwfG27+n0c8tPbCE3OD4XMJ0HyMUUclQ=;
	h=To:Subject:From:Message-Id:Date; b=cdhhriM6r0UGSvBfMoh6aRmnwqBZgizsiBLUC/YZZvjN5kxrgqpayeNwuvz+YT1NHKvcXG4hDjD20SvZixt715r/sB79kA4tzgZGCbdnD4gHtmF/yYmwGx0I3Voz9vLldTBuhEF4gkeRzZVHJgRfGkLzbOxCZOyWUcc7TQ7q6Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgNMGT6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgNMGT6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF9BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789900233;
	bh=2XxIkSwQkZcCwfG27+n0c8tPbCE3OD4XMJ0HyMUUclQ=;
	h=To:Subject:From:Date:From;
	b=dgNMGT6cvNWhG7O9sJSy35OUFBXXYjPyOKKucQcJLtKsY9fyNYyCmacRvzNX3eUIK
	 8yQVO3/SwFweZguWe+84C65cfIN9Ts0lEZt/XYxpPGU116lkQcP8gb48FGjvmq9zmE
	 GjIRVBq8SK+EDcicq60A6VKyARV8j58fAoiCr+AYGlfymKlqLxjUrJnOkav+hDQKrF
	 pk+aZurHrqeWeCGlD34cY7ssGv06WnUCApeUVUoWUCsnAh3cG0H7detHU8DxBLvAN5
	 eog0EeJZ2K+vHU65e8CLnM4YwDt/nlG3tirwaagtDIWeESwFKU9L+PNldv4JrowUBE
	 zb/OnZZ6y9Fmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC28DC982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990023369.1638.10281659731060788421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4d6951ecce3381a37d263dc95a6a189c9d2bc2a19f404847044c5f49c80e69
Date: Sun, 20 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789900233
