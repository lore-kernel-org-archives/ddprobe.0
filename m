Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14021A95C
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753320594; cv=none; b=RUegDiT6V4ah8eXvXDWfHh7abx7jN7BgvjE/lj54BNrK6mgOQ2B23YTyoRX46pb9hF5Fcbv/VEafBDHDoU2YER+aTJO4AoAgV3ssMl+QllXOUyXEzp/dhyS7tt/Em82TgwUJMaXp0jAd9oW6jAh9XhOXBA8Q96+b0OqRRu5EV98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753320594; c=relaxed/simple;
	bh=U6o3zXa2JYI3XDClaSeOt+69uJv+RFKqUSoWDq6WLg4=;
	h=To:Subject:From:Message-Id:Date; b=phFQ+6zG5ji1mPP6EJXim6K44O5gposXgRWkbACYe7boGp5qv3a/+7T5SwiQmTuffPNVsX9FGxs4nzGxsTSPJSc/5Kr9dWICfrD1gmDzEItjsnMARE2KHJ0gD7GURmiIPSEPllYiKIZ/F4Xmdwm1PJs/6C3Xfju6nzkrIgOsris=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRByCZCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRByCZCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4113C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753320593;
	bh=U6o3zXa2JYI3XDClaSeOt+69uJv+RFKqUSoWDq6WLg4=;
	h=To:Subject:From:Date:From;
	b=lRByCZCFgXkHKiOsQm2EizXNuCQJ5+jnOSZdnEkRMYu9ARroYxUjoc43DoJmt/SX+
	 BnraibxtbRHpZ0jeNMQiRaaYxhOEFRRsqOIhlgeFzPhefGbR113IZpUuQq15NI+0o3
	 eE/pmkvC0w4+M14YS/3Cik2Gr80F0Kq8JrEFuH+M5VxLSgedKkBBajKAxSvQO2oDCf
	 bvnD+hWc1QcmwreZ0gQd+rL8KWkqYczbgglqIbXA38UcmVr9JRpek1DPCkEVPQ/fCJ
	 W1S+D5j1YBzhqPJEePBnEk/wFWp1/svKmx4rSnEIroXu4Pk1F38T5iXhW5rW8ZfJnF
	 IzAjuc9ij3O2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F4C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332059357.25596.13070465496511304914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b34a4f17b131cef0eb225e00b678f92de8ed8472d38093bdb50502b47f20ec
Date: Thu, 24 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753320593
