Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E781DDA32
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744721994; cv=none; b=P28o+0yj0YaiKtDXX90EpI02NKOqMcaMD5XwU2K+8ROH+V0M9XxPQcEm3WaAvsqRZUwN4itqCImyuuKZ/6GKIa5SPdxDyKp0OsjORAKnoVNRuxWmCTWeXXA1qeIpxx6v5dOy4HOfuepapyY8yguDKZdolvSbW0gyOv0RbxrBko0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744721994; c=relaxed/simple;
	bh=EIj0AxAKTjOsUkQB3rgRaxLHjpH8lcgF01/P521UKoc=;
	h=To:Subject:From:Message-Id:Date; b=QwoI+ZPPz0Atauxypu+o3YtCKsHaa0vW10qCTaHX2PkAgAGoAZnjkpJhQ5CkMErpyMxEwpZ0uXx4dcIxcOJR2mV/i5AK3MOXbIQ316X+9IKGoFksLTVggCAqsbomm1YnuCrHi5DWtHPmJXw1VM11rTVxIiYpCyeLBrnGFWJPM5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+Su34G2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+Su34G2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744721993;
	bh=EIj0AxAKTjOsUkQB3rgRaxLHjpH8lcgF01/P521UKoc=;
	h=To:Subject:From:Date:From;
	b=J+Su34G2sUYCzEwdINLQ/8S6xccbBMOQdg3YeRjX0PXTA77tBo6Xs8ljdJu3+EpRt
	 2RBLwo73AJ4q9XnsBfupUF/jB2elMJJGDsbuiISCJdJRxcZW5/v5pRMgJ6dUMBK8OT
	 9wNFppCQRSAiR+k/jzN28SlRBJggnkxy2lXZGvARLUm0twABaIhTK0OjslK8lD8p41
	 21lR4yZV3h+C6IV7RGqrQ3nfUk/i2BFoSnpmlfB2q9eU4EWH7tO1Ru5tvrxPZDe6P4
	 0gtER3pHYmwVxNhDrxgfdCD4rxgqc0DtPuz1ekEgJ6NsezgY+v/joRZr380UQqObvY
	 2YQw4A50kyJ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D0C369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472199359.8013.2278415644714744614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858f6df509fddc238c1f738ed47f02fbaf66d75eb663a7b2ad17c1492e3e57c6
Date: Tue, 15 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744721993
