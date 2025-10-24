Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319F830F81B
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761301194; cv=none; b=VrZL0jqAnFBmbHbTFO+uHS/aHZgZ5k+FR9g0uoiwJp0DAWQMQGcISj9u2eu2AGKtq/ej2EYtj2s3WymepPikTodK4zRF8e6H7Hi3qs3VxmhwSJyNewt6+jsW1LRPzwCs4NkEJ5if9SLywq2kLa7YYNAtJbE2DNlN2MFdG0QUKAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761301194; c=relaxed/simple;
	bh=CibYM7mGTQBHBSP+kH9PJskO84r6DMniOKit8TT1ykc=;
	h=To:Subject:From:Message-Id:Date; b=i6ZGoAPLiYruugMHOASLs86zqtAS5G2qyFKyLgH+LUurmeXmBxlnooILzgzJh8qiqpqiUUVdyWm7xWDvW4hndWzaQtDV8EFqoHbuk2sA2cpwdkqNh4RWlUeKW3zt7o4/UtaOZpl29E4NfRVlL9XcEvcHhLS6XS/POfdujUyjDlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHJaL8bO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHJaL8bO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A43C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761301193;
	bh=CibYM7mGTQBHBSP+kH9PJskO84r6DMniOKit8TT1ykc=;
	h=To:Subject:From:Date:From;
	b=cHJaL8bOy3+2gySzDShJ33PJuOx68bzBmWajXTtlQKAKmONVF+zvZJlkd9FfYlz6P
	 wonMu5YpgIkEnAMZVYvwMw+U5XGJC2G0LlAy0/dDZ7nJ4Yl8lD9TYIgX70mmXGD7Y6
	 hGs4Ru2Zi5cOw2CIK036Kag31ZeYUD17xRr+V57RphuG2BfhTqqD9x7WSYTwS+pzbk
	 TlngmsASnnmoQA/A5IIoqw/+0ZeAnxPWJtBQxH6zH1o4anFSae7c0HwRuyEGb3hwU/
	 RNzgep1ATgptSsaUtdVMPFH9U7ULqjA44RZvXud6vidxlC0j9DGi6TOMQgJo826UGJ
	 ClnAsaFAXGpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96690CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130119360.26838.14700148562728596394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84394e59b8983ed7ac1488ea1459f048fb58d288546f78e999cad182b3b383c
Date: Fri, 24 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761301193
