Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336741373
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760833194; cv=none; b=roceGFwibGWRxMB+MTOcNGTfo8VY8CKYeYFHoiEU2WiBsORl5lXd1+kZJ94/yQZtEeP2E7KAs0aYffQdj3w2VHAQqH9vt/qb21ytZwCI4iQ40FTZx/dHLrgh2rpwkkcuwm5g0JP7D/CXDDAAn72+buwS7ES7KcLmzbHkpQ5ZdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760833194; c=relaxed/simple;
	bh=jHPXFilTfqJRXWiOFjBeZhrm8CPa/W4o+15LxbJeVX8=;
	h=To:Subject:From:Message-Id:Date; b=Uc4aSDafX9nD5InQ4JRJhyDCUw9c5WC/OYi7xzcF02abd6mO7a0BOcNhfF0wHzGN0d9LzHa66ah7jq5JdzMYSuFCbcTc6nJ8S2qADyAxr9DCs635CBbEhDAU0J5YIELo3ryAf3wZl4DzNffwGKwoQ8x8374pVIegnuAf+xV3qnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFS8ZteI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFS8ZteI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18C1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760833193;
	bh=jHPXFilTfqJRXWiOFjBeZhrm8CPa/W4o+15LxbJeVX8=;
	h=To:Subject:From:Date:From;
	b=YFS8ZteILsv2TVi0v4fdZVg+YBCZzXkv6hRienv3tAko68fuaBCcphBhQOfKOKG8a
	 4QJIe4MogF74NncR/9PGqqmVVwYnmaOsPxLit3Mo+f2IwrL0Qwdoczqjsh7BsUoeBb
	 ZZfhkTtnWSXbiaIH2iXpslwvvGEsSwcgigQt04631Vccp0Y9C4HSqSNYCQCc0lqwBm
	 dtcNQqjDppCkG8OZttQ1/SIKeEkjYRFWZVNz1+Eq1B0rNwv0qcuyDH946m/b6FuMX8
	 S74Jbsc8BvnA4dNostboIUcAO4Vfcquoj+MNEpco0UU2iGvT3e5ye3DboUl0eeNUbN
	 IdhVtFmM/UpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD403CCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083319368.8202.6840315626532877863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74208d37f28506834b61f4051cb33c9586533006a801801622140f2b9c721f8
Date: Sun, 19 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760833193
