Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1941221E091
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765434774; cv=none; b=tnP3DhPAGbVtXFtOLTiV5+SLJVQL/XTbG/va4WYYBrInwiZs6hwn31PYALqu6PpkE6uqoFJRugdlgU0oRuJpRDl/gKnNDwlcFXHW8sEmei+Ym18mxnBA6DHim8aYQ+wAgBURAVW99sgivY8FDAIchbwkLdlHUlfnJre3A5rOxHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765434774; c=relaxed/simple;
	bh=Kr5a1Upkrkqi+7f2y1ColaykWet6zajLorQVPoyI0PU=;
	h=To:Subject:From:Message-Id:Date; b=iVu52ZSJf6NRmODoplcOG5THHYcN2zINBshlFOgLt6cLrYdqrS+xYXQZ36TD9GCq+Q/nnlk8bWVX+TUsiW0gZxPCbyJP4ZINJu5dLpPRlZEmCYM+UatDEb2nqS/tGnkMkkGf5Tq3Gq6OuEQuLNqbBIC8fckzG2KPphxkHK5zQuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM2kaQKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM2kaQKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B5C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765434773;
	bh=Kr5a1Upkrkqi+7f2y1ColaykWet6zajLorQVPoyI0PU=;
	h=To:Subject:From:Date:From;
	b=rM2kaQKXtXxBnnV+F74LpHmM2ymaJ28pL+BE2f3wdHkoPq67lz1mVmTJKd6HRSuoT
	 GpGfNFU7vPaFI8F1maBZg7d1yomUPUUS3d5BiPRvfqdMZy7zE5ULqTfNbYzQW+Tsy9
	 1Z0edKfaEmmWSP9KU4SqZVcV9BPKcoB4oUC8PMeSGjhUxday/TknXNmV9YMo+C7Inu
	 UDy4eYy3M6FRuZvGs8yynP/llElHMKCuh4oz5ndY98Odu1U4dWDz6YfjubdMBswfCl
	 ybuJFsxY7qcW4rJr95RDTQUrIm1lzarRS8a6UWl71sOFgfo0i3TnIk4OW7kWNFPLlL
	 pGK42csKnrzMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F75D3E796
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543477359.8580.17477343362565357198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5292abb556ad55cd521aa708e239826677f67cc09b95fe1c975f66fc98b9d4
Date: Thu, 11 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765434773
