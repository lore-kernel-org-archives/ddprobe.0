Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191D13BC3F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759832394; cv=none; b=oi7/nvQTRkfzxvPxTzE6Ab6KjseLlnlkV0OU1gGAQH1EiTihRlYWXvUBpjSxyVJE4VYZKVLZh8oLHOI+uhgmr4V7w993Arp45MoThUJ95dAcMXGviO/o9aB2qzGcW0KlnqF80KeIwxroypu4Rr5mTr0K7PKiJjCkZW9b9SEzzCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759832394; c=relaxed/simple;
	bh=XvqoZlg6AKwmSpNUTL5J14EwcP1gwn/LeD9qdSMSYTg=;
	h=To:Subject:From:Message-Id:Date; b=eHQevN7UjnpVFZuyyo4BicecBQrSAPQUSWh2ql+Qrq8esvh2pzHApo3xZgMUVYCTSNQ/wLYq//dYTzPKCCYmBvAht75/nbIG1zzuxFjRxFumowVi0K27XGsKS4EQAasqMhwmqMdfD/uE2bnWvfUWvDTvsBne2ap5NHf9KJ6cP2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrHXD/Ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrHXD/Ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A203DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759832393;
	bh=XvqoZlg6AKwmSpNUTL5J14EwcP1gwn/LeD9qdSMSYTg=;
	h=To:Subject:From:Date:From;
	b=JrHXD/GeSvIGdvBsoazdeLmyqYXPunmQ8uUxwzdS9M7xmY3o+PgwkN4z62xn/TIl4
	 iNkAi8f2uwLFQSrs4MHLta163X1W0RLt7I6kKqyvkWOau9/Q9SwCypfJpYoS/AD0S/
	 iDrvzDH3WXx3JywnwItQgIjT8pJ4rKIv3T7b+YvCQyetf/JpuD2ZJfhDqR4+1nJW3o
	 WPLS85YN3kR+FLekSv6XSgpD1o2qphE+EK2Rik5BEaF93QO7LSSiDfYNcgIKdKlJx+
	 F2VLxx1P4FOPPdXXwNNaI87SyzcSPlryfb/bUFRoxWyKxM/kCmfHOajC2SnNJHvzGX
	 HQZWd5Uy8j0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0CCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983239358.10915.14314751453420435076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cd15ac5b6b33cfc3598364745d0f76e2a130991a7f9ceba85bcec86e6e6256
Date: Tue, 07 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759832393
