Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2B53112AB
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788252034; cv=none; b=Ic4OIgdnsvjfr+T8u/j+7WnQlrQcP8szs7YWovD60bv7pE7r4eTmpBfU866ITIsTBIxwNKlIuMi8MnbgYJy3fzaNMgZDlbaN1GM7y81KLi/zt4ZykWLry+wpPIQyBaods0vpmLzOFZWc+1zSVKHm9sJHhoUS1dVEx/KmGH4nbrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788252034; c=relaxed/simple;
	bh=PqK69WTAIBfcCyxsjXFADGaI6syZvzpqxFTLh9eE7cQ=;
	h=To:Subject:From:Message-Id:Date; b=Mg5VGoKoMXIfwtU+pLo62/4iL6Eb/0u3cz2R7nosZkQASA8OODJd7Vi0wywgaF8NUMSNHDdZ4Q89nDGxacdy4Red5C+2mbXos09teaOwlHHtxl9xNqUXjLVnCGDDaU8K2io7FoJgtaG8bxfcKURO/jiolKiki5OIU+etLxoVBtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIl/knAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIl/knAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D202BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788252033;
	bh=PqK69WTAIBfcCyxsjXFADGaI6syZvzpqxFTLh9eE7cQ=;
	h=To:Subject:From:Date:From;
	b=jIl/knATJUP7lIn1rQH1JyD2ShzwxHYr1c3wMBI+AuNt4VnfG1L9YQgbjrmpbGnRt
	 qdiTUvC/z+xYv/0ogoW6VRM8QZvni0uVprGBqv7CzWie7CNBJTbsBTS1fFVhRJZzSh
	 wfRUIWcQEeFpzy3Nk2Lbg945t0adVNIca4TwfEuFj2HtBp4A+qI5zUgwTgbMSYR9hk
	 NyX0bibenzA//+xiaRlx38C0ltUa3YXj4x87AzLRFBbMsOdeVYIb3Dno4RdDC4x9bB
	 vRMfc2XlREfxbiv/qccxIr4Iko7e8bj6lRKyGQdvgyVAQl6czwYbyy9oDKnT2A7su+
	 +gtPyCbGobGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E5C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825203369.28952.11174844671197116471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2c7cce42e75727f2fd6e7d85ec06ed8307d81bb346f406c0734a7d315f965d
Date: Tue, 01 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788252033
