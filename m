Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EE282F1E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778055454; cv=none; b=F0k5mcqHLDcDh9W6x+5a8dlyl5ihJ6I/CNhWqh6SgoIJLw1AHQ/2m9oYz/HoJ4FkijFH5mqRXnN4CELDWNvoWAFx1hvZgeQv0zea6v0v1506Hu+oAAwMV3XE8QiB6RUOpAEA9MCEAYQBc4mu5jDhebSeJjT5HrGPYqoZo3FVqkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778055454; c=relaxed/simple;
	bh=11jFC9ADES4ljhObxCqvTwRrVjYPKsz0esu8Fp0Aei4=;
	h=To:Subject:From:Message-Id:Date; b=tGEoxVB2xcqulGRJit8xLUtXSHaAqWKoFcqxd23S0lCt5L5RY6w9K5AKqyqrLGRil7rdMhqmrqjQbpdfjDHLik1ZfzFQ3mXPKJC+TqvOes87TTKe+k1abT2e3iS5XgI9+g/P0SuZ3seswD5nqgo/WJCiRxeZmvEV/LMrqOi3FL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og++wXya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og++wXya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD65DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778055453;
	bh=11jFC9ADES4ljhObxCqvTwRrVjYPKsz0esu8Fp0Aei4=;
	h=To:Subject:From:Date:From;
	b=og++wXyaH066wqPfSLWV05QyzG9Ha52SuDOdPFA9GvgzBuZOTuUQfwrATY/2EuyzK
	 6DNPSOvpA8H7DmF5SSiJbrYqrIDANPoIsev89GxfQDDtXC1+e5+Sjn3dRXH0DTxx/T
	 6mNm8mrpX/YoqkxYK21xZ27R+MxuMYizdTHb2dJwRzsanANw9fMxdfLhVUqwlTK5vG
	 ELoO6YHG5MXly3QvpjUR74hfPGulMO0b0YmAH8zahtQ7V6Rg8W3E35XgHRJWHBtOLn
	 oXX1EdYBOEAtOl1ZfdIF0OQsuoSpa0s28hzz9JsGZItPoeR1eUqOX1LYR62KaNwTkY
	 gq8VWGWzd1L1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB38ECD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805545369.23038.11529956639354681294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44da294af55379610d7cb8295ae27f2360c58c35a061ba824842fde574144b66
Date: Wed, 06 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778055453
