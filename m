Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E362D602
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708343897; cv=none; b=Kr86r06EVEmVSl0BkPfhIo3KjS5nOlgxwgo0/uZirPENfUwb3rCH56G09O9SpaSHDhy0xXxPgmWhzBo/ZB7aKlq+VrcymSpFtq1uWCjc8QOFQz4U5gjmkp0EfBf1Q4i7pEHSMvufVBMOg8jpK33QenbC3bTETI7mQAApZPwzI5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708343897; c=relaxed/simple;
	bh=ZTgirQdT8dUczR65MMHK8L7qeFpC0OeSbdBJqm8v8r8=;
	h=To:Subject:From:Message-Id:Date; b=YN+G8fQQef0YGWmcnOuTXQrwmbyZYncreVJN8/fWSMoy8MmpFD3YKtuZFe2t7+Mv3uV1a50ELDCYEd7qk6DJ3+ZsqCrzDNmQeiyFgtNZxR+erY4z3Fx0+IZ6rziDBuBPxqMe+16hVstCgqpzXkuKwx4eh6iirFuV49ugOGjAf7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VktgUGVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VktgUGVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81036C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708343896;
	bh=ZTgirQdT8dUczR65MMHK8L7qeFpC0OeSbdBJqm8v8r8=;
	h=To:Subject:From:Date:From;
	b=VktgUGVWnXouLkOhBivZJ8SQ+3SqIApr82XIzOo5V/T6sbQqK253liFgFPQmr9h6F
	 pJZlWvyrBbJlhPUBA3at0ET4dbS0ImRj9BSDEscfngWdataBGkrIjrBoaQjkEUJRyy
	 bMVheOWee0R9yAHJ/mYksx2eeY3q1u76T3FPGOnQzqY9ciCsG2v6Vmoe8Dqjw9Wttf
	 ugktdglSLc4ioP0EDZuUBysCIzlBZKMpePk/FE9wDNkf64YPJXWwkaOWWob/9z3nGN
	 vmlhFmsbOF4oOno+J4VnQrZ/8GUlDk5OhGBvAMvK5BwD1OCsVe4raRp3MdYFfvAbkH
	 ysddvvasrgOrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69475C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170834389638.27371.8946979624518872022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18c4e209c3c1ea52e1af4a82ecddae7ddcc21d4bdf976d577fd9924a5482623
Date: Mon, 19 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708343896
