Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2650B1E231E
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762325994; cv=none; b=p46Z7VceFLZ+4yoBjQJw1YonH6cdf5FkP7AEk5GnobsmBnQa6VZ1gY7xEJc7Yjv+Y1lgK7ZOm+QOL/0KBX+FbcWDZL0LwhBerwIUXRixH6ZWWFl9h6WxKklefru/LdRZ0MncuLsqGQME2yAJ2DJiUiRztPZLck8lX8sQhN/rZwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762325994; c=relaxed/simple;
	bh=L347LJ9bpw9i+rjk3LKGPd143qDpqZbZWUPOH5WnNcs=;
	h=To:Subject:From:Message-Id:Date; b=OwkkOtDIJcajTQY+pxQjGH1BCQXqCWew35i4VILXCWkA6tjiy3OtlrGmhvs317VWBf42Z7IHxXqsLlOzdqKuPTZio5t+z5N9W5KxaewN/nnjCMGxXSKv0sxSWCExbr+kTPzeblGuCbO/n/mweD7isTXzI+q4+KNUCJgEpmSI08c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+PTNlZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+PTNlZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A072FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762325993;
	bh=L347LJ9bpw9i+rjk3LKGPd143qDpqZbZWUPOH5WnNcs=;
	h=To:Subject:From:Date:From;
	b=B+PTNlZC4w060r+uQR7HIRz6RXmBfo7OrzQ4NCUlWZK3eXLiPq287wbYQjxgJ8Gqj
	 x8kTjxudgiAo8ssqez3u4DFdMwDAa4+fJf2nomNG5pyeql34UyRTG0NUxeUY1nTyqy
	 Ir3EmR8E7aGRXakwk5F/MfaCugFSzxUWxqUOY2PqCxjPCMj7ps2uwLuhzr70jVU2ut
	 +JWRn2Peb70bGt2IpucYl4km+4qqvm+wX9ShpCZYuHAkYCtc56LohVYodS83shNhgb
	 KcceqREg31O5PW828+hNWhvGOvT6esBATdiD/TD3Gw74EO0n/q0ztiFFtC+8IwVrA+
	 oHoz8l8RkFmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FFCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232599357.2633.17814962402887957630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a785c93eb71cfdfad793135fcd12e5711822343091bb828ed0dae761fbfdccf
Date: Wed, 05 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762325993
