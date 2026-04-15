Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC453E92B5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776273454; cv=none; b=QCYZObV3N/KA7indqwFZP4AvqtQr5qfO0/8cOctNXKrQFCNoQJDIXRzbFhmJhKMiiubScOWRezXjD70VA/iac2NjElN+2y5/hW2yev/uRILU0qmdeoKl3Ia2Jy3IqqPmU3PHVDOBH1QpKfQYjXYRJ9M6yFueY0VdzVsEcY0bPkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776273454; c=relaxed/simple;
	bh=7jEigbTl0FWE3e0VCmV7pQNc0UMkzHNLoT3RKbhZwNg=;
	h=To:Subject:From:Message-Id:Date; b=N8AwrnDgiawY3zh322Y9gx7D+xp5hoYfS+8UyMnjRV6BlCxvo2ICzVEEkr/is+K3YoExlYSHJtTe1jKvir1tM5DIPOJspsC1ETv4V7ybApT923gYBwlTZFWZ/ja+mwJ7mkHDBOcWFZWCgbGnZdGNb0yG7jPtCjQD4eCZ8UzkVos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLBfqzek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLBfqzek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE4AC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776273453;
	bh=7jEigbTl0FWE3e0VCmV7pQNc0UMkzHNLoT3RKbhZwNg=;
	h=To:Subject:From:Date:From;
	b=CLBfqzekwyJ5FzLCLP1VdbrUd+u7Vx7upLYC7XZAQ/GhLxkkCwxxPFxY0R2Q87TQm
	 mF97yLQmDhpryEhiqe0/6+fX4weKVkVmJkOXQaa2arLRvqaQd4dwxb2SgW0vgiqw9O
	 RXUoDXFhs0Upf29A2O9BJ9DSqMvqHE7Cpj4CRcOXJykXLxQhARVKQcx0kIi5+yeOmf
	 Qiw2rmCrbj0n370tPKG3j0Px6mrPF26kOHxPbiP97ABI0oKoT0FjHnwzJ8mqndehM5
	 mzxMaXYnbCVZrk+sz9cjbK+RTyjXE3TZrhX9wJttpK9BAHAe1UT/4a7eK3TfGApgoB
	 uW4piOXF24UjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB631F43848
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627345369.20637.8600619253114636660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efee1ffad1278bcaa3c62cbedda947c865332bd7ea2cec3ae0527a98fe84b5ed
Date: Wed, 15 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776273453
