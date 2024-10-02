Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD528E7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727840154; cv=none; b=UimmQOcs8Vo6cR4I/0CNuU7F5hQWrVfxb5wklwYEuETRrpQM34aOZr1t+Glk/KtIoP6JaiVTj62VF8UQVpGfF7AoRYu47xl64B1xwc5YXJh7KNcXvj6rYNi4uretiGjBhC6yryGU+VTmwC8NNj8jOwqrzegKJdo5BG6WrhRE9A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727840154; c=relaxed/simple;
	bh=96BST1u8XIrodCRVhsrQRh3RD4aJwvyCsofB30HhHp8=;
	h=To:Subject:From:Message-Id:Date; b=RH/Po82fJAWAZAIqDJp1ac+VHESoIWEXu3s+Hwq7EuZijONRGqehAodM9K4nTtjHZqphN05sd2GF9Rp9/8BqeBRqHjS0gVR4qInmWeh238ujjiRcGsupPi6Rx85U8dhQamrPdc8TeM66faPpAFfpbSDBncaV7X4XqeMIUUsM81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7zW8HCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7zW8HCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFFDC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727840153;
	bh=96BST1u8XIrodCRVhsrQRh3RD4aJwvyCsofB30HhHp8=;
	h=To:Subject:From:Date:From;
	b=O7zW8HCtjUw9rDv9pfyZMF3/x+tsZlHzlLxwmqx/1UeuNqLrAMWehBqnqlb9DIBEF
	 PzaT6qIB+i9pMJgGpi3YocquZEkCg8U9K6ttsJD99Y073/5Ve9oZBYdLx6RorB4JBX
	 4lrUQTShvmw3rbab6J288wnOrR1CSusg0Py6KDZ2p/65dJYJBpP3h2KGjWEN54OWyF
	 WGj/cBbFe69A0WfVEKTBWUQDBuas/dYL6ANyjJtNQ7U6f/cDPdBwVsCG6sVaAUUDpf
	 CwKwUkIecjjW2X6VuM+UdGdxbdE+/VzBV3gR48kHMBwCoK5lNFrqbfkGlJj+SPkvH6
	 aCBOudS7eq6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CFCCF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784015360.17571.9736920182133783199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f4a8e2cce77a21c3ee21d0497e1907fb2c6e557ff425eda93a65c67bb8d036
Date: Wed, 02 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727840153
