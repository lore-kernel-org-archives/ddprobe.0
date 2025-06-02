Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E75728FD
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748840394; cv=none; b=BZBSmTZKS0FBQcKTCvpaxejdvrCSALk61BixFt6S7cEECA/cnqBZTa/uUFsbERI+u7P6eqqbn3ETuqpa17sta/SpgFEXsjrAMOj7whNUe82+45UdZ5jZAN3Bi3ZNiuF8tbq+qTnj6YEqyN4GSybog51Mk2rApkP4ZPJSwnh8eKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748840394; c=relaxed/simple;
	bh=eQ3n2peORF507/h54WgW5u6pj8XEWLGprXIfZZcEXzw=;
	h=To:Subject:From:Message-Id:Date; b=CzXtRJBWKYyzXo8UYSyiexJyQ2kfWseDPkdanwDBfz8Lrg11tr2TP1O2nIS/ZJ7Ij6CleN14br5Cfs8P5ji4FKaVZ6VBQRYb6/ApL1Bf8m+RDKwSKGh/LG6eblCHhIboECeBBDveKr2Z/1a30J7Xop6XZye4Y0yCRbMCPnnYEKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9dq5owy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9dq5owy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748840393;
	bh=eQ3n2peORF507/h54WgW5u6pj8XEWLGprXIfZZcEXzw=;
	h=To:Subject:From:Date:From;
	b=s9dq5owyRGWDWiePK++7tjqi7n3PeZQ0j4AT0yt3B/Gp2bNApI9AnxCpHnX5P3s8z
	 LxZgmvCsgDXZBTLldalwKCE5ihQUsTf4Q3TFeI3qehIxEWuhrYukKL9c/3nASvKKvm
	 GZftf3yePp2Ll8FTJC7/T+hRKC4NeTIR6m1PNHRglqnYte8a07aFEY6BcwGoX/YyM0
	 4XKxry9yxNeHQKS6Iw2WcUT/v3RirdrbZpUBat8AJDhVrjvhCqUdQ/e3hgmxFaNyw7
	 DYdAGr4yTuBJAFmoUySIB9rwIoF6Re8z3QvywzDEFE+GIg+VonZHJSiGBdQlbF4yo+
	 z4Atc31PHd1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC0C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884039358.10619.7270950419259988660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cee84f9d311a09fcbd62d9730715936ca46c058318ab0a13e80ba1bd4dde9f6
Date: Mon, 02 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748840393
