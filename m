Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DD92676DE
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744112994; cv=none; b=qr5mQFuflJnC5Ls13CdtwYD7QZP/fn8bXn2LcDd6C1yhrVBca/eg/aARk+Dg+pLudAT+A7fUJ2Pz7ETYeoiMtjhZK97q0MToS3sjoFrS4jpetwsEogUJxzN3TnnUMxyA0D6hrHtOkPP7ASvdTytvuOS1pnaOvYODRAmru8qsE+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744112994; c=relaxed/simple;
	bh=WgbUwn+EfMnCzQWkmd4eaVhZxWb7bm/PFv1f2VpJTqw=;
	h=To:Subject:From:Message-Id:Date; b=bzf5M6+q/a3KQxohGEyEle7yEURmGA0orOF1fbqyBD7pUIzAQwsPgOlSRHa7/StH5EGd0MTju4It4eOqPKzCibP0qU4DN4Yt7Ek97yxJ/T9t0FlH2KGrQ7us70/UESYXwN64GFfKDtgtWb2M4llxQIhOqUeXM303lotxMFuuZzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1cWkmB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1cWkmB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744112993;
	bh=WgbUwn+EfMnCzQWkmd4eaVhZxWb7bm/PFv1f2VpJTqw=;
	h=To:Subject:From:Date:From;
	b=h1cWkmB9mlJ+wi5zkzZ+nIq+SrrZzRDpvxD1E12h9ahhxU8w+VFRARFhuefzrOrfd
	 Bzoiqw9nHQi1z/1U3aCIn7C2zgZls4SKcvK0/j8bucmt1173heEYCexhNqBBsV22M3
	 VEcDyhe5JwLBqyGEkMdZ5U/4p4I4EqoJv1Kk/vjbNoBP6uf5bgv7v55ywjjsqYiTS0
	 eOjocjiFQyaWXamlT8lQQ17e0VsG3MVWZYoO+OwVdKCLxuqoLwHkl52D5v3hjthrU+
	 ynKLzkIS9PAE8EySvGfeEb/hQbXjuwuKYv5Bd/MssMNRPqX4pxaQvQ89Z3Qlms5Sln
	 f5GzshAp631XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92192C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411299358.15290.6527145179578317769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b5f60a658acdbe3e032049598eafed29ce59bff8a8d48ba114a842ed30cada
Date: Tue, 08 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744112993
