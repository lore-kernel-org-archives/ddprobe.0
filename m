Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC31E1055
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732452354; cv=none; b=V/JlORn62PB3AodX6Gct7CiAZkvB4jaVFz7YGcYjD9kz1EW4hN7bi6GG6z6mWCcDHrMCXCoc+6PYqYhfo5VymOE5+Ed10/hQfxvLTF79tp0zActAjpJxUSBo/gWPN+woxQCLCWCPKcu3vIaNMg8y1tB4hjq9rD3qGid9o0iLIL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732452354; c=relaxed/simple;
	bh=+u4F0Z4eUS9i5jYl8QsYEtCUq6E57TVlTbZfuVTzlj4=;
	h=To:Subject:From:Message-Id:Date; b=NmL5/9CjGP/i4i+J3etajAwBBAROfUI8cZS4w+j5ivdrYpLjC7VLvqsb82UwVRLLMBe63Xku/LtvVPnqv5NHBEbmjDAlkoM0nzkDDQE/LoiTKUTGawn4mL+pBm6CGRE7v+gIzp8E53lTrwtnbOKj4nvITOd46alPWDscXm7jgUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzWw6NN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzWw6NN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFFFC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732452353;
	bh=+u4F0Z4eUS9i5jYl8QsYEtCUq6E57TVlTbZfuVTzlj4=;
	h=To:Subject:From:Date:From;
	b=pzWw6NN0l35TEO/elcHjpHsJuOzVJH80Aij8mgy+3+bjO7Tv0j9W6USWuFCKv2smW
	 R0eqnDpDa7h1KWDw2Vdica5ae2S+I/s+itDk3KTIsor90VGznR6v1LN2nBE8NTQJVI
	 yYnFz52zImvY8fvWYuD1GVda0B2+KBsWuF0DfVmhzAHYsCdcDGLGNV/pbH3aaocjEH
	 rQmFX4o34nePgElBD+gf1VQcubDygHbyw0JJdujVtVggUk00RCjJphm7q2m3yJZJ8M
	 rpMsl3PVdp9RTCRVEF9Kp/LNC0JlH4eW1U0HCYiDC9MkzkiKQIfR14v7KVDD1T74Vo
	 qHUJwcgxYFngA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE75E668AD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173245235363.27695.12810701602093533588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d42329160f66d2066d8cb649ef5980aa6034ab4ed721b70e674a60b963aeb2
Date: Sun, 24 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732452353
