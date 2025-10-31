Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED52189F3B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761943194; cv=none; b=n2pJZCoKCCus2NzFoAeEDLvYyEt8BJS7q7dzdnACAlDWpxmTz9ISI9ap+6GhrD4WPontHVxqybmkLdUPCflW6vVz1QlxOI0WlS6+IWyKCvH7JVEdJtILGTxE1UUok9/N/SiUqNn9pRV6+X676je8ww6cAbOL6dHOlrrN1QWOWJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761943194; c=relaxed/simple;
	bh=gTor1lFSpzh/hY9C8aXYmfjC09I9AYTaxJVzemMruBg=;
	h=To:Subject:From:Message-Id:Date; b=MAnkdP/s+ofctUzvYiqWqwnHBNlvaCENXCcUQfwfLGKINZW1p4r5j6AqaJG63jAngolOnLtQx6oCLdvT0o5ZkdjmDVecmPuxh+Lecp28uSfDQSUBKTZSBDa357huCyfAuf+vGdhHNzR72XTLRbExpkulM981tTNhHt6Osr6NlLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3ifWstm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3ifWstm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12D7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761943193;
	bh=gTor1lFSpzh/hY9C8aXYmfjC09I9AYTaxJVzemMruBg=;
	h=To:Subject:From:Date:From;
	b=Z3ifWstmXH4fAUBuyzUN6Jk9MzScYKNUx9c1ICFBenba20VE4xXhD+AXOicc4JMuj
	 hVDCdUsGhubv0Kzso0rdGNyqtjF0tC6mB2M+wMWYNwsgvxpaH4GkC665+BfBeFs+R5
	 ORabp+I7VgQ6QEF2yqTQeBybxChHmYAKtOWtq74/9bbuEgyXLRdtmuluCHzX4RilSe
	 dUwIWEnZQnLOjw0UEJFZMErKqlb4NCuo9IntJplEEZhgCuiOqqg3RdSntEuaGe7hmd
	 KFLbYqZKK36iOZla9ztUuYmcJNpnZbv6iCC2F3mnNwzoaKb5KUd+KU6jpDd8i83h76
	 mU53M9xL7AJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCE6CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194319361.12246.6359674930695428380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a68e4f09be9ad867e110be3ff8de3a1bc6cdf758835fd8303fc68129722e42c
Date: Fri, 31 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761943193
