Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2521550096A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768700634; cv=none; b=X8r0g9v6x59HCIQKWjh6RIsE9TghtL6d+scmDQ1i/8fopapAaE5aocMKYxPwS9LEfV0DIPsoczXKNn9RHyLo3mgZtx8O5aRrt7YnPG0KT3QCoG1tiNrtjFICfqUx2wX8HdyfznlZXdjZhckzsNuVmDZAojJZWSe/pi9L0owGFxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768700634; c=relaxed/simple;
	bh=ilvQR9BrxP7lvmdDF7L18Nx83eT7Zfn33YX5OMbqM5Q=;
	h=To:Subject:From:Message-Id:Date; b=IJ8fKeCQb5nH1DKvbcu6q/Mqd2tXdHRJbAkjIxN/sUnu6RJ2v6lIEvzJLP7PBrMVhRslEDl4HtAr3nmOxi2O3+o8Uo3q9d/a3cA5QKUErsyeG0kUujzFG2pEo6tg1ynqvVj8iGa8NJCV1zh3yzUeaQtFu2Zjzy+ZAVn4REe86fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYtTQEcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYtTQEcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768700633;
	bh=ilvQR9BrxP7lvmdDF7L18Nx83eT7Zfn33YX5OMbqM5Q=;
	h=To:Subject:From:Date:From;
	b=YYtTQEcDcAcXwJJiqGAzPtrpVwjBDoJT3ygPcdSox7HXVDg7UL6r9UslIZlZ0/Ti2
	 b8ORQps/Iap/YIptqzHLoF5mwhanG0dYLYR74MmZT6Kr3ZaJJcdagB8Qw64I6gzKvm
	 INFaSVP5R2pMCOsm61AkkXOITzXRvYORdOd5QkXhw1gkWmHsmIXCRbHBZMPnf/aSZd
	 F1dSGfmkMZwrOlKyLuXR1xhBtAD0gL2xpMpa5ZDP0GfjETfqiDp8lNDqR8C2lzskqf
	 YvCsvexduzJjaDup/v6yiPqKDpFyaPJO0OZC6CUUZb6/UNCSLlMnDQFdQIoU+7of5o
	 UGAryepMQZNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9573CCA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870063358.7600.3012275062257335913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662f8ce2f612fe7ee7d0dd7ae7ec398623f94c619cb99db4b995f94d2218fa4b
Date: Sun, 18 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768700633
