Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25BB13B59B
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745162393; cv=none; b=ljcgo9urMOpvaFsZwHnT0TBfUNiYeO0/j6UDX2tJzDE4Pk/myG63Nj3GigpvziFWdBdHcivn1L1iCfa1nFILfWF8dqtSM7sa+TBzQgV0HLzNEym0MqE8Y/xjBrtldiuhsu+whiSctJh1AMcEGPgfbEy6VpvA98O5YCeNaqEm05Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745162393; c=relaxed/simple;
	bh=84gGt2N44qVzJqDboSZQWaaddqOI3ASdUTRy2Ap6SH8=;
	h=To:Subject:From:Message-Id:Date; b=o16v6R5ysRgXJiJP+4/VFx1zlYegBMEv+F9L0MfFHCg4PQuqpXfXF58KM7Nw7zNeCPfsFbGt+aIPIR3Qukvomn19g8JiMht6gTGhvXwD4PpEo6NKHMPCm8fwrNJJ6j0Q/IH9mJT4ut6149HJ6deOjQtQc9GaGKfyUGAS7m28uJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ3Q3zFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ3Q3zFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEFC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745162393;
	bh=84gGt2N44qVzJqDboSZQWaaddqOI3ASdUTRy2Ap6SH8=;
	h=To:Subject:From:Date:From;
	b=bJ3Q3zFKd0AtVcqX/RBdFC6nd+PoohBBHIJ5My5lWr5nKmihVlPVOfG24fMvFbZIg
	 xnXSx91rtPwSw3waYascqA2Qrfq75Qp28y7u6c4B1dAX2cHq9FBUhtvEOSpFTPldpx
	 UEODXf/auk8yzNKn6tERjomXZqpDuUOrEeWDF0RfjWHdv6uBZkyGojtmG46CYn+scw
	 E7Gih8pwghJIuRq+j+8uxZ7hGdo9lWOh+KXvZ+Vd/iTE8svGxRmvM1Xt/5fS7+/NqX
	 Mox8YhfhB98C96RhJ7UkoZEkdcPxcMjEugOZrnezm51bGBT+f4Tgnvo9GLBnq5LB0h
	 C3qqj2JnOZQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D1C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516239358.5189.9506420623969811087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2a8fa51c548c9575366b88bda62dde5ff0b0b508a27f9213c26dff390b5e5e
Date: Sun, 20 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745162393
