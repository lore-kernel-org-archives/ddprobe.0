Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400A2DA75C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595834; cv=none; b=ABdoT5FXO1yR9cvdvJTGW4gnoIsOzD98ZNwmA+rh2aenlQXTNydExDgINUb62lHI3GdE+3Ze9u/0uZ8W/SJz7BfZZ8U5gcN0KRd0xRocbkDqdGktqCDSgdy10POx0phdxv8e32oV7HGxovI9WGS2XLhZYn6xnqBR8CCjkZOvO9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595834; c=relaxed/simple;
	bh=0VXR1wdXknJ1NLavueBCELlZ8B4nXCsOoj65C0zOKZc=;
	h=To:Subject:From:Message-Id:Date; b=dc2NWIXLVUorFbVFZXw3DHybmo8En9qJoUcHSinRJe8VwRt+T41PMPKS+8+y35H469cvRTwRokJ62njUZiqxQNcqB0xAXqZofVTJof5oMxF4LpQpuHVd9/BCi/Qpa0t2z3HCVBh2M3LaDUgKv71DQqqQcc2lTYjUTLLyHDVX98o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfyzyhtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfyzyhtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769595833;
	bh=0VXR1wdXknJ1NLavueBCELlZ8B4nXCsOoj65C0zOKZc=;
	h=To:Subject:From:Date:From;
	b=kfyzyhtLi+FrOtxjpedjiUIdbM2AkIdV++6Qf90XNbF343R2/UtvdJT922rQGRORy
	 YRU094/Jdein7cqCMx33RpfBKtoljgKescNH+aiYe6ljk4Ceah8GXFGJ16aRfuAAU4
	 eQeiaTshLttG05jJvltbEZ/YYaW2NETsK3A1EvmX0SUKCbi50XVXhnjPjJfxEWvW/b
	 iFK0RTRVxXt4GYkCWwldKHprl9Hw7xLwHT9EhMzKHI0YKwarwpw0Zl65cKO7FAWJzF
	 bXJcoUttzgQEiZHglhcNV/RhFiF5rZTGYIjMOHRzA0lCU87Rgkia1Lb9o/kYOQr08R
	 aHKToJWt+ik9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEEBD35697
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959583358.2451.3442227954866650015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fddc1087c97d8962724a39ea3ad0d93d26f806771a535cf0819662ecbb80cd
Date: Wed, 28 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769595833
