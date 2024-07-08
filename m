Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420FD53362
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720432583; cv=none; b=nwuYojSXhEKlHD03R4IrX7LvjcUx8A/NehoboCRZ5bTkEabl5+rtevOBkWJ/MaqvV0OgPNwN0zl7A0n185d5wHNCCRzMUCjygYCPnaFcH+G9cSOx7oovKc/85ri66M0yIW8Bp2mYuYkOGIlxViWnUUbF4riRRsIQ0nsv9M212i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720432583; c=relaxed/simple;
	bh=7TMiyK6IVvy0SPbtl6Nme6MpdzJJLqJMee79yvmhMyo=;
	h=To:Subject:From:Message-Id:Date; b=KATRm4pbWDNIAGF/SgDkIdoRDpxNxDdZyL/vkzbsaFT4volYUvTPGC6t3oZYwnuI1ejEF7VO/PHASeAi+3gM9D4Rqv/NLdVUZZg6c7dBNZh1AMNv9KvpP/031k7vOlKAlgmwU4FWxP6KzCmc2oprJxx5XDljC+6khksP0w7/BHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdni/4EU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdni/4EU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8198C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720432582;
	bh=7TMiyK6IVvy0SPbtl6Nme6MpdzJJLqJMee79yvmhMyo=;
	h=To:Subject:From:Date:From;
	b=cdni/4EUgpTMXYWoUEYomrfswz4SChGN5KQ9gTFGqjiZK3ewm4kkRYgKaQFC5L7+m
	 GLXdVW5wGqMzeoBwiVnLLXYajKu043ssI320xThkM+8foA9pPD8ZUIFhC0Bx7yKjSJ
	 e/bbxk38A//YyLpxx8lx7iWLtnclW5LmFUQGafPHZYNeO3QUS3DE4hZAKs+wOQWnNz
	 ZekKO7NSEUL+SpGNAv8cSND2AditoJdcu69Dsek/IJu0IxSVpoLRpnBvgcq60mV6OE
	 hsPPyBgL/KZl38U2sfEn91a97xQDn1hfhp0X/lR6nKZzDQxzlbdCukwLC84mbGE8b1
	 iZug2CaGCh58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BC6C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043258281.9495.13038984336093728486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91847531f237508da0d34b5e2096e686ac4d42754b4be07e4789cdc7e8fa0a77
Date: Mon, 08 Jul 2024 09:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720432582
