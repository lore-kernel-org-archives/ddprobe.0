Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70236329E7E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545494; cv=none; b=tp39vlejbQPk2piz9GwRKwVITax8maOLHNkCsPpDhgcuvQB3BSn+7kGzXFut8MPelllD/US/2YNzCfvNFeteRCBylSW3PKyoZ61Qfdu1eFAskKBxqtbUrCg5hY4lVS4xtTBX8AdkEh3kiotv9XEpXE9K7RvJUPOUZzgDPO3EyGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545494; c=relaxed/simple;
	bh=6ASXo2njSph/a3LdtPgljtHctxSd9tqaPks67k7KiGs=;
	h=To:Subject:From:Message-Id:Date; b=FCbtGpR1gKjY7mD6Kz0Biotgbdl/RT+6JvRilrlt6dcsCZxEgGWWSGC9sMpm0E+wc/tX5ZpBr9kkCe2x/FloVYAZxz9VjggUTxgBXD1yGmSCaJIW3EeJCa8/5V5KEAHGxFE1L20ixAQUSFYB+TPhLksGfn6U4X/oZYntyiklC1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El+b7JBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El+b7JBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A170AC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772545493;
	bh=6ASXo2njSph/a3LdtPgljtHctxSd9tqaPks67k7KiGs=;
	h=To:Subject:From:Date:From;
	b=El+b7JBbqKF2ixJ4v9T1agNKoEadHg2b04n91c3nNu3gnHy75W7dsepNBtv8V5U7E
	 GxkkDzpIqSx8OUcLjNkxCcuEUFeOQTPo12hLWLpRpPvcEkO66d99oqCfhjFzgfMlha
	 a9Tie9qHcGvjOJaqb6JCX7fRkBYjo3H+TkrV0on+XmTRaozGErz/Zq5gcj3u+EiNfx
	 DpF5Sp1P8P//WKQElflbpMOeYFXHC9l+iiaHxvlp9ICvnXQRErZ68Dgt+tvcn5qUf5
	 OSq9xt2c9YhgB+JxFd6ePFbDYbI7ICAg519dbRa3cEKziA0MwAz2+vICLCCYAsCj4g
	 4JaAFw0ouYnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C6EC144C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254549359.17972.7926391687593926096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb664a5e0ef3ded71b313bdbeb318438c69422b47f04290648616c3f73e232d7
Date: Tue, 03 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772545493
