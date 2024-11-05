Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8EF1D5165
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730808354; cv=none; b=b79lkuSrvBg1eNG09FqgTNqsqLKZaADcSIuK9DFmq8rpedqAQuHA7qfrjy5Tv1c2vpyhjmHY08CEcJFxrsipwM9SAWeO0UkCnmM74qYLOUZ8AXuVxEEVaFlcve9IxpjCFSWtk78cZl+7D9LCuce8KJUd6NK5lQAUq7ShhJyyZ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730808354; c=relaxed/simple;
	bh=buCOjN4+wtshp0TvUiMIOnSvlBuY+DCyuwZxcsVNRPI=;
	h=To:Subject:From:Message-Id:Date; b=MmH1JyG5yVZ2NXZFdpUMzNrqobrnGtaxlDTxbCKvCblAOfrmDVfiVljj8mmIFnfm6U+llwSPIX7nda0DgPmZAMphQuZP3Qj/9wfCk3uBplj7zIrhm6HOPzpwBY+25ctTFUneDlV0LS+gWfUnrnA87pHxIIpJBPYSAEqWCbHDXKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPTYKZR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPTYKZR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9706C4CED0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730808353;
	bh=buCOjN4+wtshp0TvUiMIOnSvlBuY+DCyuwZxcsVNRPI=;
	h=To:Subject:From:Date:From;
	b=HPTYKZR21pIW8oaV/GqFRI/W61Rg5fxF+WlSSb6GGl5xxtwntONtwbknNZRSXMZP9
	 S0etTTHLyRjn6FvgK5jwLNJAyk4zwg/MQPK8VEogKJaRMCUY40TEpYNgoy0tdH1VgQ
	 uvCNDfp3CJ/fQiLxHsFSl9I+lJg8L34iwIxXnw/dULG+TJmw06EN5j0TAqcr4f6yX3
	 C8tGnGT6JwSijVqbQvxmQ/aU0LtTD9smRgIlcdpxGWMphamQGngYE2Ms568QPwSk5o
	 vssMXPHT9ErgLlY5ayEkR0jAntO1Ha1epdASMre8iA/qQrmFMO/NInKmcoe5BQRJCJ
	 S2RD9rT+oJz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44C9D12695
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080835362.31541.12739671058933731197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fc97324b4f8a1c62612de079decc1138938a87489f8c317bb1c0bcd57e56df
Date: Tue, 05 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730808353
