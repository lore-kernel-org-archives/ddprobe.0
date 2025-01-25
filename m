Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5E5672
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737764754; cv=none; b=i7RqyXhuzUdFmhJ1jlfcgYPvcoMsVrzR6J2l6dZ2A7v8DGtDXfaavuveamqS93Ax/nprOhdqUH/iPKx7qsS98/bJYQDMxv2qp6Ud+yzuBDQeiqq/3JPjtZGlTX08fJl2QK1aVIcA7Z+8Y35VcjMVbQ+89fYDAd4CZdDZVFmHkrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737764754; c=relaxed/simple;
	bh=OlLroa1bBcLGgVlcrSvERaBqHwGQjjmfB6Y2X4f1DlI=;
	h=To:Subject:From:Message-Id:Date; b=augqf1kdJ/sfw0q5rknVC8mmu1xbNcgv7HKoQvJBzB8mYYfQsb21wpZU/y4o1UFpc3Sx2TbpyFjlD1a7ulaT19USuCY/JUyOejWTy8cnmRruwrrQqMy6ZXsJeX5dB9tqPDizf+LRfif4OkpCqnIhGfn8vkOXVLTNUf8JeQEJwNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwtuEL8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwtuEL8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F40C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737764753;
	bh=OlLroa1bBcLGgVlcrSvERaBqHwGQjjmfB6Y2X4f1DlI=;
	h=To:Subject:From:Date:From;
	b=qwtuEL8LOpVUHaBJUPZ9XNbYeWT0qjJHrYVwZWbonJKnWsESH2jdr6tAaw2yXh5qU
	 u+OwCk/7CqDYoBiuafb35PR1W/V7ECS475UdrLmbfT9g0mGssY5xcsysf/t7PZJHlq
	 MzzpGsD78L4JG+CTAJTcpC5LHRrMJVxw0kRxqXBJsLw7oXoTSDtLvPLECvl8qbb/uF
	 u1LZFjwLZoYzFA2C7PNZexEieecnzQhK9A8qjS/Anwt04WaMUgdZKwA9Fgs6JZj3dG
	 j95cSymix3ZpEmGHip5/IXoAwDkBvdBjU5O3YR8KsFIojJII/jWzT7sV+wdHHvfAhS
	 jz6iv/1cif19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEDFC0218B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776475364.29032.16464447197849803485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4110834bfffc1b203a8b77276f6a4c8d6ef08a3940ba7be2dc3caf5d324aa5c
Date: Sat, 25 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737764753
