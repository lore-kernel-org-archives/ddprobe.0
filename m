Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400BE1DFE00
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742476794; cv=none; b=epCsZ1xwkzxMp/YEOl9LdmxX9kq+cf5E+X4bT9Qgq1UO2E6lwfNOiBey5rNEHyRx0W/WGcVt7CxT4/ZgscNhw2cZctZ80njOGAmkjen4uuxQ+nnSKXO8zQ1aFhs+tnS8Ge/t2QjvGunn9nMRqtoeDD1hpwq3f8km9jZItv/jcuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742476794; c=relaxed/simple;
	bh=BmayFlmPSQwHP0INiZdOdYxw8EWC9LhZ4NUxy7bnSnU=;
	h=To:Subject:From:Message-Id:Date; b=Se9hRzxBGT2vA82D7d+X1v/OPhsAGO6KLHPwbieoc6OpDV02rOPTFwwSA7KYj2d8/b9bpDfLPuLMqxX9C93shXqCEZ2/1glFnvvQu/0CHTrLuJjVjC9qeJWvOBXtu9O1xMvvRcKvpJbtc3J7flMJn/6fGK1EU92MLtMupDsrRAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdDQzxz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdDQzxz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0B0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742476793;
	bh=BmayFlmPSQwHP0INiZdOdYxw8EWC9LhZ4NUxy7bnSnU=;
	h=To:Subject:From:Date:From;
	b=jdDQzxz83Af4aZpizMIs1fBBUV48PL8dIf1KQ9lghEIejptVn575KkEcKAs3MFods
	 d7C/oJnkGVGEWiBpbBK1dgpzgSj8yo+Xlc0hMLpEGyzgGVFyAN5ZQZvuGxbTtuYLMr
	 ufgljFJVGL88GHQWH6MpRB6fpj3YY3Yj8WLvlaDj/6jrmq7WFoaTGnFbnTo4NvlLJ0
	 meTz3FdKF0nZs0zeHCtM9md7BmAzppEpsmOoVSEE8JmXXGeswUA/5l3i6pTOas/YEu
	 Va8jOrOrFZzg5Ty+fs81o4F9njwpOKQ9koprX2WuwOPwyDWq+Ddwv9KxCWlryF76dt
	 fs+uIItJ2kyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D18C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247679359.11306.6932146866281453290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ffb0fc1082d8a99ce76d74d63814bfd799355173035ba8268a128fb612a030
Date: Thu, 20 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742476793
