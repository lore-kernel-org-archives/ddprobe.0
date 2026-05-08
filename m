Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9463A1A54
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778242054; cv=none; b=c9zcY4uOUCMdIQDFZ2Ajph8PoJgrUPQf9uXAqqnNwJid1aha4NMK2ESf1McRB73ct5fjsuS1El0gIlk6/oy4Kl9vLDdckKcCE5reI4fKyf1cktSFgV3N/D8ZGKGrQ9NXlAGv2xw9+Log/SpKtMGBTT2Y/GgXqowO1R1oUlkWYSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778242054; c=relaxed/simple;
	bh=ugkUUDGFvbUEQCkE2/bujt1/AVh4iulK8f/72IReQ4M=;
	h=To:Subject:From:Message-Id:Date; b=aIU3ywy4oZ8a+gVly2DrDi2yF1Td7Ttf8bbDoOCi9dv7pM1h8y3csFkx1/NmCc0rTiXq7w0cTK7G86Mu2BfMk7ulwwHARhfjlqEbp/m+8ebq7vnZpYat1J6VI32tYvomcIUxANbJLq4DpjEvmJtsJPIXJCJepPN2LfjEqvHO+w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBjLJNE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBjLJNE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778242053;
	bh=ugkUUDGFvbUEQCkE2/bujt1/AVh4iulK8f/72IReQ4M=;
	h=To:Subject:From:Date:From;
	b=fBjLJNE7rv7bwxVOszKVw4T7eKNzPXgXzVxjBNMt80EKuOAm+vO6UMQf8xJOyODHR
	 4P8LfHlt8feFtAkS98vtQGkSkffufL0hfGX62o4OtGga1QyQYYF2RfoS+o5enoEwbI
	 vsF8hnBCPwFK7ZIEDMZe/nm2GIxS0CVwj3CM1EmX+y1A/KHfcED04a5803EfTbR1fc
	 uCJheXqudj4t5fEEO2YEPNwI8zbRXU8uXNjB8R/qYozdUvcqo9q+YQTch/U9t60h87
	 WY9YhvnLjaCgGEBVANvNvIiJR2Rpdto20UfT6E1L6ubQMgVK+YmLKVtQDiJeIthMDh
	 FEYLGYf0XasXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4BCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824205369.30813.15570050879220025609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bedcf9f51d4687c0ffa670ff8ce153bbaa64289b5f51665b77da9c264c9e20f
Date: Fri, 08 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778242053
