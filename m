Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE9B17555
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737992754; cv=none; b=L2alA9yJXDXTQ2IrkoAYm45zzBppVURez2Q73L4mWRN5WacxcmhnSgY/2a64jlDkXOljgirhJKEKmzG/kXHofRb33b9NrAmShRkklzgLmKsumBBuOOGpdx1zw41nQ4GrFeSW79hm+t/V707IEtxD9LwjEMUkWJ3ynJ/aCmLu6FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737992754; c=relaxed/simple;
	bh=6fRo2hJFK21JAElrVJ9q1YPs3NtfIlG7NW20tV7ohao=;
	h=To:Subject:From:Message-Id:Date; b=tcDeCwQElLkmHLFP3m0u6AnfYCdsH/uUUxuE0kQLYn0H0csGXQQKOYCI5Cgh5l/p7Rz7NwsxSRNmQTpNfalp+VN3HtUzVZMaXCyvbiwSD1ATY7/KB2oqNbeUduR1jaUHNZUfT5xhq6ljXK3XKCjCQlR5ab6+M7TqmjWc3tx4kcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikZUtpmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikZUtpmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD49AC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737992753;
	bh=6fRo2hJFK21JAElrVJ9q1YPs3NtfIlG7NW20tV7ohao=;
	h=To:Subject:From:Date:From;
	b=ikZUtpmpquVe4mSJEnyTY4FN5iYk9+/cFwKm1V846O6UJTDUPByiFtakKqInO1VQj
	 /q2QfC4eXmovFtxHniraav3wzf6ls9DOayuqzCmlMzz0SxKEGtsQB9NxTbe1vZEDZd
	 nxOb19kolMerm9B99uAkJz2aschJIGwgSqKIYyqCLazofchlXyjANOjukn1YDDz6ft
	 MGg5wrO3TfKWsYTf/8CiFsXcdHStomPcfZg928ZwKAKHrOR4gqxCqziNjLUtLCDXUO
	 iRe8B3fFGzr+cdbbx+72itw5ffFAP3t2FagUVzL1HfI091hrUOi7bj787hyuJV8HW1
	 vu5DmdJSrFgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9786AC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799275360.4991.4208476573234779750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf629da126e3b12a0f3afeeced0216ea8a83d860039132af8386c82227a58ddc
Date: Mon, 27 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737992753
