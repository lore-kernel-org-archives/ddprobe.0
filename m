Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AF257423
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778030854; cv=none; b=WZZm8TcTka2c9Jokwco+HSSvauYtAb73RrU5cGlFJK04AprX4vVOKhLIwscvL6MpBKDi0B2AHtaHtd6bOuJnmUz+46MGsNy7Z/4KBtSnt9ftZUG67PhJf5RmOARX7gW1UYgmfDM/MI1ZTnQ+A6bgDuGbqsTsHneCXKM54MD6C3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778030854; c=relaxed/simple;
	bh=HPqnBpzPfk7zZqbLZZBFMWyu+yY0L5WdcRksC69llAA=;
	h=To:Subject:From:Message-Id:Date; b=rLlDIo5QlqHcJKNFUfDaTU0Sk2eTgaIdl7LzAXsTPnHIcugmsC8x/GScOCRMWOdAt8pVqgjgtey7mc+bKsw2Orn9aMYt2JsSZwJG3DV3Rasxbv9TSPR+rMiORV8VfKMhaxCHR7iHU8WQejensIjEXloX9vY/w6xTvZidNPiFnIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg737vKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg737vKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BF0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778030853;
	bh=HPqnBpzPfk7zZqbLZZBFMWyu+yY0L5WdcRksC69llAA=;
	h=To:Subject:From:Date:From;
	b=fg737vKfbS1YQsiCMOs3yEUYMSg/M3mrAz1ctCh9BW8VZlbMXC8cbgIYTk/KYJ853
	 /67COhGhI9/Fi/+Q6zrlaXvJUx6lZRNgOddZ+soTNtKgjcb/+1h7FCr2+Rff+UtmS8
	 l5/nnZNyY63T9VoQyT4lO6DSqz6HlHmBp2UieClWwWPxAvndw/Cx9/HPU1RkvBPE9U
	 dnlo15r4h1VOyNRJhIr37gMxUbtor7H2xdXRSQyjI6xyMXS8Oansj42S0GuTZgMy7d
	 Jo2xTumpnkkxF4k7+oq64YBVTvH/i2odDyXfR4tSalgoCUGUodZ+s/qcuNDSwWhZld
	 f4Q1E0QMzWzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B456ACD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803085370.21877.15098292792523365743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee8324d13053a12f6fb05f5f12e1138333e686841d7e05f3762b4ffd7275519
Date: Wed, 06 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778030853
