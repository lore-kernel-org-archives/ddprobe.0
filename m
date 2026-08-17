Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E2129405
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786930234; cv=none; b=DoXZgWwUwhkpXDccNipNMFhgJnZI0iG9GazzfN3NTSP+gk9OqfwfU6meFfsvXBwiJvLVxxVtwvgwI4/i934Fp/uUXSnIhX8FTBt0HffbqE4zU6WwecwPeAX5wd5nrYagD12pQLmtJDY00A2kxiS3wWGD+h5buTt6HeXozUv9p64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786930234; c=relaxed/simple;
	bh=QA1pxqTjD8lNvX72FOS+X8iVwB2kGFVeXSKtKYWUAmU=;
	h=To:Subject:From:Message-Id:Date; b=rRsXBTRbOqRGjd/VED7unwOFFzeoug7zq82lth0pzpnSWpibODR3S6oEPT4HtSfBxNZJxdQMfQkkpQ45U35RmfTac+MdmU+c9XLU4236mfuu9dMd/QoNnCVX2wm+CvhnJwXHideimhh3laTNS0awGECX4QI5oAYl73qHPttyjmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJGSJMT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJGSJMT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2726C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786930233;
	bh=QA1pxqTjD8lNvX72FOS+X8iVwB2kGFVeXSKtKYWUAmU=;
	h=To:Subject:From:Date:From;
	b=BJGSJMT1YW6FdU/zqsWwNcV3n9UtD/8iCV3DRsXe0CzQQaJEw/6BLkTf8fFCOMy7L
	 mziPI2BnQGkXvRR9iNOxLT67bXaDbp+MBQk4xlllzToXurcgqPe+/W3mbAQG4lLGsJ
	 LLIVI6hpRctfCTQXROYKcU23bC7qQnIdgvMvqFxj+uYlqRjI0wVIyiGh9sUqP4BSf4
	 /Kg/1RK6/TAQCihVfTlatwdkB0qRVqrH0StO7bwPtlR7/3VqZ0wnVIsfAWWK65yfh7
	 I+I5/Zy2mtmix6dCw6VUhN+YByNFfF/L1OpVkAfrvaLj/Q7jq0w2Ebnkm0dLFh/Ukg
	 HxG7QSGYTZ0/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B5BC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693023373.16207.2796099187030898940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2a7dd46cb03561787d7406837ce0713dde205c2515412e1e6b41436a2a629b
Date: Mon, 17 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786930233
