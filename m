Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A75748D
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746613794; cv=none; b=fCW9uSUaMNKYTNt+zYfuWSq9mDt8nKSuNTcDOR4SbxT/uXoBPK5pl0oS1lzGexDA73EApEDGhJ2CX9T4jjApFWcOa7U7Btcbi2i/h78jnzxN2k1C490J6ZWwaLshbnNQUQtaJdWoAmds/qcq5YWYR8PQ1Y66HGUhp2ylW3gpRTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746613794; c=relaxed/simple;
	bh=34iPOAvzuHlDRIs+Nr9zl2NkNDF/imA+2rcD/3bxJeA=;
	h=To:Subject:From:Message-Id:Date; b=SLmBxbLRlKlakNWxqv3hpvfDwPRKCKDUBdZd5fxMcolweL8BdAuBoiwki7AlaUWLks4z+Svheo7JPOCvClPKXX8Tf8i0SbkQ0sSJ6wexZ8J7k2iLJjSIqlPJPMmqLCp4kMjCjKBY39ovbDU5TGaSIyuztJdUHehEoECV4OABqbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuvc6V+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuvc6V+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746613793;
	bh=34iPOAvzuHlDRIs+Nr9zl2NkNDF/imA+2rcD/3bxJeA=;
	h=To:Subject:From:Date:From;
	b=nuvc6V+/jOJjmRJcNb9njoAQdohZWUqJZV7Fr0rP+yiwQk7Erot9gRl+//BwL6RyQ
	 I4pEVRo/vctJXJ9jyaLeseY6WgoIrrtkmgoA/htLm8KkMRFy2lNvKHLfw0U+qU0m8Y
	 o+laFXNIRw7ZMz94YI+S72vQgF/QVf9STw4WtfoSkWanAYfU+8jjN/p8ekySjrt8u5
	 jAu+DzQI9ZHi8tGk9iF5Ve5x2ji2F5Gm425WqqTMcpSTeVWmw72b18ynZRhEu80AX2
	 hNCg6phJ24yXq6fjpWXbFh1NRgHPwrdV4+NmDd3kjch3m3CtWD30Sfz3l8UL+c3erC
	 vUXrraiTEf1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98BC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661379358.16068.3680682946829185467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cca8672925eee6653e0364739e5cc4956cfdb8f9b276b57ba863f017ad0ac0f
Date: Wed, 07 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746613793
