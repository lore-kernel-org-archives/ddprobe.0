Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1E31D5CD7
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750905594; cv=none; b=AU7l9/VMPeTUdxYYvg1bj3OseIUGrPWwEwv/vu6nWBq6KoteK/KdA88mVy4ZOwRjB5tSHEwKl18cYuUeE/XOQRs1cp0YhdmULvXjgB6Rn+kI+y+9z8cTU2Z6CQyUxzlh8Ugq7IQDzRnX+p7MNYOEfxr0L8TU0hZSTdtiAHL2iD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750905594; c=relaxed/simple;
	bh=KkDZxp34xoTMZcIkZjaN0jN57lgKGS/xeXjMJTT1EDM=;
	h=To:Subject:From:Message-Id:Date; b=D89WnA1TuBEtJpeywk272x7rfgJlZy5A3QjL0YgTxGurYmMim2LUYZDO9FBVN0wEQPdv4hKzf2eQNX7VzGqfoshGAROc5/DxOnIJWusSKYmB6UX5SJ4c7CIRZwVW/7Fx1jZbZ3pf95f8w/iRpum5xH8dCgcyjQ1nsH/m1vW0YF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzY4tQvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzY4tQvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C0EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750905593;
	bh=KkDZxp34xoTMZcIkZjaN0jN57lgKGS/xeXjMJTT1EDM=;
	h=To:Subject:From:Date:From;
	b=ZzY4tQvZeHNlTLbPg/poWdY8k06wQvAzexHqCsxeK/y/NUQCz67jjVfMqYuRfJ81T
	 hMw6XtIIn810UlvWAMm8Ycd437PGqrNHdM5+6LoqW386FtyxOeT+URWW1lYLFHS6gO
	 tGISEg6P8dfjEbxVHVFqXLthH7TIUXoIjO35JBVgoIOxLh6G2hIe/qhLqJjLHVpv8a
	 al/OBgm6zdGTEyv/9vctKb3mOssSA73liEPHKSLsGsHBIKQWBOjuZxChUR0DSxV990
	 B6IoQEvZGkHqB/zSUhFZrfnjrFfLht5QXR1GkaouzR7kNkStsD9nrnaKyuCOEPLWma
	 rtgwYLke7Gkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442FC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090559359.7467.10342684282594359638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78841d53898904e045e45f51c5b4d77e8acb34a239c0177871da1d2bdaa04d24
Date: Thu, 26 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750905593
