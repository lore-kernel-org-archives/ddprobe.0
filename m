Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FFD26A1CC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756452594; cv=none; b=aYHBuzyON0LU0q3UDD8iDfo9z/f4IC5n+Qfa8qBCJ70Mt6fNM1NtAgOT5XRIhlUP7txZblNp95HcVkncCROou4jD4flfszyaHcCPK+bYx97SFiFqptanM8IdC+p+SaOvv/LUePMt2ATqUrCv8OFGZsRs2mpZJtDPbb3bfH0NhaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756452594; c=relaxed/simple;
	bh=KHq0gDY3OAPRhnxhplL+w/0xcNfT1iFD+zlUQZIn9NI=;
	h=To:Subject:From:Message-Id:Date; b=uSme1SeDxMCJ3WlE4kTsIJPvzjQWKwGvrrH8mQNA0ircypG90FxMBF4vzw8pnNCW9sE2KqcUA2PJYMFKaVpgZ+jCw0cILgwaDY9TwcbJ0e8Dh7JELKJiGnJfnyYmJnilOrtFZ/bgf2hRJ39Na+LF9Vjtbud+fPLh6080hpo9AXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPV5PqSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPV5PqSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D016C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756452593;
	bh=KHq0gDY3OAPRhnxhplL+w/0xcNfT1iFD+zlUQZIn9NI=;
	h=To:Subject:From:Date:From;
	b=YPV5PqSQ52DykZe+LIVgJvBYS+PcnXxSvNM70AhohG5w+ok+jK4gpLqb0v5TCCZru
	 QRLsi0LnenfiFjmupkcdX4I9uRV0yYRRq4KW6hEqsUgFBXbBT/Tqsk+MAzPjmZTU7+
	 16CAcCdoECfYBkI3vS/6cDY2LrEWqwqWW9Cagku4t08C6Of1t5tsmPCK3LPVAoTEAV
	 oJEUPMM63JO3KT1WEQG1ExrUlDxQScdvfj6EHwcTJhbpH6Vba8a9/KnZcxb4thCM8V
	 tLoLYc8Mnll33I/pmGg+v47yDdRYgRADVlRSd/j7r8Fp/ajqjuNbIqwWGw5v56GmPN
	 3a4TwAdWnkd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F240CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645259357.22770.11899203281955660016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f333849072508c3dbbd1e1b1f608e13b25809ba7ca6a401839c72b083b2139f
Date: Fri, 29 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756452593
