Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A143D3B3
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954194; cv=none; b=FVB6WK57vQHlKLbQwIGdnra7yPAu3AM9mmeLr0CitxWTyh4/HJV4v1NXWBcumS0xVhMCj8PqSwKBEbqDPWefhljCGTuuIi75Lq5Ya68ag9Gq7cPpBTKPNCKGybmRLmMTESIc1D0hD/1vhzFUCz6/mF+odAC1JIh/3OY5bf9jPac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954194; c=relaxed/simple;
	bh=xXHTpgWAVhzQDvzx4A1xWWUC5mDN1zmmpZBMJedgOOA=;
	h=To:Subject:From:Message-Id:Date; b=dJ3SXfnpOnHNcuk3qm8WQ2Fsizv8nJHABYOiMty7+QdekRbQ3JCZ1Tn/vaWrxnKb9WUzx5NMvfLpG+AgtQrGUCJP7iSmqVG8juQ8iCXxJQhPKIaEh4i8P0HgmhNlE5V970QqLV5K4A4auRVdHrI7f2vq6SSB/1TzaCPDmqoL/Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNZQMsDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNZQMsDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07BAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756954193;
	bh=xXHTpgWAVhzQDvzx4A1xWWUC5mDN1zmmpZBMJedgOOA=;
	h=To:Subject:From:Date:From;
	b=KNZQMsDMQZPu0ZgkoIoqbjGyl+ftEYeL2TaEtPvXAv29HL0sUH72MIG0D3hUZUPdF
	 u/MD5YypJIbueVVTEhrWn3h0MrqFLUnX4GH/rzyfdymu3wvfK7t16pKxMrCZYSVOpO
	 DT+Xi8HGXpKZVloQPYXTR27v1oOy3lq9+t9Sqd+zLv873bOzSVxHE17J3keibw3Wlg
	 A7YblMRsfb+c6SF87ylvLQJSf6tBgrvQ/yoYqobXtv4SJDgeEZAfzWvZ1k0vXoEAmX
	 cNJwlk/UhiGBdRVvcuk4lT4HtZr4q/XWYLaFJ3iioIXTTzBEtUh1nMCa+D1PsID95a
	 3wtCzSKalvAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91794CA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695419357.29914.3014183819607133160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a425853de1cbce502a3563bc7db585f452219597edcd22188647ed2da20beb
Date: Thu, 04 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756954193
