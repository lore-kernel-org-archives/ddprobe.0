Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484B040D565
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781913994; cv=none; b=fDc/tteWLom22IhSS6Zg5jEY6XlrGsU4EKQSACNSrxBou0JojvSaqV7FORDM4jrHEBydqtvw7HUjnDGLAaYSHDO80VgVG7o0/Mt3rc77e4v9cLOssoPs+84MDLeSalLL5giu8rBRP2C2MrPYAcA6re9FcwgWVeoACyc/smmwKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781913994; c=relaxed/simple;
	bh=KQ9D9p0T2qS72huaJBn9CXTe2Ui0rs8Ko9B+PpCaeaA=;
	h=To:Subject:From:Message-Id:Date; b=BJ09PxcpesOU5s/9070lDBqN+GcX/GPnsxZr5WJ9OvogClkimVN3YvVmjTO9kUFbOokzE8zd2v9AMLPeluTo3pmda43H9F7iUQAqsJPuxzqRj8kg8qJ69+szK6rNegFHGZHGNos9Nq7E6eVG0ZHELSiyR7ylAECHQXra0ECx9jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHzjiMwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHzjiMwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF64C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781913993;
	bh=KQ9D9p0T2qS72huaJBn9CXTe2Ui0rs8Ko9B+PpCaeaA=;
	h=To:Subject:From:Date:From;
	b=LHzjiMwa2F1OEwuP4DYagsE75a+O7gEPoTYhjK0QdkbjSVW9+Y2VkGJpI/FpO6T18
	 j9II1ICUatGwk6SmQxKYgs/8LzM9MTKovQvLPTHfdEdF+u0v9uZ/PAtD2c6tfQrWDo
	 VvdDVdTiXA1KVboipcLM4VBaaEoTF/uS2Q9G64YKKnsqlhrW8JNUBwPaS/xbU8rtVj
	 fSLGfy4j8aqfJB8PYvlB46d00EI890L+3PUgjrBtuE6OyTjZDb3gJ0YaiOyW+i4w/0
	 PNEqJL/cXHUBOPNK+8vWlJqfHzzgJQna/hoZrNdmCvouwii7lnxrcYtgf2YzJgRTRd
	 XvdtTw+BSLWvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A4CD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191399369.16102.4308000711087218771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3ca5ee9de9b4177026f0cf87d1ecf348389db9a71ea3dc8cdcd8b6e0907a6f
Date: Sat, 20 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781913993
