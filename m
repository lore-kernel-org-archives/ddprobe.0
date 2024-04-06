Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD62D374C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712414296; cv=none; b=TZ4sCBDyNkRkozY4s9ka/7ST5DK1KkCimKgkwrynriuVJ9RP2lHw1rYZtkPgxMCVQsnlLgAxzm+a52vEMYyFi4O00sBLu01eDn11tGL1UyFEgKKx9GhH3kzv1GO3DQgQxtsChQ9pYbhjr7U33N01UcdeSGYWG3XyONzuJ7Ks8Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712414296; c=relaxed/simple;
	bh=i8DF6Ru+J/1LSM8JnljgfeSSPZs0TAVZv/sLOReT8TY=;
	h=To:Subject:From:Message-Id:Date; b=aIIJnEzcOoy+lEXjCau2BAT0xk1952RqkLoP+YNzmy6ovSRdvUZ7KUXwP4K9abGEhGG6RZFDsuDfsGqDl0F4gFI/u6eoZRcXzWCNuhD4cXtUyWnN2M2V56nfhtSDURGYORMUuKmpfgaKJW7QSa21V0ZCSYas/6erApQSldW3haA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQkeduol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQkeduol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7163BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712414296;
	bh=i8DF6Ru+J/1LSM8JnljgfeSSPZs0TAVZv/sLOReT8TY=;
	h=To:Subject:From:Date:From;
	b=QQkeduolRjmIqya3TL9bZuiB8gFrKLAJH6whvvhMzEw5CnYNJlvB09+pialtET4tI
	 vMF/4q9q0jH4v1UUyqZg9nwvRukyzNqavFWWXcwKoDNmGqB8dLJ1HXvAdi9AnkqC5v
	 6OTtZKf4Tq7sLIqjPiCXVCwbKtFhrr0ozfJnYeiovv7eoy13zZYm+J7czcfFT8icLG
	 4ZeqzH+30Et2G7AxVaIC9em5UZOGjbyFShWo948nriCVAlEWESzjOjlgVSWE1xYgso
	 Nd7cEJWp9e0nD9iQBFUiwg0gkK8Ka9oq1CuwR5tXDjXZclULvvN6jHDkE87LQ1+UiJ
	 z9h/6URH1SDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBD4CD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241429638.28066.4113761232169741871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d447b55039cd0e76880190b2e300a857813b813b26b8322a73728d9e2b284771
Date: Sat, 06 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712414296
