Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B71372
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724606754; cv=none; b=E1HrHAeY0KSxpdh5hhpBqlwV98i5Wjp2ZEj+oO9TYYsufeDxkpJ460l03SFbqzv0mmkbSGEGYcTQcIooJF+cIsExFSwE+DZLGzhXj0MYVp0l23JrLSnaz0AxVI1yHUXW1mRrCd2HoyYbHPzjKLn7xxc+t6+HDwEmQZ5z4IrpiWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724606754; c=relaxed/simple;
	bh=xYdMo04Nc896hJzqXi8F5IhymbAVy4IbwFxZLB6IAt8=;
	h=To:Subject:From:Message-Id:Date; b=a2Wa3NECk5ptn1o0FxiQKYW0KvIKewJVoC8qQDjJy/tWgTh18qfp0z+Km5IJA/lAS5NFF2pnpSbmkUnHgz9uJYlTScVCJugvdJvL6dFY3tLjVGmkjuKzZ8VQw3JywP+8GmjGQm8HQFwZZ6+MYpjyAvLL+kC8D2WF1JASlP8qz5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5SnsmHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5SnsmHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61EC4AF13
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724606753;
	bh=xYdMo04Nc896hJzqXi8F5IhymbAVy4IbwFxZLB6IAt8=;
	h=To:Subject:From:Date:From;
	b=g5SnsmHU9klCbVTawDO4UdRadIRtpCt/XFO/vo12L7OnVbp55iUjKQ+s5OORL69Uq
	 u/CKuVoxIb++l0FNqpUogQb16v1tab0LYaEp8rrJKCbUQW2aGapu4jv6f8+SJS5GaN
	 3qoPBvVih0BESwhfA+KUR5gQ3wDisaKpW8istIPTazWEdiSDJB6AHhLbaA3Y6F0zWA
	 TnhsKdZwC7gDdTmdjVeHOwlUuzJl9Hq4tN+8/0bom7fitnQvkgfFdA49QOsuL10XTh
	 cJ0SlMNA+nZvY1uUnA7W8hLhRiA7Oe+ohyu4y47ZQy545BidXOMB19H71mxU2eu+9b
	 sHhfcKJz8jUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9732BC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460675358.23710.11653858414452188762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a313410cb49d9cb8a1c982bec9b8f2d14a3ad412c7c7811d6f36be8f86344bd7
Date: Sun, 25 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724606753
