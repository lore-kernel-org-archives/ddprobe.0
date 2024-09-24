Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178013D25E
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727214954; cv=none; b=JX9F7eCulk/L/NS+EUU/RuBDQW5PIi3d6TVB8hllDI90dEY+BUVyCDJPrW/XnC38ie0BwdVtGYWoz+XBz7+tz850PHhfvy6gSPvO1KHgNs5Plt/JhjaFJFn407mDOthI4QLBMhjkaUsD2poVaFK8mA1K9S951o5yVtlFws3eygs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727214954; c=relaxed/simple;
	bh=g9kxTWUJwvrKhL6WYTTKdx4o20+Foa/OAY1QySS3+Dc=;
	h=To:Subject:From:Message-Id:Date; b=EELFOfOCz9yINXaN04ldK093CCeZtwE5J/l6XTwc7FkuUiiIkBkxhiBL6U9q6TCc2CE6GXbxT5NJdgFWHswp9rBZtNp9CNkYZXobw3qErzTvvL30hcg7DprKj4kJipFTIfaSNl47BXWx8Ns/ZWL/Mn/VmaRXAbE/ZsTK4Y4XR48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxtyTGve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxtyTGve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0D1C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727214953;
	bh=g9kxTWUJwvrKhL6WYTTKdx4o20+Foa/OAY1QySS3+Dc=;
	h=To:Subject:From:Date:From;
	b=PxtyTGvebbPNyNBshprrKp6VI+mJh6K6EjDJ9jnUqa7h9Kod7QUnEx5gwIyEa7ZrU
	 RpEdxtyttM45GuqabPrUjpQl9Ox+RC7QmXPAbC0mVYbmnLJRv18jwBTocB/OjEbrq5
	 rYHIZuW2HajJL/4fzd8RMIbVe9ggSNgZVeAW9BtAWfiyXtzwtdFzvCJ9Lu0QCcDkAB
	 GJxnD5tJrCjcdvFI0xptpJwlbM7BWow7IaMcyekUhvr5HDzDH5DrXpd7fwcdCxCHUt
	 yqYVzqZ6aPxIW9TL8wL6Gg39Ujo+/Ihd2sWMWH2mzUzch9SDed8QwDR5juqN9ihkke
	 vcqlVQTsQbD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD42CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721495359.31901.15488611952784699521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4882276c49b936e660032af03d36be614d06adcf4e0464fae8bf3bdf78d80e
Date: Tue, 24 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727214953
