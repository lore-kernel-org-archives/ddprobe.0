Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7553876CA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775166934; cv=none; b=W6ujdA65eE+vICX+zeipFmIGGf1cMOg9zR07ssGrDG6JqMdDcfMwwGEybJmEsYUtMf0BwdD/miT27qKbtpgggltwbi49hqxUWqaKRcOJog/Misy2m4ATYdGonTYRVi1DeunGis9zJSuFQ0EuRL39/lNWNFTCIm1iNMEuZybNXHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775166934; c=relaxed/simple;
	bh=9dums5oADcFealTxXbtBa7rSKxdPyR7ZzFcfWZufj0g=;
	h=To:Subject:From:Message-Id:Date; b=YhvcoGRh8suOAAwoH5K1dFj5s5T54EycgXrT6gdXUe3tJksX6FNJ9AIhRSsw/c9oh8PhfmohhWJETK1v1djnMvFXjAkf+AwMAA4tcIKzEiqXejW6VOojEpjxVCu2mL8dtFyZA7CR3DOtDCA8wkHr59wKTFIF7WczKxQa7K8+9/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYOjU49n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYOjU49n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03B4C19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775166933;
	bh=9dums5oADcFealTxXbtBa7rSKxdPyR7ZzFcfWZufj0g=;
	h=To:Subject:From:Date:From;
	b=QYOjU49nThVBkIzo19eFp04MZZnq398QCX6pR7J/IKzdE4K/d4lNWGdqjIzgql7YP
	 B0pG6X2YY+rw3Wyd5uC5h8zgwAW9eB6uZ5lGW7Dn0k1HRQVurQBMz27lcVeYXoJ4Ts
	 HZq94WvRJUX57Ln+gP/ymKUm0qHQP6VA345bGMg6rP3wdpB4yPNSSwhjrJGGiRYBdZ
	 SJ7F2EE6XS2mVTMH4CHTraS8FGqOs5DwPnGEyaPZr6I6exy2JSAwKge3YYr9wV5HdT
	 hTQx2uctKZBjJ6PdVPqz7edm4bW3LE2GFLSHreZkrwdfc4R8+j96gHA63BCwH5kNts
	 DbB6hKAD8Nz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE874D6AB16
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516693369.2062.12097713939592824931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d25b534716a3edf2175555886a2ee8289bd0c38c64242079d9173801c88f754
Date: Thu, 02 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775166933
