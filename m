Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F019214812
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783697314; cv=none; b=q7gZIPXCMLzIJGe1m0wBxQwjAHlginCQnEQpEF/+3hym+7mJI0QtvvYO1OUfgN13Wot+eY1qM98yN3cMc/h5X9gc8d3VCxT0V/q8iPiONFyzzwXCHj5cFQY03vSXKQzN98AtUO8rZysQd3kJIl0jlcJgr/3F5O55YIq4gWySu9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783697314; c=relaxed/simple;
	bh=/wiZAtczoBqKCDZYLnYR3ZpF1zayBALJfuc3qCyDBAU=;
	h=To:Subject:From:Message-Id:Date; b=QKzqwXmBq3wHKsWzJgDHSY5cOIlJJcAHUABiGm4T1NPNLxiOhmSRxe5DNmsFbKdZySJX2xOR+mRIOia+2UJfoTe2hEsgsBqN2zn2ZQEGvtzk8kKXw2aCxlrHjP9xCVAmxHdk+l4Nu9gOLeW77wcIEfKylQz3kFQ78NewIHsYjGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFduHuPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFduHuPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03ADC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783697313;
	bh=/wiZAtczoBqKCDZYLnYR3ZpF1zayBALJfuc3qCyDBAU=;
	h=To:Subject:From:Date:From;
	b=rFduHuPa2uRohnYbuLADGdSxRVy5n42c4oczrKSrDUqzxiLEr7oaTzlwJqNJPRATL
	 sxL+bdtduLZ0hSwBblgyR7hncaN+1Pq7zLVATeT59gh0U9BmI3c6bWacXclnHOPwur
	 vZ2GSziBYBYSGk56iTgwxx1pgp8WxlSHeKXqGJu5yPWNskN5OHtgjjFyk6GvBoskaa
	 D5XzwakaXLP8FYYBS2sHB/q7fS762LqPTpdFU4aGh+ioP0PYgvjxhyrPB1XF5rXo8O
	 wpU5N28KDyCTk2cBc8lKPdFU6wjRDs2IleSFIjzD5F0SF1bB465hUnFoOKbKV3GfeU
	 TXKDUu7PlUZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90A2C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369731368.21065.2988000372300308045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa550ec57dd13a47ff04b34ed99548a6eaa631af2f238ab3b5b5e0ead399ecc8
Date: Fri, 10 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783697313
