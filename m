Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C74058203
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713302363; cv=none; b=hOdmsG+vfWdXSQXNP50B5UqsTsjk4Z+Ij2HLARiJpQWiAfckZVgU4pNPS/qeBTiTqtzpcFfaFtagRqwXFYycJj5trftpZlyyKru5RclmI1bdbipDVz4FOsHXJpgjIBbQm7kBENrt9Wmn7vaeTcXKAChCdfJsorKP6q18ug97b3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713302363; c=relaxed/simple;
	bh=an0/AuZdBTo8lV0l39BB2ShRfMg8MHTVfUZLKOqByJ8=;
	h=To:Subject:From:Message-Id:Date; b=AxCXse3UeVggTy0sSJC9TQzhXXRCXDsD04DJENuvzlKnA7Sc8lgIOVfHrjIek7iNw8ToF1GmCUlUGRYXVs4SRRau1zsLIrCbuEd4uZMcF1kERjjKPBrwA8SvGQND3u/8xupiDqItGJSa2P+VZX3ae07+SSZTmKmvr2mpAoH21Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER+2lxxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER+2lxxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6D2C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713302362;
	bh=an0/AuZdBTo8lV0l39BB2ShRfMg8MHTVfUZLKOqByJ8=;
	h=To:Subject:From:Date:From;
	b=ER+2lxxvIOZ7omqRju3i5v+yXq+HFQ31YHEqLjHVqzXO9IPqcHOMtjvt5wbJ64LP0
	 30IgSp9iRfp8Djqdt6it/xfwSvBU2QqYUFFOFo9EmKY5S9zvwYc0Ojutm2ENw8YIM6
	 7MSr2eEQkQxrJrUZ3RjlrlW7H0+I6/bWV3lvlQnOwdjhHgwtAGRuBkq+PQu3AlgTYJ
	 3104uprV0w3LTcszF5BQctSyk0Bv5iK/FI5Iv8WzeeCq2zz3v2KsOdQ62RNYyx5yW0
	 LyPx6jzmcAG8tmtyj81zCsFgLlU2eiP2AfQyH4jpqH50W6e4gzRXgopKuVUOarPqEw
	 GZFZuRhAnXUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5601C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330236280.30742.15317380062010941236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924619daff8c8e339043691da48403ea12f88979f2cdfb8c19f65a48b0399ffa
Date: Tue, 16 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713302362
