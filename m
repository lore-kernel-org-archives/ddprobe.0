Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDFA1E1C26
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734105354; cv=none; b=Tp4kZi8/8n5v61mMQFJSXaOH6irLYW32+PrQ1FmpYW/T0DwlR6qL9Ri4/TUmnTwmB1JIDuDjY4pD2RroxlXaO+rXMNhMZ8tcDuGsVC8lAcIJxeejj5NxixHEZLypRz3t6uTc9vSJZ3MQ0P3u6sZ8yH03uMt7VnL+Uu7MQHxXdGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734105354; c=relaxed/simple;
	bh=FEbE580y5umh0OoPQhJJ8M+1bbqVnLErdGh1+d/G9Fw=;
	h=To:Subject:From:Message-Id:Date; b=kOiALDms4ZfIEn+249K15xHa1+9hiZxUhAUMJ5FnWL6RobH+ArT+I7+tDUG0POmez2fCbpnlMe26GXkikdtE7CLnVXR5Bgt0f6FSbPDzLuObf+8QgkONM8iY06z580siXNan10rEypJ3bh7U+MGy68rOsIXE2wYqYXE/nBow7VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K28I7yvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K28I7yvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734105353;
	bh=FEbE580y5umh0OoPQhJJ8M+1bbqVnLErdGh1+d/G9Fw=;
	h=To:Subject:From:Date:From;
	b=K28I7yvpUQXqugCES8/PEq0ER2qhoH7E2/Uv9oKOVuMR+31m7mcYmgFESS4lOcHf4
	 I0+9ZFdijnE59WWULeLy6/hcYHDMSvjrtnKQLdBSMx2Ly3vJvuuLzCtx3zW0lTlHB2
	 47oantri+SA7RQNgAYwVf0DR3N6HrimjT1B41ogptW6VvGv+zJfv4M1L6+qsR5/XDX
	 i968/krEgWUqHUQig2NzgnKZt7NzBCLMyQUgy7A46opVcBTo8b2/27qClWGqfaNbcA
	 qwmZBHNLMdL/eK7aQ5uMatGqn87TuJHX0x6MuhAb+m1/Ohn0tk1PntALKoaSNvLTXl
	 +PlaS+mrWG3BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95295E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410535360.26854.15063707975527098136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fcedc4cc9506315405862c0170c38463d932522223b02c29be2a52126681eb
Date: Fri, 13 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734105353
