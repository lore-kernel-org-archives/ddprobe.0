Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D041A76D4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763872914; cv=none; b=r4W3pqnjbJK5VatGny6PHQHy594SmqNj9lAIfgLi6dq/RzL0fykQl20PRV9CQPBeGrJjqru/HmBnFCTYYZIlDB1jfQoLon0EvwKAehD5/VUD3F4tFavd7k8qzZjDMUf9hgEKIXksXxg5n3iIjAgDmt4FW4Ww0Gg6fiOOUTNK4h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763872914; c=relaxed/simple;
	bh=jBjzK7zzeqixWuxgNew2uBK3sjhsCb5jrjmURhbpFcQ=;
	h=To:Subject:From:Message-Id:Date; b=kfGOCnLnHe1lDNqn8HY0kux55yOGZOrfiBl5ogzq260x1L2LfHCyxgskfVicqJPRqbqQUGMB6n9nTqgV6uTeWvIcZvQYtUjKxGWbsRLZq5udk6RFVfaxt+Eg6/H88D5a/7jG80EuO+ML+L1zuFoTqdwtd+GCUmQe1EqY8jnLPAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKom5Jux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKom5Jux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763872913;
	bh=jBjzK7zzeqixWuxgNew2uBK3sjhsCb5jrjmURhbpFcQ=;
	h=To:Subject:From:Date:From;
	b=VKom5JuxRRphhv7iJtOysEwMhouZ5tV2XBfrdszJBRo5DjohORmVL5EoFEY6IcL81
	 sfJh9gNgsAFAm8gAkZrLemkAdBD8AjeRWH0W7ZJfs/rLgxy7KPccDmsk0g8jDmoP7i
	 S5SRuFKf6LN/ybU8VNTxm5zzG4NA5B4nTeieU4SebqkgxCp14eRecam3olGzvuZ75+
	 b5honL8IEm0VjHjPzCbX8EW5X2GUsKWTxyDZcjNuzs3iovcidwQE5FFbIsE18P2Ha0
	 NgUR0L4suH83UX6CfGG8zWbD5Rs7ZpUa8EY1lI/VoURRZjKE19k3w0gp0B1OzkhXyb
	 TXx/Zu6eS7K9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383ECFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387291358.18499.3793660315505489146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ac3c284aba2b2d269cb82b16273ebde2cab4f8e3d2e5bf377ee7e05f33e7dc
Date: Sun, 23 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763872913
