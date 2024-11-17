Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11284F9D6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731819354; cv=none; b=MvcZb9CYEA5uK8CsAbbZ34DydyuqoUhgJ7vvEBpkRopL/9yEuot4Qsjeu/LbabXk8ga4tOp1bBjhEQ9AfFW5RodpgLzl/OnFK6FxlxrUzWcDAEik4UZFIOuazLRaCZQVfdrD6rfGj3YONXEBs+0qgQXsr5VLj/FHqq6bEL4BdZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731819354; c=relaxed/simple;
	bh=REB2IBLM05HtULCPcN4MhNZ3WvWyzIGaiURHoDUhPuw=;
	h=To:Subject:From:Message-Id:Date; b=jj9SjBDVo72A5rsTX2ofPTTawkUThtXShgUD61U8pbIcqDPr7/fWyVlvtJpqN9NkH6Aj1hP3FSZkRGEDj/jEK+vgoZVjWH3r782Pgq9y8hctTyQf7W4/xiZzmYF9ZtRLQlzl3Eq6a1GXHihS6xWhKXDDETzyijCpZq8S7HVQwFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5WTb2Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5WTb2Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731819353;
	bh=REB2IBLM05HtULCPcN4MhNZ3WvWyzIGaiURHoDUhPuw=;
	h=To:Subject:From:Date:From;
	b=R5WTb2Qir9aF+21wom44WZ+IdqevpRAlAio4hna+/6+JfExGwtMfg8uM7lKF8VtHf
	 M1RwvSRTtwKW0BrmL+EUzTnR0yjy4/crBTiADopP1tSQT3B3Z5ssQHNrcrtNyoN8Gu
	 UbY97qE8zeBgedmU9n6YrNhCZg6knpCVSAD4Bj98I6JXCeudeuHQzSZewCA79jBPXv
	 kVP9GesTxwz6qlhG5bwDeYF/tkSU1kIoPpR4YZKqd0x1YZRDnM7/ivrQDqI58+WHwH
	 cW9deED5gMpYlcFhd21sVgkAljslagRNZleOlfjlqJ3Kqk2M22LAJ27k9s9D8aw6Gv
	 Nr89t9chK6KAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99278D68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181935359.8782.10998292576313116479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e024e48175299f59123e55f6548b634639cfcc89aec7d044068080e20b655085
Date: Sun, 17 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731819353
