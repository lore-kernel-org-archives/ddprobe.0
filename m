Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD29233941
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779513154; cv=none; b=oUbze4FJv0tnEfOCYYWXWtPkqiS23A7pO7lLWTwZq01pBWZOCxIVWqOQgJMQ5AsCQsAkeAVtFY7ZAGxHzu3GRAZHMVX8BYqkr1JbdzPqW+MfKJJ+sWJqWZdZvVfexmKUMMHr1ilQkOwtcYEj0GF/OIUKwY84sNTupr/h0l9qmWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779513154; c=relaxed/simple;
	bh=JBwMie5M14TWul1HVg4QtY/RPh7lX4bUdUrflJoMyzE=;
	h=To:Subject:From:Message-Id:Date; b=oVQ2GM+PVP9btXJKcedhZ8y+WOzXrUrhBSoYo139y38tbj/LnCn5E5iY1oxCypSSW/ZM5LDsZoIfF6yJkoMj1oBRewejhXtsZ3KaJCioGTH8v/sc6+WHtT4h/alCF8z4gmbO4ZfDm9Tm39g36yFv6avrfca4+fXEA0PV4hKqKh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km2g4u9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km2g4u9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38FFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779513153;
	bh=JBwMie5M14TWul1HVg4QtY/RPh7lX4bUdUrflJoMyzE=;
	h=To:Subject:From:Date:From;
	b=Km2g4u9RNWk34Paxb+zW3om3TNLfNUJ1Covc/ORnE6A/lBV9YrcjaSSnjBcV4+ZOR
	 zenzzK6oVh1MG0R86gAzhQvDtbwv5h9Z/1AhnMCH722z0nSMRu9WqgNDu+8uBIrSoy
	 pME2N3KUAfkmYQAonAWPfQs0lGFWBdDMICaDh31Ike3F6a83NAMEnPvEGQl+n9Gpti
	 GnOplikI6MkvjlCgBkiiulO+yQZyNs4482zh7NrUrVPx2htm9FLlz0CynifJmsPQSI
	 zvC/4G3ikKi47nL+lt+KTXH/nYFzCFFGKo3gat5daPPhxQyqbT+vc2crNO3XnbJKEA
	 qhfr3gcYAmUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA8CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951315368.10472.17733570262497919808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71008b5f46d42921064a7180bf25516bf2a0808c086a1068523b4c530fa4729b
Date: Sat, 23 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779513153
