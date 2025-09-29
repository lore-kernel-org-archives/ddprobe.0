Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C9A2222CA
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759170594; cv=none; b=pXy15YaV4eX7FtF7OqGlgZJPz/5a0DvO+aaHHEkVqzTa6GNq8GI6YjxWOnABf9hzfXgPEkOc5qF1vIO2uMwVW08WLRah9sRgkK/ygHHImxfVTNWGZmsxauDePmBoeus204E3fsHETrBxKxIGOqqdeN89EyBouNtLARnrhwZ4BqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759170594; c=relaxed/simple;
	bh=DTJF6GWD5iwE5/CwUUDDKjaoXWzQbPQhQHzK6Z14eXs=;
	h=To:Subject:From:Message-Id:Date; b=bTsbewbzcPymhLZXN3d3az5frqZu5oUCbxvPCpvsc/WqzY+1xSfrbf2JX368I44SlAeaBp9ZGuzYdSHt0IvA7PVmbiBVxHB5Zd+XlaBCjhJUTSm3UcwI+tl9Y6ZqQvie/nNM+2j9j8yS6caqr/gTmNUYAYAjedgxCgAE1T1lfJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5TneFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5TneFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9DFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759170593;
	bh=DTJF6GWD5iwE5/CwUUDDKjaoXWzQbPQhQHzK6Z14eXs=;
	h=To:Subject:From:Date:From;
	b=i5TneFbM7GLRIZQy3AyB0uuqIKTFZz7pd+vuEwM/a+JMGDHKoMC+/RlQWp9ChOUT3
	 FukXTkCdVrvdDUlgrKuDXt8ZgZAJuzdqVKJH68Hcbw9FMr9wTWx0kYqS2ebAoD1Rho
	 Yns+JPXoFspZSmxXZk675XC6r8JKolRgkzeeANPJT59x85hBItTLH7Qca7gEZwxYPB
	 CTDa4hxGlRvEMRxpRUfReMESItTpekrjcmZUrQKrCf+2uOsHg03KCDWYy3srWWdE9a
	 wLT7MLGZ9MC5cd+guLNOT89cL0k0Ad9nqKfifqFGgnBspMsLWTqmNByQz2L95OMKfB
	 qDnpc9rjTaUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9ECAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917059359.13076.7921098842814579840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c6b625abf6e096e4f2dff1eedcc87c805fc5c30d2a6e36707c552adab4516e
Date: Mon, 29 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759170593
