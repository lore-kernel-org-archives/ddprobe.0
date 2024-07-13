Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6D773452
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720903823; cv=none; b=JIb7oPu5JXj0u5AxN9aPCGyTM5C8uCp0Uylr7NWwnr5HqozlAuVxWFbRqQUxosF93LDV8HlDmQkDhAQ1jI2nr3lS/yF4x5k0gL54r6tjp7tS3YLyNrTMdyyZ9HDvVkr5tHPDVo49kcwihPwkagxpib6abcXePJO6Fi8ae6Q4o90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720903823; c=relaxed/simple;
	bh=Bj/ZlGUSW/WOItF541tFzXeNCgCRhU9+WC3g8fhddIs=;
	h=To:Subject:From:Message-Id:Date; b=kM/kRgd8dbVxu0HI7GamGnnfWvFpTxQg1BTngWeqp6luRzDNnwk1nenPKh26tuoRIONVUpzAT4Qp2jWcwvVnmCrPpbwJigONGvxFWoOGzHUBvK9K1CK5FjR94MNypdUZQrWQlp60b4PyAdbYPotLwqez2eaPb7Bga/ZmbZU13Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axOl6YqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axOl6YqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B3DC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720903822;
	bh=Bj/ZlGUSW/WOItF541tFzXeNCgCRhU9+WC3g8fhddIs=;
	h=To:Subject:From:Date:From;
	b=axOl6YqZ1MS84qoFtjL35ER7YpXAkgzfaOE9k6nAKmmquhZx96PqvRZPvJopwSqLJ
	 bTUpRkBQTeN7Su3D9hsE0J9Jn1+gp0XxteS6GvEhX0kD8yrNneEVX/eeME4RJX02uV
	 b9YxSfAH+UAWG1/a4OIp/S3GMSRkszzXeZeZeHRfmR7hUF5adjnznlLECiwmCIfqsQ
	 YIdSjETZQac34j2UZ5RXTLg2dXmQhnzYNXJWtd1Y7T2hrtCdOXrHRPEXgrmE5yMTYm
	 UiISm6vvbUC25TvNt/TaTucmZNmKK4TyIsm6vUJIPJk32owB2XuE0I+ch2cnLOHnZn
	 8RaqIUAr23YRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E94C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090382275.26871.1233545971213007596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750f7f3bdca63b6580cf779b50e0cf173a9c66423b87ffb8bd1549ab87f94342
Date: Sat, 13 Jul 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720903822
