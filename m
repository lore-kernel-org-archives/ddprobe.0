Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F562D12ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757537995; cv=none; b=bqatNz5dW6oUzmIWSQLVFMV4Zem8Ctg+or4sZzXHQR2jM3N8nFbxhAgmXczIIdrTcIwerdBn5yklGlt/jHxCmZaS87fJXQJl2+0uQdJlncP4BKafFJrC85aUvNwoWFNwIrg2n2oBa3PGsy02DpEw9AaR3PUapFYoq76prKbfeo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757537995; c=relaxed/simple;
	bh=STdRQ5c89eVckos/u66cbtWOSNVEbHK4Rzr+IhPjq/U=;
	h=To:Subject:From:Message-Id:Date; b=mKeMWVoq/uFC849YswK++HWydKSCCWwR5vvRjrj7AikQEA707B0wrX/+Pk4ySrA3Zdfq9HGwlio7pHa5ktGlKV3bKY7YXT2w0GOSHnOrLoqVw0zMXCM9P0Hst/u10Bsyi1etSZ1f0hJVsLsg7xk9GeCqBfaKI9crjAzHjbk+IWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn18HLsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn18HLsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757537993;
	bh=STdRQ5c89eVckos/u66cbtWOSNVEbHK4Rzr+IhPjq/U=;
	h=To:Subject:From:Date:From;
	b=Jn18HLsAO1+JHp/WGaCEDx3XBIIYxtSZ3xMNuTdt6RJoj53JUS3PP9kQyjI+lj+6T
	 /yPLBxiXmPMg+t/qT0R5gA1tXSi09T44hpXYXtBslT5wRaaWs96Lzq7h09ptDQWtyI
	 PogEIT6kE8vLFsSnwsn4f2tc2fbDfIG4WjA5DftTQDL1/9hfae/k+oUsx2Tez08+qP
	 hhCXyGG9sxyksc9GbqavAvTbgotneFCCRb0xs9fKnVRCQfnsea0twYeko+UX5J9niG
	 gbHzujTvbgkxFe86LI/J9cBDtkF8+7MmYVOzQSJeRqC9b388lVKqAwfXNk2ol3R1gF
	 SHngdiCnUoAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753799357.559.14668899446373976653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d531c0da2a32ef626f4e373477c99764ff68e8b490dcda890127e878d04914d
Date: Wed, 10 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757537993
