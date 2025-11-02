Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB62D05D
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762091994; cv=none; b=HSm2ZGEaXUdYj+IPbIZbZsSy1zfI3v19fYY6CTMxQse7Yb5wBFF3SlPXTU5is1++7oP5FR7UXbyLIg02OLs4BpfKhTbkyXsjxZihKaSHjf72tNJ15YrctyJAibF4W6g2o6KDLbLKPrBwMT6Womy1aw1rmeKqq35wv/fLH9a2/R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762091994; c=relaxed/simple;
	bh=unMDe6swCkdDocDFSbhzt700oR6IVf5vul9tXjSUpx0=;
	h=To:Subject:From:Message-Id:Date; b=T57zvTX3tUrf3Py/N/s1WYJVzD761s99RG+8omKz9FNU8ZzH8TK2pqPUDqtuODa8atcvq0N8abk19dLz7U7inC9oWyU5m24xf6p1ZXgGXXR6rvV0bPlDwLAJLZuNjCEF1rKpfaOgR3Mf9T6YXNnD8ZI+kP2VXbpreMdADWXxE4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAiVeJxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAiVeJxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F68C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762091993;
	bh=unMDe6swCkdDocDFSbhzt700oR6IVf5vul9tXjSUpx0=;
	h=To:Subject:From:Date:From;
	b=hAiVeJxMfpd/QVppzVBmZa2qduaL2y1jDjtPaXKuEwfSWi0kNJ+oe3saFCng7FefD
	 zanEk8s1/lUShu6yrZd/GCC3VWa2L+w0KFgQjkHpiLVMY1jvW/3yRdoOVtYauqwh+/
	 RgkE0eKxIYi5QwjNbL9jjyat3ZkV1gTqhN3uhC/af7K8x1i6Ssde9Qbw6C/LR9FQ30
	 vkUjome5UFA508c9tSxiXln4vsoiR1Bh6YUKn2I95rkLVf5ePqsTCHqtbDqueao9nS
	 NCISanRDLIH2PpHq0kTT4ze/VzRnPBHTTMJPEclVk2pY9rI5osgrHJBn1E5l27MCO3
	 ZDzxEEPYjfX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91626CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209199358.1975.17329254259908640847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a7abb245414a6b9d57f7e085d7e23f9218ab5b217ec874351c424a6e8db5bf
Date: Sun, 02 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762091993
