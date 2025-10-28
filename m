Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0B40855
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761617394; cv=none; b=RJauWevChm63RzYyPzxLWCQn9gj6P3S3S1pWICdIeeNM7L0x1D25WWKzpzHAOWol3GCTPJozKnzDa/Cxlu6xSzo+p0ymuWyTzN0pMDW80IKDUcS6nP2lMtJuHnV+n/EEpCbc8NBf227jSIFNxE+s1N0nNsY/KjDmnBz7Ixdc728=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761617394; c=relaxed/simple;
	bh=vfSfHMdv9biWlZazybQhyVvTxlF6H61fIgYdYzXpwpg=;
	h=To:Subject:From:Message-Id:Date; b=EdfoCXtCImq5+BIBdzzj1ZrlESUY3PktlQVHTWq2GJSQzPlc94/QTUwb7c8mDB+0Zih+i7s135eYGwia3U8yP7CJN7UXBtXs5ZG7GbCZUTqCERedMvvcwyvl/0iL5KRCBoWWqkWeFeM/xZAj66PYNh74+xDAZDFMyXiFK90Zclw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPhOOdId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPhOOdId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3338C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761617393;
	bh=vfSfHMdv9biWlZazybQhyVvTxlF6H61fIgYdYzXpwpg=;
	h=To:Subject:From:Date:From;
	b=NPhOOdIdcHmZB41X0O5VLkxv4ow5VXJrecYtoDawr075espn8fVaRqM7IxnmzosVj
	 qGDGsEiB3FZTJdpFs/pXBndZaLcZOHMYAUA88wEg8UtwCo59eSalNxZwGGnVZudq9q
	 G5YvKqIbK/TnLXMHawQ8W2uuzJObt5dEfkIshYLoG9vwXvyXvHJ+DIqRyv6sTI5Cpg
	 jXwgnpV9feGvKWUuIfXtx6bpnqa1kk7/Z4mwwisVs1frhU17JgLLk2/vpV/3GAKQF2
	 RJkw6D+geESAtqh0wsffvD+aCvXuNO8KgJZRDthxOyhg4ZK4CHromcABj2d4YpybKh
	 fK+vgMacb+AiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0321CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161739364.3919.1435043289440776898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd85b368faa4f208952aa716033066df87f5ba43f4378e1646250488e8281396
Date: Tue, 28 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761617393
