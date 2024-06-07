Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B0614EC75
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717748243; cv=none; b=B79IaYITZ3+PJkkzSLM8Hj0ttBGvKfxjtDsdqUFtafEvQrct1Su9vHuKPzdjTtIAxQhZxwVuW0PHGnrYQdCVeUlp/QOAIoJyUHkfD3mi2yJTtbo0XHmvmwgom94GrukAW+hlvDmcQ3fRXWmyiJXFQbi9YSl2gK5GhLGixrcCgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717748243; c=relaxed/simple;
	bh=De75vqvvPCXTzs0ATWxCVdTLHNGuzYVznH6eJwaBaik=;
	h=To:Subject:From:Message-Id:Date; b=GWqENYTB5xbfs6u4DYC4/gQr2B1IcOVssYLZH4gqK6uHftxS67s8qH9imPzEMfQCAsUuTN6vZiyPJSTgDOgcItLZWIWuwKnvSTEf8vQawfTbDR0+txkQKk1bKUQTh08adVO69gOcSjc0qJj16mwOrOn2FS9TJ3CX+5ZVPhRwnuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRfAFBwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRfAFBwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1569C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717748242;
	bh=De75vqvvPCXTzs0ATWxCVdTLHNGuzYVznH6eJwaBaik=;
	h=To:Subject:From:Date:From;
	b=VRfAFBwaU9LokKUzaSy5aqwoPETn+p9FBijrnvKS5tffS1M+/LxnkgcXcSHb0LBKV
	 fRJRp+z+qYKM1c+8YF9guki0dLHm/yuV6ovYH/D+Uh5y8f+HAHdgrF31IRI81bqwJo
	 0v4H6WCtR8nY7mBsoEJxdI2uV4gBvNUNdzDpzGwyjDbuKoglOK4+j9M1nikLgH/wbL
	 2gsNS1g7qm8Ied5FblnWhTJlncJE8r4+tJ+3h6ZP0moKlUilRjdM4WttQ7471gUG8L
	 fnjWjGyOjwfMTjLgypzQNuAMkdj6Ngn4GuwkuPhfybos7O0lbHP7C7Iud1UVGC9smT
	 Bqps3bHe/Faeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE64C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774824281.31434.12571437191933713757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724629e7ea82b5b18e43c184b5099c2b788daa8fdb40238a3bdc4bc52bf01005
Date: Fri, 07 Jun 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717748242
