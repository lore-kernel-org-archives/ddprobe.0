Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9629898B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991294; cv=none; b=N6X1SWu7xhk4D7pg/OIMypXo+7B6Mko0x5LOgLTfYn3dP4+lFZHPRu++TXsyN8M2cZqIg3Cw99ZUZ8f/gXql9mkxDjWfyVx7x10bGOvFUvi0OSJJU/lWYnd1/P8IOS5iQYGutXSIg25uK9n9YnriqmCYyTijmkL0gn2QEGY1Nn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991294; c=relaxed/simple;
	bh=+Y9X/rNEQeHcWIkfwN4nX2hyahlIBd/EM11PQTMhpAw=;
	h=To:Subject:From:Message-Id:Date; b=QhZCZ1K6e2Pn1eEj+AXR1MHDid1XSfS6D3f4Fc/YuvjyZOtk0sGnqzopTSPiKch05gQ+Cl1Je8BGdJmFS0hgvxps5GnEHYiv4sxL/WodrHa7fYHv3opIJOoDM2EOqSY6lQntB5Jnf2bJbyJ0qQzdTMlqo2JyyXCo8qgdhOIgq3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STD6FgsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STD6FgsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5B0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772991293;
	bh=+Y9X/rNEQeHcWIkfwN4nX2hyahlIBd/EM11PQTMhpAw=;
	h=To:Subject:From:Date:From;
	b=STD6FgsVxLKhPk0IopHLww62r5F7hYHJXQgRhpBSP2W0dhX1rZixkBXWsXri3Yf6L
	 JHDJMfhVokqg6PqSM+Hx8j6kvcSuPWQpK9zyjPGGVMyRZTig4VjVK6bl0y6Tzx1nGm
	 ua/1mKDRR26Ko9rsPbl5Bp0y/bJrDUrkWd1VE7hU4sp7PT7B+Z88DvR29KnyxbH5iX
	 s4BU/0UONrhY/UKnPiMj4Wvz2X2Z69t0BpWszfGi8ZNoEtxwVr62hIHfXAIW+1H9s0
	 svhQy45S+3s9Cth12nI3eb00I69v1DY4evEjnSjjB0znp8mUKH1d1s6IXU2cAhFCyI
	 SI+w+AuYQtT6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2D4EA8537
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299129362.11136.12530294621517587978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1da648fd742047b5338aebabbe3aa5438f66d05415622d17bba075959834160
Date: Sun, 08 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772991293
