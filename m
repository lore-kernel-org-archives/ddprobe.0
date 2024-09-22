Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178382F2D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727036154; cv=none; b=ZXtsoEYAt1IpjM86+qXdBkb/q++WwZ2Qo8ObIRPus9QT9NsaD0aIotZglQrxrGoz0IZ+CyCqwb2e9symg8uvGG9+cqiNOYfEruI6xbykXDHzX0cwdiFZd7pbaZEJ+kOO/MZGOjvhpleLWuutq59IZZu9/GVuBbz9O/VKqrrtTF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727036154; c=relaxed/simple;
	bh=TAxuq3E8im+Oqm277+pPvyGzQXDND84UeO4X7CgcCSM=;
	h=To:Subject:From:Message-Id:Date; b=gjoVfmMUtR5I21ufDzYSj3cj5KMgCSvi+E4iDFnVAxV33DY+E+MO0DSAJRPYyWtwxTJrnkLb2XohATQKnJ5y7sq70FX1un+gy6eouOfnWFMYD9HUgflY3r1E7Cs64sO3ypbt2hCCdX0JpOoucRdT1NS39jtNcI1HsTj964jvJq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inyE4XYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inyE4XYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A042CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727036153;
	bh=TAxuq3E8im+Oqm277+pPvyGzQXDND84UeO4X7CgcCSM=;
	h=To:Subject:From:Date:From;
	b=inyE4XYWgHvMU441jyjjPm8eS/O3hNp1N33IoBOU52lydUf+lx95vZUG7ktgdy5Ar
	 qLEtSo7JlC9SM8BUrGa9zMy/GBxjpH1K/uoLClPLSqUdOwm91o69/NWfucYrt2lN05
	 C7wjwZEBHRt5qsKtswHWTLbOfHpklX8j+f5FI8sTJnmUTfO5FktCQRImjAHaS4TUY2
	 YnKh0Xq7hQftXQxJgSsYbZqPpLFvbxCJtGnSTvPzPY/pa7BZMuon3+0XS7Edxg9I+G
	 HFs2+bvGKwqKi9A6hN0sKbCNdN1FlAOcKEjM3+NND4wGAaDRlgcmIa4pAeestkiJcR
	 mxwZJsgIbvw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9FCF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703615357.26707.8562289807341381666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c262d30724117009aa1e2c73a5345ed9032c17881219ba7867362bd1a49a4e
Date: Sun, 22 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727036153
