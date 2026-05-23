Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3716922A4EE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779536554; cv=none; b=hD4TRsTvTvtKzm0Gwq2bmvTkTVP6sechUb9R8PFOHkOzt6H/62Kfogv2TsHOE1AG6qgX5zjaT3iVf4O7OayGmX42KzkOmhzwbUFa8S+y96JGXc9bYjL4au/RcUZA3A3m+BFLW/q2AkbiDaviNKnjHb9+7IBUaYekkn5OZKSPKfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779536554; c=relaxed/simple;
	bh=Z8kKZqiV/2ohlIpMM01UPpFJTCMHNIt8VuZVW5z0dsk=;
	h=To:Subject:From:Message-Id:Date; b=ISUTrWOeX6KLK8le1OdHmJqmzhqf8Ro0wWiSJ1pJgbbu7dEho9NJuLB1RfmPIdIUhH08tz0eZAr4Vc2wgrmzcmHv16RvKmx7gZUrcnf29QQg0neglOA0rCf8B/i0KYgdUebGq5aIpYHLYimsagxKZFtCVEh7omThnj7cLwb0bLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFhluNkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFhluNkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC511C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779536553;
	bh=Z8kKZqiV/2ohlIpMM01UPpFJTCMHNIt8VuZVW5z0dsk=;
	h=To:Subject:From:Date:From;
	b=KFhluNkGzxbL2lX4bOxzy4b2Irfpo3p8EjYDPhiyDzJqKxBkrR8wCdT/GpnO+R5l0
	 k9lam5F6Le6aCg0Lrozkdq1gAoMntL97BWkifSybzASrGsKaFUiLnub47A81uQRegF
	 eD3h8YhTx4EfgLgWiCHfNFSi7IWX3o4M4cw5sh9WoxyIlq/rxKKUfwKntzN05Rly0i
	 rAqKER0Co3OE8GmgoGyJLL7agVUXTjADmXqGfvdD6phjSiUxLxP3WqDKWyXwYVjlCL
	 mA7NSFZTlvqIrlaTmFXS1tXYgYXfUQJFli0pvmhoMHl9sAmIa0iT26UqWYUUICfPiN
	 D80v4cKQB7jbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD98FCD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953655368.19117.14964595367411026970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38afcea3c7307f1486cebb35cdde799ddd24ef0759f6c0aded3cf75ca5e0aacb
Date: Sat, 23 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779536553
