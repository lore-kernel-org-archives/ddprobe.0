Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46011762D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719603863; cv=none; b=cHigP/vGNTMsRHGzFOCuUBNYjdseCr2YrlBocBcpAxu7L77vqGKQyCU8nLcnllzvcr1yYFMG8DVQEEajJ411ptl6BjNlJ0AVOm/ArH3ldiYrK9RPKi6Bm+QURvxqxH5EYwUMMR5zSGo1SIL5T/hBXbRq6N8Hhu71Gx+tYxSpyqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719603863; c=relaxed/simple;
	bh=KwNhmDWUjPb9eHSEGus8glXxMM/RtbRJd/IKOIJB9sM=;
	h=To:Subject:From:Message-Id:Date; b=lvleTeS9+f8J1hVpHEC41FadrOF07rPCJ0R3Z07ZzVTP8r0XISa94mpV40obuwqj+ajo9i9kOJ/wGlfyxSAmK7mYjastPLxVtkGWJvJ6XYI6FGcXa9RnaHMwWwu5fKNvs1Bzfi9FB6s5GL4ABSTCApsooKh4rFrYLuzM1ckZzlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmIS/Jih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmIS/Jih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A5EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719603862;
	bh=KwNhmDWUjPb9eHSEGus8glXxMM/RtbRJd/IKOIJB9sM=;
	h=To:Subject:From:Date:From;
	b=AmIS/JihStitFfhYqrQ01VcpMicSjhCWJQUNTXBfaA3sb6aH2GZmMmIhlHdu+oGvs
	 qYK33eMYeatBiqXmZQdYJQzjstzrESIkq79lOyAO48hlN+PVtRPXdHhEobIKKKj9Rb
	 G9lQexsHA+SHdl3RsGbRY32ypzxcSAKNOPnz7ZajeOmPYF0//ClZYKKXjHKE5G+vYn
	 nT26lCGqSM3ASCUQ1tiyh8zmHiRBZOASKbt1TP9jXI/6QKBVwa/yPkZGSAyZf8j+tF
	 kWbwQQ7V9q9pXURFeMGy+HbIFY+iv/zaqajbV4Y+ayi5jqPLv967WLVya7xh85XMx1
	 8/Uz7uRdNpBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED01C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960386283.12955.10824741486955418681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24c6fad4012de85493d62e4754c99a1f9387c44a70f54d3c79136776f04a215
Date: Fri, 28 Jun 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719603862
