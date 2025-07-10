Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203B1284671
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169794; cv=none; b=RsvIUi+x45VfhSUbwWWCZPYD27ZmMEiqcGKeChxZBhG0Q8minUprQ5oDGBU/R5WhtosgauI6wXJt+WtKROYerD/TyQxcikIicXrVt9CM6+mudXGXVs2gTE1nX9nyZ80Mmtp777y5+OeyQn5ykYvcX3PU0E1ARZ0DjGaWar0J+IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169794; c=relaxed/simple;
	bh=/YUHDPB998F8RAq2kG5E8ty1eUtI020iZggnfJ5udGI=;
	h=To:Subject:From:Message-Id:Date; b=B3zJO4UlGw8Cx1+jSF3nhDv4fJWe0paCd3aLbHLbE6u7zmbaAhP8pui5ceZ+Qr+POjB6wV7b6VZMaks2TyH6/5UgmAHrw+FNJIVoUaCnZwjNQsq9EwQWg3YGeK5t+zVMiKCu3vDNBDba5HS+Z57gN+TUQU00QH5QkNyg1xLVVKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJkQWOaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJkQWOaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752169793;
	bh=/YUHDPB998F8RAq2kG5E8ty1eUtI020iZggnfJ5udGI=;
	h=To:Subject:From:Date:From;
	b=kJkQWOaF2EhG3Puq69zUH8w4YC16+19BHD0OMrcBo2e9e2YQhNknGHY57YQvLd+q4
	 J8TiE0wYnA4Ov0AfHZZzD2uLrIhIWaXva1kdK58qBqE3zvJGWJGLNgCby6u3n6Or/m
	 AbpKAQiNFpkpuP7X/Pl9a2YZXzQ1REuaqWewuRUT896TgAju80Pdj5pLLVrsgPwERJ
	 URlcY9NuaOs0zPKoGQGmVDMvag7+nVk/gkTclQaSsP+JmDCDJLaEVKYflEfk97Pwha
	 9sAnrcAJM+ixHcvTeKE/vb5rFn4Kfqf2m8fQ7RUawMjDtv37xzWOj3D0bJUbIGx1Xf
	 fq6Qn5kYphLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93580C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216979359.1028.4229022298932038041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e12bf737c9bece19649fcd0092afd747f17ff0459f5f399182dbc6f5ab6f03
Date: Thu, 10 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752169793
