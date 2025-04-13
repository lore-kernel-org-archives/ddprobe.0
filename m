Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D52C17578
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744582194; cv=none; b=bISyk6lkHMe4nXkNYG0ayQAx0HOIO7z9nVuHQxtWJNC0D/thTZ9EDe5kBIi6xE4wA6BWX340dZ72W34sJB0FP+o/oBxnPSeM+mKlQsmEHaN2LyfQcMY1ip+DAY4BtJMBSyjO169o4HqAItpP4ZgOBBwo0QptEUu8ElwECuYOdFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744582194; c=relaxed/simple;
	bh=xY5p50F0hMBK3GOsSAKprmWyT2Z6YdLLLIxJHP3CZM4=;
	h=To:Subject:From:Message-Id:Date; b=jD4ZyN9GEr9QpJw7i65vyIUM9s8elVAcTfkP/MjmRqV8o75xs+KBkKMHZlGtQNBfGl6WpcZnmGDj0sRVDgVpWFeJrdwizPN8gHhnpJHUglLxRkW0ZETvJaa02HLQKSHcSmFRF7ku3kdbDEqhCA7+j0EGyhnjYFTmWJS4SKxnruI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAV6dat+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAV6dat+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B9C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744582193;
	bh=xY5p50F0hMBK3GOsSAKprmWyT2Z6YdLLLIxJHP3CZM4=;
	h=To:Subject:From:Date:From;
	b=IAV6dat+di9u4lNIYovJ2itWPWvQOmvzhvmlsSW86wTlBIVN5aQjJp2/rdbVLzAFs
	 D+BvBpXMIIxAqcUjpNSAWNfwtooEIUD+63eivaEE/ZQS4bUEKUJO9xiDQoKzekY75y
	 eERkWnAM+c9Ic+JPPM7DRbf1cddOFyvEDGXv7E+cycSssK/WLFJatr5wERbj7TUs1G
	 J3knny8yKW3ZqBIZ1MeTuhjYnmdpWVkE0We1oK7KMiL5iGJpGnjmHcJvCsWjEj3mH5
	 JKnLbQY3VJJak07VU7B7HrD3CxTtjTRgXohqpA5IBA7jtmF1B2IQULDUY3SP5mEXTf
	 //7JCYosgXvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D845C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458219363.25443.9682425855973863613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd00ab97723db8a7fb483e65485bd8134c83ff9a91e6baf2884e75ceb2430950
Date: Sun, 13 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744582193
