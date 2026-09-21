Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146A4FD7A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790017234; cv=none; b=GR7HYXfo8c2brXWs3RVD6puQtFwPOFlpsTPV7grbPLj/JvhChiFbvGGKKbPmQ/LEyJA5XB0RrebhABHWaoATjpaFucslnDhAGXzKjy0hm9oVgnr9fErt9WrrMTsfFJFEwzqHfil8OxpG4gTDA4zwlvepUqianvE1ucnoQcskU8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790017234; c=relaxed/simple;
	bh=RezDiKhRLIWh5pnWEBU8Lv7VGbgM+bcwXxq9j+B4sS0=;
	h=To:Subject:From:Message-Id:Date; b=d7DuifbgtQNAy9YTHM/8gdysfaqnPKpxOzcB7g+a98H9XhNAFkVHI8lquZa1uJi4zwds7Jtw1LMPSDLhLwrwBrIv9aA/2Ces5/w0bIUQRn2N7LyyC4erTYwpBArBKkD7lbiRS8/lfGcjJ0nA+TpP2YLnxEqQkI/5sFfqVezwRn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZ5kd2jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZ5kd2jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5686C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790017233;
	bh=RezDiKhRLIWh5pnWEBU8Lv7VGbgM+bcwXxq9j+B4sS0=;
	h=To:Subject:From:Date:From;
	b=mZ5kd2jXIRpwAmnpLwyeZgLbSYsDGCjlpeBL1MyRGzG9CIwpOpb5oUOIQYCzatOKx
	 nZES5W4DuDe2mE8shfFIggKAi6xN9B79oj4XpjKC9toOScAvN9qOMNKElGpAJwtjt/
	 Jf50AHzoJb6rgx/rLUg4b9r6qyyIEjF3MBJqP721b8oXfE4kYtC4JaVm4Ettr1zLaK
	 Oz01PRBh8OuMg+CXVVQEASaV5IhosK38+eJHkUkwFZ+b1zC6wMM1GG5N2r9rE5TzMe
	 qR6I6x51rzyDPq0u+cdQdeJGbc0YFIMpItOYLvh1q8gSe7/XT0vmg6RkNA4XwU+2A8
	 zcyut9GpvjerQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9716C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001723374.27220.17745313825195574088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237682f835c8b7c42ae1639209a8dd52df229aad0205acfb4fc1d3b657c0a05b
Date: Mon, 21 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790017233
