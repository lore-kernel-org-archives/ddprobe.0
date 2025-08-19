Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04925253B56
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755598194; cv=none; b=LEZlsJY7mNLFcj++FXCLTmAkSEudAI7HXqv4+6wZyiacjo6jZXRbKn5HXV8u/zJf8q1hMlDWdspszwr2UnoN6x45pBeaHOClCzf0Hdj7hHAY23VzY0PEkXkyIBS0jOgZpUAVmWVqSFJCPG2H4hmbpkGHbAPG7HJZtsjURzVlRWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755598194; c=relaxed/simple;
	bh=t1TEAIgUcmpENI19/NcbQ/p4DJrir759ErMKamC+BtM=;
	h=To:Subject:From:Message-Id:Date; b=G+u9RI1mP+lbtx+9glTFhMlZ+6YeV9GnehYiAZ2mDVDdCbz0JED4FR8PpS/7CPtTjJ8OCrA9bLMuSUggEv3zMxa6mPb8LnSSUFfjmwBVFoDeuu8FxmFESSEvyMU21E0qy5nmccQuOnnk1xkoIo7BYOMBKW9fPtbihjwPED7Vklc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4Z/1bE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4Z/1bE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C95DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755598193;
	bh=t1TEAIgUcmpENI19/NcbQ/p4DJrir759ErMKamC+BtM=;
	h=To:Subject:From:Date:From;
	b=I4Z/1bE3jeyior9vrxfShaZAsHlRWhd4ewkcvbGKGuseiFmtz6qKb8km859pYcDUU
	 62mgdN0wZMME7kuykSzRkfYw8uBtelf73H2P8f6K2FExpg0b4NzzgivOoiKLBdjQrB
	 M/t5JcFk1qLPzqz0BIIHJCXvu5dA3CBGLjNtdTHgppO7sqsLO5e79iheWTRkXgi1L+
	 5iHb3hgrWjPSIAt3qZirPNwEJkK41Rn1fXatQ1Yzi99NzAhGPvGL76LfCPeTr1+Q2E
	 S0/0IZarEvA/LB+2+CoaeywdN5R9EgdI0gtrEH8WtqzQM4v5aETjEj4LFLsdcEO72u
	 M9ObGqMoA8qeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1ACA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559819357.19813.7727544146641945426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08756c5ed8c19e225867dac60273a6318136a1e0b4dba3a5395d215c939a8605
Date: Tue, 19 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755598193
