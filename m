Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CBC213236
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759037395; cv=none; b=Lw5eezJjZ0ux0rN3QN6MVr4TMjRObxBFndCN487RFFOik8IfsVajOJQN8CX2w7WHqUD4CISuaITBDtvr3T7QKKN92p3UXSMt1xGTAroBeqRDLVcpMUbQYVqg5BaaRT6YWvTYJCVZIgOEDj7UAaYKa4r19ANnIUEO/Zq6ITyJeaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759037395; c=relaxed/simple;
	bh=RFV2AxVDAojZ009pAcHAcDQGz6vSvDZ4/AWXXqCEMvI=;
	h=To:Subject:From:Message-Id:Date; b=kvStC73+5xATUkEQxenDLZI8G2jKzi+fQXT92HB39lccitS8+3XnRw3O5whfztBGejNWOoJB5NbkmRNAGfVAeycOkGSBrUk4/GGXHVMiGNDTOGnSrtGT+mFTNkhawLqEKb2/DY50foIk25v6D1FoXssG8utoW65LRmQZCP68wV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU8ua6m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU8ua6m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759037393;
	bh=RFV2AxVDAojZ009pAcHAcDQGz6vSvDZ4/AWXXqCEMvI=;
	h=To:Subject:From:Date:From;
	b=LU8ua6m7CJnwI5Ln7YmjK1EKQ/mvkh0ozTB6CaN8yvCVJZ9H2hYbB+HJPQFzSHvyS
	 jDuh8EBMzEZuWcooT+jMHLQYFft86/J86OugxZl6VxKuOOgGQjKFDHRvPpvHnaELT7
	 mWIY4Oif/QMF1MAAQvreaB4QJfMgAyS6ZbdqHGIgR/UtsiMS21/3beaO/QNa6F8KnN
	 ryNUaqsytX+eWQ90R/5EkUoykXrRlGSDksZ6KTosbSeE5N6DFc/ouqXjSD9prQutTo
	 bKiKu11Cc8fVjNW6RtqfJ0WZJkQxbn0O6Jngl9e+PuWxfqp1Kfq7wjQpNuEsSgYkrT
	 m9qWlD00LCxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F649CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903739357.14406.574896265190713402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5f96afa437f15fad997afaff01f6c50053dd39d1a41f6f0d171926eae149c9
Date: Sun, 28 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759037393
