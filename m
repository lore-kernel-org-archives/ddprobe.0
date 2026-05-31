Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A7834889F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780212874; cv=none; b=GTc9nTaP/jAIH9PQtTuxJi7SKgUAmMW7o7ssf7iJlvEI5QM2QAUPqhfaNf7Jre7qhM+FumIb/Rks1e0aSLEYGlmdTYZ+RHUYDb3knM59ePhKVUxIVZAwvWlPvanIKe3WkoR/itU01Pwo4F3TFbNieQSjke82nC+rbArzBNh41Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780212874; c=relaxed/simple;
	bh=1szFyWw/OGS6uhL+UFhqUfiMaD1U/+WA4ZmqmA5UZPc=;
	h=To:Subject:From:Message-Id:Date; b=a16UQyyfhRbGMO5JJ9KXP246hikA9uSzalftt89Q9g8wtlwct2csIy20Z8KRboKGuFmMMNxPppOMDphq01B3ENX7TAktZ03RjgxPIhuI4EhmhXbBif+9xGVCMal9ruyqFA2Wekj7kgfbPgHl5mwmp3DZxnXKqdGfUDrIIhh9rDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNFkyVlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNFkyVlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7165C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780212873;
	bh=1szFyWw/OGS6uhL+UFhqUfiMaD1U/+WA4ZmqmA5UZPc=;
	h=To:Subject:From:Date:From;
	b=eNFkyVlVtIpCPpQHFjX797ix4gncNqlD4TDNUDi9hipT52tY5zVZ06aUKwUSvaWTL
	 D5oSp9AJ+cr+ZWl26Q4q0N5LUr5kx0Ed0sO7lsgbiVXANBq9ZLyhISOrxZjcvF7io9
	 A587W/dCWy3XcStNgMF2pbaHFUOF+YJuMRWvXPvxpQDn+y9x4OdJ6qBBTbzVidnHvx
	 xGa3naNhV9PmtUCABN5CMk6nfuYRPh53xP3DKkPqesRatcVSi8ir6etFmgP5hw/xP0
	 MkUgJdEwZDeFK685wJ3aHizHYfIygLT/QUQGRAbpkVO6VjSzpsgB+EsT8BbSNGOfx6
	 2UgbpWszEf6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE24BCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021287368.1334.11693228236046307602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f38adf87521c0ff596769c7b35826828b61a0afad2de5096ab8e0a87f0a9f2
Date: Sun, 31 May 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780212873
