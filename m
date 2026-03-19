Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC230F4FA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773881693; cv=none; b=Ur1GxmBMsFGPKq57cgnlf5h+WkS4p7lCMsKoQGkCWU4MU7Br+Nv6O1/lyQ7hZhHklLPShTxuXfkIKgLz43bpiAZRf9h7gZY4lHzNeUJdCAi2LIGYNUzubE/jmYY/R1snlGzK+q/OwQWVQSADKL5jTH+OKufoZNrJNFcwCE7GLBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773881693; c=relaxed/simple;
	bh=PrlavYToXMa8Xlc+pfqivbjxuF/n1NL6OjGCW9evFBg=;
	h=To:Subject:From:Message-Id:Date; b=rqSDgigi3LALvGDzg8gTs6TiNek068CdRWBcQchobji4mNdzTiQrbE21yHKWOjf8iGJ/MMo8p16Zml7ObIOr1TP+jVg/8szlp8pvowt8AtbSJp7+N/LPgEmx35EnQhfetGUhi7BLTPP2NkYO69Hek3Iz+Icy/c4RiVoEC5G47dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n25HhOdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n25HhOdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E9C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773881693;
	bh=PrlavYToXMa8Xlc+pfqivbjxuF/n1NL6OjGCW9evFBg=;
	h=To:Subject:From:Date:From;
	b=n25HhOdbBKFOcgUc+VSmp/3K9YbhWX8eaznh9Vbt2+GyJYk4CKztmbGmFc/FDy4At
	 JKut8HEW8ZYOZuO5wasmw3i/GYyM6V7+PRF7MCRgfM4YMGeht0rwJsR21ZnC8JSMpB
	 qUTDb1MxdBWIWfTBcIjkHOjQTttoxMXfaF6hJhJeylyvwRbrTCKYXfYgkaTk92IJk6
	 Q2Jvp/9GAUJA0zcPFhyQkomMtxMcVWmA7n+V6FvyG8cRzWyXDZDlTk06Yy6mEB8Y66
	 6blpSuM5r8kcvXobGtwPzH2OPDOWyCXk05+WoIbU1OvCh8qTfLMIhTcfxQIG2t78Cv
	 ARFV+PKsIJciw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B31088E5C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388169357.15252.608455154044800172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb45b2639cb395607177780c6cf9b297cbb34e4fd3b0337577a9fb094e72a84
Date: Thu, 19 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773881693
