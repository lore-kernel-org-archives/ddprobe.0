Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D034AB06
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768290234; cv=none; b=bbVAFGsuoZcZOcBffalnLNKKiw1+JG4aG73RwZxTQ09oQVqeOsUpAnNAJgnDxqvAsh/H/HTko1rc6DShLLdCukhoFrSruO6P99JxyDsOim0j46GsqW/KCF1hpVbg5CW7b+ywM2/JoSmzJbqUTiGdD09WkL8sKzahHEYgj2EquV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768290234; c=relaxed/simple;
	bh=i0JF85hxpDAUf4WSR+KfCeGAUePsNu7mPHm+BFQISKY=;
	h=To:Subject:From:Message-Id:Date; b=by/50n/gMmkxZkoUO5Gv07wK0LCC35j13AOwxDydIeM2/dkDLneWnWORF0PXFGvbIwcEBDgW3cgCGF8EpgC6Drd2I5dRyo9wLfraveZbtcCVqcx1UuINWVapdJV2V2rRkr9qi/Zvko+JiEdSs1IXmelyohwCEJQbYInI5NW4Wik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCt94COX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCt94COX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7160C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768290233;
	bh=i0JF85hxpDAUf4WSR+KfCeGAUePsNu7mPHm+BFQISKY=;
	h=To:Subject:From:Date:From;
	b=fCt94COXtgGKMDn6/ET1t8HUC4qRh6oKJdnWV63EF3amxTI4n6g7jjGeW3NXrV/zd
	 q6w+v6Psw799bjmhUNwnEumTvvvvKbJeVipXG4QuUsOyrQgauOEY69N99xNIRB4NSt
	 h+V/877agbNkAWJRUj+wBCIrk5K5zNA5CFNSzjpp9bOjUOrAEDN7T7lCFnOB4JPutx
	 zxIEtJuakP5nUoVWK3UKuTAkdd69+Qc0mL5zB07QOzMTwWsFZjMjTEshT+JS2pLENG
	 BOkKB0dQI5a4KaVBPiJ6am8p61lpUUAN56aBormqmHYac97+w6AK+yO7+BBIOIkfDn
	 gRGi1sMp3p0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B24D29DDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829023357.11262.7671139813214776781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19359016ebd21362cdcbfe224c70795f42beb805cc26740b6e4d9c1a0ac1ca4b
Date: Tue, 13 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768290233
