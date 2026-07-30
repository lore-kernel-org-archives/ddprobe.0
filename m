Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5390B423783
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785417634; cv=none; b=mwvCrbDyqj3mNDeuUwtYEngpg+ySNGpr/VDEIJzydtzxTQmZtPmUZnolBcWTOyRUGPpyfOzGdIooCU192v18BIOexIpSgVoIqnj+2f9DIYWYFSxkbBCAXRdv1mV/r7YmoQ1Sb8Z7sfDnP2uZ7q/K5TE/V8QOTOGonKzWVKsnmH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785417634; c=relaxed/simple;
	bh=aU8K3Mf+Q/GKZwp7dbH02Die1mWNthZ8iWrr8QYrn8s=;
	h=To:Subject:From:Message-Id:Date; b=SyvWvqF1EvMNEy485PqEe0OkkAfgeu1i7BHLrof4EhnPy2CTpxnH9Oq5NQ/SZs+nf1MBwpdbaTEt8aM1tJdzinmofQGMAzP+FzRUpvVHclLEWjp1GXhaIPotSUWwMp00PnZHVbZYT93cxMSQtWd1eWOGWtu4mwGEuH9+oEKVa/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK2CjEaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK2CjEaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EECC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785417633;
	bh=aU8K3Mf+Q/GKZwp7dbH02Die1mWNthZ8iWrr8QYrn8s=;
	h=To:Subject:From:Date:From;
	b=jK2CjEaCXSBdFH/0aqT5USlqh840rcnE6HRmmaEBKjBF4xiPkZLK3Et6DKk8NLzaL
	 BgZo3lRxOV5Ao9QzKkRksH33Gu8LQjo69I+oAB5G6SUt8LHusaskVuTaXyozKdKcpy
	 7ck0/f7yxmlFnIkO7li1Md3ApruSHbwjAgcDjLuKsPiQfeuA04rMSUALjkQOmnLVzo
	 nfK+tOgnZg6K1rIJ1GEHR33AlgPLmBZjoAVVC92vZ8qCZ8ET5DskVF8VrtElNa17in
	 jazciBqthASEIXHh4FK6riqwhlBJhLMCLaqgHpFCe2E8sCSqwbu13PmFAJONn6l9OE
	 oUPjP/myiFXmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B21C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541763373.23455.11158083993474879107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3ba413173d6b28f51e76c7132bb908be646076e9b9bad22762ccdd9e52ed61
Date: Thu, 30 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785417633
