Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B52D0612
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755067794; cv=none; b=dKkdX6sXNa0MK8RfeplWLIVNclpxbKmXBMAzsPmFKEvvJjiipzv4kFMMLTULrMovDBXqH7XgXLLm22/BIS86wqwN+g3bpxJv32OrZWHvkY55cX6XsFYlwvj8S+MVdxch+lJUmzbo0KTxpGCBZUdI5s1moTg3Ua0d/YkvmBCfk2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755067794; c=relaxed/simple;
	bh=5neDKs2Lvj6EP3GyQr4S/OjlUNxdgK6tGwpPSRPZNTg=;
	h=To:Subject:From:Message-Id:Date; b=qBhX2CTHU1SCZvD2YtzVWw3yI3wJDwspnkstNNZgz8fssZNFUh4frWBmtiQSL/OrOCHjov4hEGgoSgT7ttOWvZuPYCId2mh9GR+OFRD4WRb3b0ELkAXvnPHvY9CHFljsyxFFihAgixrw1D8QvupnG7WZLvwL9uoQ57zgNbd0pBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLOFqq/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLOFqq/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC5CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755067793;
	bh=5neDKs2Lvj6EP3GyQr4S/OjlUNxdgK6tGwpPSRPZNTg=;
	h=To:Subject:From:Date:From;
	b=uLOFqq/KB0IyYyWXXe1Mgbnkj/5Eb6T47tryhp8cxzc5JlIsJRD4Y1nhgXyU7PCA4
	 zygNByFJHox5kMhk+5LnThyrg2wivrbkKbJVcbM1Jr9Rjo4KrQ9bchDcFc/aVbJEcD
	 eMHQ4CD1SeO7ZEp+2WnLH06rzxnOejDKH7ck2UwwQlOAYGGyDyMp5se0mjiTiFpHcY
	 GDFgOXK8mugipL8mry8MWZMIaVx845hKHmsWmTTyd1i/B34DhuPKZdocw1Q0+cm7HJ
	 UkJmsYFW/e+Y4sdPOrRkHEnBiPlxsBwAP7SwRQeJgO51yuJSMzf2AWPedlyxXE0s9a
	 GTOUXeXS9FWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E335CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506779363.31806.676525474396805927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422d3fa0c985fd3dd79be9f446c864a219dcfeb9ee6cf57f2eeca2ce9edf0b86
Date: Wed, 13 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755067793
