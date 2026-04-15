Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236642C11DF
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776231454; cv=none; b=doQpZWxaS8wvkwS114IYsGlVCbfJoRJlWQN0N11CKNB3+if1h3Szb6H5s+Z3b2EbYqU80GI6IFMasl8CK2edVnrAWdbKXb3Ur0QCr1yJW5lLAluFXRqiIje4vweJoqFBNv1n/n8VfvP7tp1BUh2IfUrtGG5cVH1DpgwYqBOvMBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776231454; c=relaxed/simple;
	bh=vqoqOVZhe2KYSNjd4YokCNNJbSumK92Wq6Tjdzi4Tmo=;
	h=To:Subject:From:Message-Id:Date; b=H8zgbzHuPK+PK1imPh5ASyfVteFJMuZ5DB+jnH6I4BzFL6qfXNkB14IRvFGYqrI3JYNe/9f0+Am+i2PJuEYVdSm2DEAzRvKKKQ79SHe5Al7VYStmKay8zn1NaUQ2b/U+sn0hYqS0fQrw9rGOye3P8OVkzunx3q41V6Oy0Qaun3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRRRPDOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRRRPDOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BFCC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776231453;
	bh=vqoqOVZhe2KYSNjd4YokCNNJbSumK92Wq6Tjdzi4Tmo=;
	h=To:Subject:From:Date:From;
	b=hRRRPDOm5nzjY98cNeWktQJY46OQHxcdQ8y5EBfklpWu67OsVjP1GrB6bDwrsZdBM
	 S1Pdvap9gefshJgw+KnQHKX/1Z3jInMF1NA4Zcnu6fzjlQD/TZzOfLlyiIy7L6RRBh
	 JpZc/6E3kwazFdX1i3sT4FsBz5uegD9r6s8z2n8i9vNTtFMsByFgRKo0fJL0DGCq8d
	 RpNZhtGC0lE8ZKuKtJNkMpoLKxjDs9RJvZxz2FHgfr4oVu4v8BJItvG2h1u/8kKtun
	 A7hy2HPn1LnEY9QrddSfsi89zYOiL/dcnVJKym5gNZukiviwYtbUY7P1DwHpf59usy
	 TUwmz7W0wdsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBBFA0C2C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623145368.12836.14626676929645897219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d119fe1bb4f53eb9be350116b3335e07045b4de88c3166541f0e51e2c333d6
Date: Wed, 15 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776231453
