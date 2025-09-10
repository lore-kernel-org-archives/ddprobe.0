Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D4930DD0F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757491794; cv=none; b=Abxg0vA6LO9mlr6F9ye4iu/HRp4Cm+AHy7P+gyDKhPa6unLHtkyBOWArhfzDyYZT5FB3KKlNxJuRPHC+Hq/Y9MvF4TdOEqqG4jLPlx1yacVYzncndSKlfZFA0hj+ajUoRBzSEJ+deGEg4TLQ7WvUO+CIyS/Lp9Ig/6ipxLbiyaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757491794; c=relaxed/simple;
	bh=xgqEYsNy+xctZHZreAyGJvrkoAQLHp+PgfiICs0F0pQ=;
	h=To:Subject:From:Message-Id:Date; b=na97pF5AWie1zYuKAutYjiQCsWxiqt8bTY1X+w9HgONtAHICe8M3TOsIPv1Zphi9WKWyvoaWBYPQaqXkdLtnPSqFulNMGije3RNWaynlu3KT2JKOraTz0JNJHEHfBwYLGN7wDTg7st8Lu0T8fPk60Mc6BGxaQA/NIEjJkoKweys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa5E4YdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa5E4YdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C640C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757491793;
	bh=xgqEYsNy+xctZHZreAyGJvrkoAQLHp+PgfiICs0F0pQ=;
	h=To:Subject:From:Date:From;
	b=Qa5E4YdS8RPKyyM5gFxTFBDF4cvn+dyywoKZeWR/UimFsKx9Rs8nMU1cIy7d+P6Ca
	 IrLgJKNeq8eS7umqzfS6yq+GrDNl5qO+mKjVRLZW48aTq+h5xqmi71+2+5VLJQXSVf
	 2lzWEqccmE3/bRitq6YfNGVBE0aNe50XqaxsGCaYB8vs4dwke5TOD7dT8OUm7f9DNV
	 FcFL5MMttRKz6Kn0y7y3O3G92mJBzxi5D5puqkdmOlDplLlF9qriDbLDBE160xAFbP
	 c/3Zf8Ktouh5OLn2OJdvP1grrY3bsQezA2gRR6mxNykdQSyHBlVnAomlyOitppN3X5
	 R5yooRZX0rGGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE14CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749179357.15600.3757984196328847970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515cc424b3ded3b03d2b2f0b30f9372691e41b2e4cad2b29acef4d92460cd4c0
Date: Wed, 10 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757491793
