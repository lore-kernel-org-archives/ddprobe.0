Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7123DCA6B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787185234; cv=none; b=TAyppQYq3e25sDEdO2tAja0WetKimHrTdZGvxL/1wvW379BzLT+svce2pyLM5nxa5+IsdzmHnOZwNbds5CoWqONafkzHBMKBr5/4tms1s19sDP+i1LgMDNAN41vMXcFyv35UxO4lgN3q/zpqsFRyW1gzVAvVAgj7kSsy80Xt7s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787185234; c=relaxed/simple;
	bh=bgwGBNqJbLL2W1MSjhTkcZDt0RKyjG6mOL6g6GNzTpU=;
	h=To:Subject:From:Message-Id:Date; b=us8f+TZxYECc3nkv2hIKzSTJAlRwtPW84Vd9bk2NETNyZh5a+oDWsVmpJpNFZNu1BMunaMNyrtr2kgZXvP7HBS2tia9w1rzhHe5xp8xhCHJ2Klm+ebtE1VhCp0K+68/BGcttrnsC2iT9zvLzDQV9zpp/awzybj6RKv4NqgihinU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azJcvANS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azJcvANS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1BADC19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787185234;
	bh=bgwGBNqJbLL2W1MSjhTkcZDt0RKyjG6mOL6g6GNzTpU=;
	h=To:Subject:From:Date:From;
	b=azJcvANSJG/DjgpL6EwQZlzAr97IdnaPIYCRDSSzqJFAEPHsNEyNNUnDOyDN0/cXI
	 bls4oDj31u3GNhTB33sU+MWp9AlkgUhjnrxBMFZ+sL69z8E8SoLE1dv8Dt9Q/Ct8//
	 5K9Eb7dMgVBhPRHBM+8j9MwRPxt+NcKdQxQo5VeHNMOGgJnp6xkQzbc3PO5lYeAz2x
	 /6ZMlnlMHj0ImvDzHCqO1yjLtzvLKUjbv0ssNcNsVZcsGQCk8KYkV7kBOdiIvKYCZh
	 TuPjPzXPP2FI+5LDVVBAmPgFC08NFIyCnI2uO3BmnOFw2SfwE0oAQWvJ++i/qY84iE
	 HFyDyKU0R26wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD847C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718523368.15912.15049754390546763971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a69ca9e092fd29c6cd6d078d1ee9fcf4827242dfb5f21d8cdbe7180b3d5e645
Date: Thu, 20 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787185233
