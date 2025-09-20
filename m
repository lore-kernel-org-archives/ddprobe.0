Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3596E1E47CA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758336594; cv=none; b=uK7izUTffwheppe2l24ChJtIoTnSpul4GhOG5/bmAZJ6N6qlBlvl1jFlKZJNkScVryj1BiIFAbxK7ecWXYi+dybiTS6eOrOi59eBI3NPaSpeAwfmLyl8IIk5au4e2lHo6+yFwm/J8Q73iWDEAIUSTKE8kmRGjifjpD795L81b5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758336594; c=relaxed/simple;
	bh=yMFwUU4z/ws5e0lBWlo8CgQMZN2zv8/QVMI5OctkuFI=;
	h=To:Subject:From:Message-Id:Date; b=CQBCN9zBwoZozjZEJAlmivKUO7tTackf+U/R1SDY2osv4t9hOg1yVTnTw3vm69nh/LK9tSXJfAXQxzxLU5i4FqnlL084KAdGDACfrEbCY3KTiVJAlAcEJ0od4i5cJYsw3YTrBx/WNKLK0YFkDwmSz9MSEKWZKxdL0kIlfqTFL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw2MgLMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw2MgLMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758336593;
	bh=yMFwUU4z/ws5e0lBWlo8CgQMZN2zv8/QVMI5OctkuFI=;
	h=To:Subject:From:Date:From;
	b=nw2MgLMXam0MFAAXljudEeVcKGohwPdatfjA8nGzR9lIfyd6jPr9p3gIL/kKtC/ej
	 KX7H38bcrn1EdVIOQEUAMhaftHGVu3K+WcH3efKSgdUSbywXmU6eIkZxngSpRDBNs+
	 ySmOCh5yUbB+kFq+A5NwvuO2Ze70kOQcZ0P6iV3EdWvHlKJRdx9ICJW36/I7R53Ytl
	 66htn3TEmCp4pNIIKdBYB+dVXWZYPY44AIlbr3wf3lTIfVU2htgzJ3IxhDkq1eCn7N
	 S0vj/QkjCHcnUMTJDMcFr4HyN1psy+JMPLrnreRWO0LDSH8R5VzbvVEo3i+68bavii
	 Z4I4KUzENnazg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BCCAC592
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833659357.32019.12588588908750453524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a81de1acce5cb5b35663d07f9dcc26f1b17363fc4731aa8b7c55cba15fb7859
Date: Sat, 20 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758336593
