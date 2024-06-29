Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5459447F53
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719658463; cv=none; b=q//0xClLYASzkgmuHLdU5i1J1Wzd3gLh1aSqbbekm7Pus59tFTQBT9GceRGdjo892/ldCmG5KPXPKhbiAk2+RMBsxmLcJnvmXxJ+xdQ0gqAvZl2DdmR1BUY43jYryUj9PzfaJT/XlTjr8dI4eUp0x3/F6t/yqW5nBemLxEgKWqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719658463; c=relaxed/simple;
	bh=1+186julFpAcfd4cEHmo9N3c6DNDy6Xxt5fMe6EqtLc=;
	h=To:Subject:From:Message-Id:Date; b=lDoMktYeFsLznGEoTsn04K70+r9feOX7END2K38TVUcIFpjgQny6j22uEeLFD93lBK0Uy5dKUuCbwbFNOU22ueb80+u5y6FDXHSb5GLdHhUE3gWyuWjZuhkgRGkLspvdMaLAatfiJfCgbeJhWhUcHjVSniJRAzAcKPZ/y3ZWY6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQ6NOtUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQ6NOtUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC97FC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719658462;
	bh=1+186julFpAcfd4cEHmo9N3c6DNDy6Xxt5fMe6EqtLc=;
	h=To:Subject:From:Date:From;
	b=BQ6NOtUOlHtJRjul2w6Y5AWlmf03MOqyzvFgfikB5x1P/5IWXBuKyUm6K35WoseBx
	 DBIxm+VMwi4fMfUgqriUr1kJXPxV6Nn3OV+k2ibcbn5N5PTsU1gPiywZGdufyoeZVR
	 l7B+6FR7aoDD+Ho9ouo1FcMnvUCN/VHNItXY75OIigCGZQ2aYRoLJMcNJ/UdhezLRi
	 K6KIR7niN233jABnjHht80HBGJYjY/EFU9NfvS8X2mU5BLQVhmfolwtcNnaUTZO6m5
	 yuS+Nd5jeIz6ednBAAcM8LGz3gK6ZAcYMlg6eD8YFJo/0N2wvFp6aXetO5ZEgeQyS2
	 lHha6MvdzOyAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BCAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965846277.20072.1605633031546540956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b0b77f2bb73edb623e5f624624530fa23c6f25beb2060d43c0d8c0d02af0b0
Date: Sat, 29 Jun 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719658462
