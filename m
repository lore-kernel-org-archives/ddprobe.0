Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6548A1552F8
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713936623; cv=none; b=MOISp8wW8lH2UMiuhG7/kHXrb+6hiaJOKEwa44vWDmnNhTNzJWGECpeJ1dU2967tHd+tbzKpHrE0gN3d9NPyG8n0j3N8ANZtFvyfDFfoKjIb9XP9qZgfbnm2clnUu6U46SfEV6Q14JoC0S34vMhyusXz4dc+b+gcKbX+yWOHIgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713936623; c=relaxed/simple;
	bh=Pgx+/ukMDNEh9L8Eues1fWmc/1IROw8zXA1EzWBvT5U=;
	h=To:Subject:From:Message-Id:Date; b=bFJSfwSgEMLZtarKitYw8BRAVspwk8i0ezGP4Lt+W11n/lejL/iSGWahrApWAWwbUysofByonMpVBE8imXRjbDQY5yWSiRhUHGRB9CoxflpEvZdu0mEPv4aqTLxWzajC6tSHvhdFjn2lROYLvbJ5/AX3JxQQbvvNCD0bGMviREA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhwGvJSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhwGvJSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0E7FC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713936623;
	bh=Pgx+/ukMDNEh9L8Eues1fWmc/1IROw8zXA1EzWBvT5U=;
	h=To:Subject:From:Date:From;
	b=jhwGvJSHMTCN5L9ppjBPRi8GFYN36EM0Rn1b0WAaIpXOJfhhNg2k5rXbF7uEOV2gc
	 Ii8EpHIkaLJdEyw0twNDZRAjJbs47eE48pgfF13i7qKZRwnaOrm5jlrpI4NHWuWUvh
	 5Y2i/cwgYNI1NQv9YqkLjY1PKBOLzDS6b4YjW3dmr2uZd4Q5uT3d8tSKA1uksfhs0r
	 hSRLJoz4CcAjoh834nqxqTXhMeBGP7H2qM79U1EI3uN+s7Yob6Zddsty7RRlXrHOBt
	 aXqKlBYRiQciKKAZvA0biTlEGG7V8wDGtRvHxLnaPHRqXM99DFKK+pNUzdlp74GGJE
	 4kBzMyZ0QmRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7545C07E8E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393662284.2081.6569010796948733396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8939b9d151b699f9c13bf4a256e595d5d9282f023ac9337597a822843a5ebded
Date: Wed, 24 Apr 2024 05:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713936622
