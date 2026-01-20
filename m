Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D5250095C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768867434; cv=none; b=seFmPAxOxMNYO3grXKhcWGdJiZSwo3TcwfhdCHd6fqCDCYKQdmmP47WMIeggImg4tEItzhoJujP0gIVEelH0yW8nKPWBxvfJEHnFi0O8T+IAGKtLDiLuvbu4CKXkfwBo+OzrBnTJVjAUcOLss8n6XGNZPAybt+ed2rWbHNDDPgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768867434; c=relaxed/simple;
	bh=9kmUymqsMdM5Bzsl77aZnbkbfP2nelyp1oubMjxAFfE=;
	h=To:Subject:From:Message-Id:Date; b=rW8XbZ224MIBoQLp6mPIuYQ0Y9ojpaeOFOoIsYv3H9eie21A535M6BavQrBT+gXdQVzyPT/vxUX5z9oQfpB9c0/vWdLVBUlDstHGo4hqWMYRlfKrThf6iB29yyGaQnN6IGjMz/k+Eosg9XaSsOrafeMoNOvSHU7/Fog/PaZ+Y3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI5Vto+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI5Vto+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768867433;
	bh=9kmUymqsMdM5Bzsl77aZnbkbfP2nelyp1oubMjxAFfE=;
	h=To:Subject:From:Date:From;
	b=qI5Vto+3/bCICERWo1blgao9TeJ9fafaAsLV+ikyxnjH0JU2fbc6T7SS/GBLy91SC
	 as15BaW8fD1SYmgtC7YHTqSlcA368co6ha74cVLkNkak2l2kiMLpYdbpLzL3txhbaM
	 Mgtb4kpAPqAZp1HZGmany/BOTRlaLrQkCktzw1g/wZLhmAXq+VJesKK2FDbzRQDpUD
	 MiK1rGtGVFfLDTbsSj190Jvt8jepPINaOx7bzG9mAWhmKronHzOICRjaFocTNZ2cbp
	 7KVQtBmvGT6CFWKfS4G5oykc6XqZlsjv8ntCZyyyhiv9koTKjoZCwzW3dxG7Yj/+4v
	 8pjY0JGAsvwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEFD2ECF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886743359.32462.12069480544761881812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bddc3fd751fe13b9048c0fad838267403a9e1b38231ece3ec0917f20eabedaa
Date: Tue, 20 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768867433
