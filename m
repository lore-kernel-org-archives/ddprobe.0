Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEF917A30A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771295694; cv=none; b=dGhpBMbT7Q7vuuj9LLWss2UnwwTG9jjwnOZ4Qzoz9cbOUDEj2M/DVhRSEuANIVhQO+qsjBhhS5JMqUvoaYtmmjuxyI/PxNuO786zqdMkUQLj+xdgo+/VlePSf1lrPwJ3zNvY46sa3WCJvoWJqVlzoonZrz9RGDS3AA/2khtOjEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771295694; c=relaxed/simple;
	bh=CYVAZTClkF2RvPbe/Rin+eXvZVQJY6ofYEhbjrv+Teo=;
	h=To:Subject:From:Message-Id:Date; b=JkT859LSiWUVYBUNcOxSAWv/vgIcIkGYJBwTd+Pu7MvclZh+U0uxfsSiAaJk8yCTURfUH8QwA19ZKbDeXHiSM0ZNyI4do1p0ANeYKDdTHW94qbp/1WS+Fpug1O+20fvYhj4LJwpCQ7a66RUVP96XQMqVQAnHEeE/c43NA/1WmdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkU/HA2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkU/HA2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771295693;
	bh=CYVAZTClkF2RvPbe/Rin+eXvZVQJY6ofYEhbjrv+Teo=;
	h=To:Subject:From:Date:From;
	b=RkU/HA2NjFpxNhyiIcDXnk719c3HVqK5Xu8LL1tx1cJ2WFjHE2JPNd3UwowIbx/xq
	 sw7OS3dNdC6Z4nuyjMgKBYDnXP2L9H41QBYZ2YWK9Xo16CpZ57hU6JwSj5yKeK8PhO
	 9YqFrXci5PN+4Ak6oL8EODSJXaLTUyi/WARbfpdi0pQrisNqwGvOr1BGixbh43pPWT
	 7Pyu1MrxcAIgj7XhDXPUu+ogg61y328bovxHsaSn70zpTN3+A911IlhIJaFRZP7wmy
	 YFQZGgPXOluNizDlX4saQnGUm2x72MdHjcq1nrSBBtbDbKMDLfSan5yPvuIMrghtB2
	 QQs7zp7KEs58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D1E83831
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129569358.7863.15546680592746700005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ca4ec0c952818d2d6ddad605a6eb3b3c170ec57d73b5ba390dbcac312997ba
Date: Tue, 17 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771295693
