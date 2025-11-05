Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AA92FD1D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762334994; cv=none; b=GjlkXy0QTzwcAbuO1a4t5sgWMqn3uYumKQJz7imeuY4gvC8cLfkoeFOoj8k/mkLloPWmbcX/BXpXzInA3a5HBxNwiqlvQepB/1Oa85sOWeDbrR2+/gEbQpxI37YnhEdQnD2VmKMmHKBOD59BW2nmrZNQORwpb3AcZunhBkXaU/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762334994; c=relaxed/simple;
	bh=dphV9nl7xttooQDXUX+qC7imppqWkJ5mYPwjc/mVG3s=;
	h=To:Subject:From:Message-Id:Date; b=fMJKy5izFSgUNlFYpPQdUZQwF92zzZe4CT0TNfDrzpJJVVcN8h9wHK8amPOG+Kvj+DXbDekDKb51CHhOu6zOAdmKcIo5au0rKgPTogySTln52+9b0ymltJTLhWGPQ3LCQoNfJQl4nJpKjIj5mcAbgNmzaCzlYtUhMdl+KwprnE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nboK0UXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nboK0UXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FF0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762334993;
	bh=dphV9nl7xttooQDXUX+qC7imppqWkJ5mYPwjc/mVG3s=;
	h=To:Subject:From:Date:From;
	b=nboK0UXW0Z6ykNe9DhqP7rb3Nj8wCuRRu7m7xyHMQ+HnHUiIzdRyCyrrT6m0hvJ/N
	 QefbVIdlnpaC9ptvaw9k2CqJ8XsT9ENCXf+Xc/nSd05muSfmO7BSAoN7xx+/+NlaQN
	 FOMCH9iPPWuNb8zchpbwv4vFNfZw+8otpL4CVIpUZS9gVQpWJiNwUhjMTVdBTETcg7
	 m0wajSjPVGtFzX/78vzVFJFSu0Z2n0+jyUMhKnxPa14c7eD1h+Olx80Y2Y2IjnSlW8
	 UDge6tITE5iwd5vT1IntzM79Tgc4V+Leb86+Py4+X+FD8TRnCw8r+vWC8Qq1+NGL24
	 fDk2qECi49tgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A002FCCFA07
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233499364.19432.11217063636622358352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb141e566bb5caaf839fcc75e9198f4de4e435c41810b80f0fe808d5efed346
Date: Wed, 05 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762334993
