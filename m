Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263B01DE3C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754194195; cv=none; b=Altr9fZQWnxfWfociRLlkN8Lktg4+GA55JizYI6GiyBza+3gllueJ95dU7eTB4WsqM/FsrP8QBWE5Ioo+IuRdgVfb6NWq6mwqdbeYirH2TOWRTzDsu1aQ28zlcVjG935IZ9b89ur95u/GLR59uRDapZvqAWiRh5G5XYfdxd89OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754194195; c=relaxed/simple;
	bh=fSHRsL4R3Inq6zzwtMCm39fypN1sq8f6YICfxxpJLWw=;
	h=To:Subject:From:Message-Id:Date; b=i2xyyj80gnuyscqKib2yAMXjvET+TqOnUvhXnBzaIBQ67kCqTGhAC/SmAq5q/RzuKf8rkHNNRNUXevYhSf6s/F3zi/GgaZ6d2WTUO2MyHwM2pTjHqPh4mbSUiIz4w1CKBbs8a6UD6gGeZaGLlQ87HRZ+1pDmdMpP0HLIS+afuxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4spQ/YQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4spQ/YQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754194193;
	bh=fSHRsL4R3Inq6zzwtMCm39fypN1sq8f6YICfxxpJLWw=;
	h=To:Subject:From:Date:From;
	b=u4spQ/YQVXh5M3xNhHlWAPRwjM5l1J5QBt0Tkp/6+PO5dH+IauYMTPFN2mZL/NGpo
	 v3phxxhba8DnQfWcqDkOudSFJgjnVbkx+cnUxMfs6N5zbRig8xSNX5Xiiw7SC7JUMc
	 dGqqM9Hky15uO6wYX01zSHwQdkOI5NG5IqlafRuDIVCMnMN4Rd0ZnI+y4ZATHz1tOk
	 y9DPZOJR34zZsLVxFLfVFm7lxafGblKV12ywV+VVqfszrWjDzkd5AE6DIvSjHF6Eyd
	 h2vxudxlt0A9+X+ZAzSohdFTanrWPLUBs3Ki3XLWJ5EDnX8hy7rgvNxUKj7T0rhUoI
	 QRNvVaWjg/GtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFDFC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419419357.8517.8172682280888210380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221ab6ab1fe0e3c8ef0c7d4803eaefc8d0746c51f65bf0aa33661950d9c2d8e0
Date: Sun, 03 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754194193
