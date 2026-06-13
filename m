Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F38316189
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781348194; cv=none; b=qCSI/hK1/eUNjWCmeQ1SOZXTB3KXVMg/aY4w3x0eMFnlNFyV5gVugwPWDdhUqat+EAjUtq46oiCWsgQ+D2rGycreoLy8VUMc6zQwGFnZH1b5MIuB/XoTlwJZic6Zfq2gSZqtsJRhoBqPcoQM4H2nkhF4vKFREpNFuM1ZC2BDBcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781348194; c=relaxed/simple;
	bh=vPi7SW7yBWe7BaUN9rPDltS5AQqsTLuFtByqpFcth5k=;
	h=To:Subject:From:Message-Id:Date; b=XhwIrhrP32tu6iqXHC+OLKT37OtACFqeFPjjz0Ti5DHtSVQMlGgCQBDTKGGDXUDqxApbcEy9o8ZQJg1sEKfZJLBHEoBxg2oinyikHqVllGCHCGTI8y+VDysm7quTaazEsWEQxQ9gKTxTE+ZVyODeBqMkS2zSq6NSARir3N+F8lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW3+L5yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW3+L5yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB239C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781348193;
	bh=vPi7SW7yBWe7BaUN9rPDltS5AQqsTLuFtByqpFcth5k=;
	h=To:Subject:From:Date:From;
	b=mW3+L5ycCAXrD69MYzoe4LFEYm6T16P/be2r/H7ZRgpzNg3JYAmmh915BCgnbdp9E
	 qAMERRRN+//l6pR2C+KZUhDTGpoQRLUPjbul/xvp4WAXhQHn9HMEZaPzYT6IDdQkMS
	 PIN45GDkDnCXXxxjgoIc/UbJ3DQXc5myK/8IuasFur+KhYByumOauq+Qbvz+XIk6wC
	 1g7CFu0r711qblHnhBGw/m5D9ZdchWD8TntPJ8vzeQD82q8yxtkYT6xPtNwlnWsw5A
	 U0pYUmbV30Q2LU38a+CVqEKr9cH/k/R7fQgW1zC6Aiz05teTHGK0EY3Ig0m5bMmV6M
	 5hF5KYNYp+V+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FFCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134819368.25879.14623729594155382641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663e265f5a546c0be6534719e9a0d711b656dd29aec118742d53e0fc114116db
Date: Sat, 13 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781348193
