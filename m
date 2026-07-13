Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4367833C182
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783965514; cv=none; b=rcO/4iVhwuWENX25Ig4D13QX8+i8LVDV/MCQU/iU6mqk9Y7M65BUe5tLpsCnhTGElECJa3/+GiR33DtFOL3Irsrm4/RP0v4jWk7L1eg2Yzk8eP1APeT0HpyAJe4lwjioWswRJOCZ+2/dM62jRMXZdB/4qn/EmXCZgOrG4GFtcmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783965514; c=relaxed/simple;
	bh=ZoAztEJPmBAZjXY2pWeHCXq2kBbIuT3HErEDi47cU9g=;
	h=To:Subject:From:Message-Id:Date; b=oSrJAX+agB/nFHIedmXfZt1/s7IG5hRascJiRKoAcM57jKTA8E0sb0xHs4KZ8Y13/0HN+2BXjAcgEOjq5slFWv+xsTsGNnw+eXBVYOZzjzRaEkIolB8vWFc+gNtfGy7DJlLdwgRS6uOzyR292130Dz4LiPgqKpKLLOtVnM39zC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLH3oK8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLH3oK8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC1EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783965513;
	bh=ZoAztEJPmBAZjXY2pWeHCXq2kBbIuT3HErEDi47cU9g=;
	h=To:Subject:From:Date:From;
	b=JLH3oK8EUJfbyj9FSk+SD/e5U5xqW6QrCKpohMnt+FqLAMTYW5Kp+XsJnzM/HRP6q
	 VMfUGg6rZaoicqRNc0b7rYdGkxvxZRWdw8n4p93ID4Gg+7uxlQxI9nKV6iVudvDiHp
	 84BZr2w2hAFzyYbvNIS0CpD2TZW591K2uDfk+TIigfCjhmg+zbxW2RkFxrGxal+MUR
	 gFOAT+fCqukCVRsNganG2iMwvYpQSx2ZSLeJ1bKdARToHD6EvYd44OIsQgzVvZr5Ij
	 Fa86bvDn9iXIoihmy4EBPK3uI9gfmAtUx5w5gcAikE+QOpMP2Rb/z1sM472Xz2mXiu
	 YEq6Glag2XO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED5C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396551368.14851.10636901483863138985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0e0913b941b6fc323d0c33c80214b00bf1c26644d4c40bb37c0c3c8f89b3c7
Date: Mon, 13 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783965513
