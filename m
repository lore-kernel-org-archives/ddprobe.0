Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714ED140E4F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714235543; cv=none; b=MmR/SHSJg75z98mFe1OWArdXYit13puf5WJnOycknSLwvXXPP1d4Qdi6zjuUWLXTYpCyByzxfXuhJBZ6/dUuUuUImvblwsT3SUCPSGumY58qCWNfye5nXRnK6Hl50lKw+QjPrRxkZIzUxhYKbOPZlzqLq/rm0X6r8lc3lzzdrP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714235543; c=relaxed/simple;
	bh=UL7OELKxfTQB7qrno9Q57/ja6oC306eK2YMLZe8aMHU=;
	h=To:Subject:From:Message-Id:Date; b=gQQrSaqPyp1casYtAzDfWz9KQ0Ja2sqP9mmUj2w/0zMNQdNVD8uDqE+IKhfUZVx03F6eU99WEJy+jOmR74mgHsXiyhMyK1RnYS8dpM72xkmcx6CJvUqif+mjh0wgBJxaVGEAOBafpQDz4BHqvgn+8tw2rD79lNKlu07eazRy4LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWOZAbU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWOZAbU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60DAC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714235542;
	bh=UL7OELKxfTQB7qrno9Q57/ja6oC306eK2YMLZe8aMHU=;
	h=To:Subject:From:Date:From;
	b=hWOZAbU4G78R25b7Ukn+joVPS15dCkKUsXkjnrX+hUetOysyePWVJXpiiSkOx2MC6
	 yzAVUpCjA71Z/Ze01pC95DQdr1lxkCP7S3//GWhJlWroxUE9Mp3/tMLIOqZ9Z266e/
	 Jn0W1fxKEPPqRVVkjup85RCQqKxI3Gc1P0cYZ46oocf/q5+2Gan2zHXFlnfT0UxrIp
	 CkA1QHxEAEETRvE+TVWhhq91zRalFkd+QgLNVTStfkH3xAwhR5k6KMcqEXNYnYq2bK
	 v+ih/dWn3WoIJHQLEYg47h/En3BqR73xZmlAI5n+miOoV4ZNEQy0MYTijqfoViviDA
	 2MfsEYwpuYuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE5AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423554281.30567.7704445373283000846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e27fb815ca5753c916d434e183c38d15f46eed22b0fb561a1402fe15aef8d3
Date: Sat, 27 Apr 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714235542
