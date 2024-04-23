Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFF318AED
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713842423; cv=none; b=jX4gegQfBaak4GjbqC+18YcJJ4RSUvhMmICQiCKbEYCnntewRFCADe1uN2MmGfqkmfbeNGtYvAmsGHAF3h3XXNgG3tDAyxQCiDpyzWIwJ+8xl/rwoIedmsiV6TAgvUt7LffxTzM5sWz089imFfTLAmHxzC9NuIqZq+yEd8OWPz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713842423; c=relaxed/simple;
	bh=Pe1Aw3FKamNVOfOajqeRp/hrxJjoT15ZAkIgf7vMd34=;
	h=To:Subject:From:Message-Id:Date; b=AN0LLjyrBykHYLuiuSAeGmd4HSSfevd3lrqmjXQzLKtsSjkPuyg8JKXfUUUutDs/4XKVobKcDqElDm2ycpzM03e8fxHzIXU5VEr8X+ckOZxc+imWUYaFCrJ+dwgF8GVfzcn3VPpRh838CheDVSFEHCCHwR6y9WE/45u/2DP52M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJEbU58e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJEbU58e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FB3C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713842422;
	bh=Pe1Aw3FKamNVOfOajqeRp/hrxJjoT15ZAkIgf7vMd34=;
	h=To:Subject:From:Date:From;
	b=LJEbU58etkjhw/ISZKYNtef5hP3e3hiI62jojrkboKxsvhRlzDiDpBxL/7liyrO+C
	 fhVgZrWdZUtnFjCk94gFXYDrLRUPeHgPCudu2MYRrENDyfCEwBbhl2Aed8pgPXKTmS
	 CBeBLerI5wgHi20LqF7iVW8yXRmvYi8bAjLv7l4kJFa0K83piGuizaxF5QV1m3QPAI
	 kTFA8Ra8FpXRKfRlH04Tqsq4pbHOUfmfUeOJpEzMVD8S66N9lPUOc6JM5tOtaYP3Ea
	 ctMXB/FwElubnqVkRW07MQfNEZ5yxB+0Qw0M0zhFlaam5afFVjtRs2f6Q3kQE5Cbko
	 /TUHEryk8RxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33EDC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384242276.25306.4888116230254522363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97746b044679cf9e1ab57cc4777fbcfd6bc6b4fb6b273a1179db1dd8eb171c9
Date: Tue, 23 Apr 2024 03:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713842422
