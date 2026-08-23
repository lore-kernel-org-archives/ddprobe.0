Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BFF35CB7F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787475634; cv=none; b=ZtMMndyCJq9bO7h8ufIAynfTc4XqhDz4JtNujqo3lguSk7+1tv4ojdc4vvO3BVJH7aJOMQVqO5HyT3cUDmIFzS0cYV2a+lF9D+F850Zdc84BLL9ZDJ/aKO+FETqWweseqzBtqBUYlboUrZqdmuVGkYUVUC6JxSnfcFb2i3RwL7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787475634; c=relaxed/simple;
	bh=Ra8pHHy1xSVqzGxLoQenJXqHjxQebve9KDYydkT0qUE=;
	h=To:Subject:From:Message-Id:Date; b=PF6Io3BOlZLVE9rdx/ybQB5fTrUnP3avO1lU7i55YfTGbU1RHGxTfsHajbASWV1+wI9zw/rn84SS1ADrRLPrc4h56KOyLsiO5CWACn5sYobYe3AsBmsmlv5LHjed5+mQTGeD60CEk+6+naVWnZ/cl9EE5ytddBfGWJwkGSDu1MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itbeWXoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itbeWXoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF17C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787475633;
	bh=Ra8pHHy1xSVqzGxLoQenJXqHjxQebve9KDYydkT0qUE=;
	h=To:Subject:From:Date:From;
	b=itbeWXoGZciuEN1n7yu9Vn0V/y2hCCamvL50EhiJ9UQbmOecBgUNMHUAAQSsqDTNJ
	 UdQ3HPD5KH1htk9m439JcnZmjcpWI7U2seyArcH9r5BHsl/kMKXR0IGJw6CJETmZDL
	 KJ+cu82fQmfuy9nntOkpFlPuTPhCP+pFmk01p417Tk5hMeLe5jPqXRdzSTkn2TdCVO
	 PQthb873aHnj8WbV3xQj+WvZUnjjMF0KZYPkFUjKZ+MTB63qNceN9iKzllZDT8Ha44
	 hjfXxsMj7CSo/1owb7kOxDLeoXtj5YeOjSe/Im+pSLYTZKuZsK6e4Dn8HczNZKw3QW
	 2MkeJGNIDD8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B26C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747563371.3858.10344819511009577546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1f9706223eb22bdcfb431feca5e410febb4c64f3ce2476a2c399345ee9480c
Date: Sun, 23 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787475633
