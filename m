Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D853E6EEEA
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709137096; cv=none; b=c6jY3rJ/3yBvyN2Ae4nTJ06T/Lwg5avp8KxLG0TvDCrvgjf5ZfWVkcqx7HcWEQpVckjLavNzO1kb1YNpZRT8Vwngy8Av+4OtoiDSoFCqJp1HeKGb/z6YVUKTSDNQut2w5PrZLNjGqcS0u3l+RfVYZpMd/XwxEHe1aJRmnqYEr/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709137096; c=relaxed/simple;
	bh=acdLWJ4jjBVNw7lwt3mD4g5weB2aUeDA5ZSTOWeDX5Q=;
	h=To:Subject:From:Message-Id:Date; b=J4ryo3S3KXZKQAtlBFk+8XCio+5QHZov6bPcmEvNSFNl82PrtQlI3TK2I1jTMG/d5okT4oaPpgTr6VgO6cDGmk4ynY7XqGFJe5dc7h1spX3l+zZe4JbC1bCyq1NhrIBnPk+5/g5v29l+kuqtmAI3HtUT2nKD+X8+ZxTXjI202A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB7xNM+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB7xNM+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CF5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709137096;
	bh=acdLWJ4jjBVNw7lwt3mD4g5weB2aUeDA5ZSTOWeDX5Q=;
	h=To:Subject:From:Date:From;
	b=vB7xNM+pgZJOGi9+K1r6THJm5fCknDeGw3jKILEn9Lo4D1p6EF0luWRv5U3pOZX+n
	 qgS9hKCcG2qiBQEg6II/DtNpNdFMVYLSIA/X+x42gEC9xges1jPyUdD87wuzfQ/7pc
	 j7apLLYcMA4ID1Nn8ouQjDUiN5TExrqYzLeZVkASwvFB1+vttwhXJJu9ILSv/ADiqz
	 skiGV4+zAc5FJ9M77jjPdKJXmVz1aXaLDeL70QI2R9rzY/NKhdt51KA9TfdAJryJ+1
	 we4S+7xA1oQ1/FjDtq9qQKX1MJzlsVdsEKGWb/IorL6J7PcTiS1nE8AJa0XcMU6OrW
	 oWWNRlwYGg6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B82BC54E49
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170913709636.4490.15763207798459610570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6be9947c1810865ba7ef537c242a34f4e52a60c8a9faa021f1083046aee6c2
Date: Wed, 28 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709137096
