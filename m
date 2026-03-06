Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75DA1D5AD4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772758493; cv=none; b=XPNNNjDTinEulodOWH7uHnG5uK64G77kQuIjXszF8aR2g2dwOcuQTrJSdfInBurzNs7hPWiDF7vmrTJOy4haNY7qi7qB0/wm9Ij3Y3AgHj8CjVnVqi34WawsVkvLthymAEcErTlJ4tFVBIW21WE83fVXLTKXk3OaFdIsrIs3xzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772758493; c=relaxed/simple;
	bh=qImbYDZ44kBEDJ3hSTNGiupHwrdoxt/0jFEv8jluIa4=;
	h=To:Subject:From:Message-Id:Date; b=CWGPRiv9fzJ75uPIYrXgPdnCspJIYNMx1mZY6dhZINmgiyd7nCRcbSsRdPH3cNHzd7NP9ruKNP7oXEctJf3TUDe2029z9Z44bwuzznamLCs2sqA0gBfUNAYPNnBZ079MFm0JTC6T6Q91Yh8+y9x79iMfhROhn5fzsILYItWIUlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4ksfGjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4ksfGjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3995C19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772758493;
	bh=qImbYDZ44kBEDJ3hSTNGiupHwrdoxt/0jFEv8jluIa4=;
	h=To:Subject:From:Date:From;
	b=F4ksfGjN7Hr1TlRXCHmSYL0sSN5C8Ox+ia5QtiRJRmfP3bwLlIFbCotl0IqneW3VS
	 90VZMJyVoJ3vppD4T4PNQGGM+PZRhP1TZXX1CSLv9NodD2bQERLzSvbd1Ni8Fib/dK
	 gcQ/BxobM09I3spprxXK+3RKSBl8WmYz90iaAti138xkPAhchoew87zDNwg4wjFIoe
	 B9IADMU7QIjpciLsE+2VXDQk1gZ2WKct/IO71APz9yjVoGVc2ugIwPYD/Pa1T87QVL
	 tkOzBHwp9XM16YobLggUA8bI5mtJHxCa0LiOeZXAyj4w+rEPbbIyIxwt0T7WlpKHZN
	 OVVTNwx/joA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934EDF513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275849359.5667.11761596544121237632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3eb7b0679a31e2dc003f5bf1cd3948b909d93eabb53347bd886c08b0eb2fbeb
Date: Fri, 06 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772758493
