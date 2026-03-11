Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C072DF128
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773264294; cv=none; b=PNYaVgL7D8/gbszsKytyNo4lOjzFehDv0kXS/vjod5dhYzzk565KInMCmB6XzXpSXizw516KJ4elg0qP0IxfV7KDN+TI+HbK8MesYRUy6DkP4QdleYS5DXo+Y1IF2mb0cT8AH7/6ls+RaSbkw7XepsX2PReZ3BHSU0grWu1uKbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773264294; c=relaxed/simple;
	bh=UoyD99TSxWdB1hzNMMJ6/L9RL+6sWHiapaM03Lrk+j8=;
	h=To:Subject:From:Message-Id:Date; b=r/501ql/QpBXwedo4UFPbzR89v+rmPjbsTW+EAsB8L+nDN9qQHL6J6F4D93RKOYYXjDfanp4+CARKz//G+ud6NIib2AzL02iFoxmrr7igWOJgyplIr8J1Sc0Pualy8cj31zLdY+uPnF66hy9PC8jeB3uyfQR9JvXKDFj21ZWB1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+0vlyQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+0vlyQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7656C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773264293;
	bh=UoyD99TSxWdB1hzNMMJ6/L9RL+6sWHiapaM03Lrk+j8=;
	h=To:Subject:From:Date:From;
	b=Y+0vlyQp253rlU+v0249aeJybR9qn1uX5Ex5rRJVlc1ZbHB6/Si9IFQlU4VbMr8TD
	 v/rnuOJqOnA0TWKZ5bSRZrTM8A/yG0wE2PocaodnrYx3hgmTQUby4fQlHLcSyRhaAw
	 CJlqSa6TaqlZY3E1vtcEiu349NqZBRZX7vgv6GoB3F8XFzbmUn71sstDXUO8OfI1oZ
	 8CfecA3uWaaefQ1bJk0kbmxcnBI6GqEM68ciuX0hoxLdlc3XrYqrECrVk8+25jGCS9
	 i9b3JicFgFkYROGCsUPTFKDxvTka1Zr4Lv/bzA+z7Op6KjMswTVJJ6CW1YlLJEQL5K
	 reEtV5MFncYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C89103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326429358.29783.5908296875190704579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b34d8740efc5615fb1ce2c654ff63a3a4e868bd8fadb8ac91bcfc7c174c711
Date: Wed, 11 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773264293
