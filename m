Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD42AD00
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776339454; cv=none; b=QiE4i4ZLUcDwdAu4+MKC4NOstqbjVFppnpJ29EbKAs2LymqnIoGeHjdZLRWPoLK0n8z9+zEPhToTCJ7UgO/enN4AIHZUQQQv97DrY4guL1DNhSB4dX32Sy6XKvj8muEZ6EfxOUbnLI57+B9td4rC46dpAxwNpd4a8xlJjRpD1Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776339454; c=relaxed/simple;
	bh=f1JiBl27xI4AxDFG/PwF796OdL+fCuf8XM+MRVCysdo=;
	h=To:Subject:From:Message-Id:Date; b=T0la2DsKXwk06+iVEL18bLZLyykruWIg56Q0db7fgCdmke2orLTWt8P8Irg+Yw4z16yuyqE+UDdzePW42Ukp7AUndkdqX8Z6hqYVm3/MnhQ9Z2QC0jNIfgYfpZpct0AtaU5TaQaOQDfxrjAO4f2hf8ROx/wjqRgLZIBbu2GXDl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkJMQVPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkJMQVPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD380C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776339453;
	bh=f1JiBl27xI4AxDFG/PwF796OdL+fCuf8XM+MRVCysdo=;
	h=To:Subject:From:Date:From;
	b=VkJMQVPoii9AMlAZPzZXivOOIGwYHef4VjT1+4Tsu3Mjb+e+0s8jtXpxyY8naLpS3
	 I73keNj9La2+jquPoenWWRWjktQ07XKJ7yBHehPXZrC9mF+yGi6xQ6m5Rl9o7onvpm
	 DQqsvyDFsJ8nLJilB069f3Twkp7wtQR1WU1T14uYWrQLWuGxyCyBaiq7zQiXiHcEGj
	 cHk48ljs1DrOCLkQKiWN7NCnFO6SnrLc3mcOyZUmVDed3jh4FGpuXHoL9OWUeMdIMX
	 h+ErsVkVWESuJrEz0rEmjg6vT3i1TL0dQWS+LnhIojFiDBfrllE7NbCUy+Od5x2Wc7
	 XM66iVK30NeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8EF8A163
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633945369.26377.597078875458662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2ee977262625553ce312e401ac8407117a0567d577edd8b709caa6d095e894
Date: Thu, 16 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776339453
