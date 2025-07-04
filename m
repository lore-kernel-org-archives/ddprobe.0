Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1C1293B61
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751623794; cv=none; b=J3TbNchFaJMxmmQJ7TKjUsq+t49lchj/+iAhhCcPEQFV3E+LZA5y2UL4QqTYp6I/ISjHb+cU5P+OlRqE3l9jHyiMOiN5NRmKV9BV4kBeVi2PzsFXOAf/kjrHpyR79dgSw1IqOAg0Ne/XEb6gjGEk8UhLTQ9Fc7Dn0iZFb2EMG+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751623794; c=relaxed/simple;
	bh=40fjn9+ya5H/ctBJhemQzV6QknsTNE6pE2+NJsiDxLY=;
	h=To:Subject:From:Message-Id:Date; b=Gf+bdxgJo1DJvXLEjBr7RXx5xXjeMXnwcYIKqDgUjSrVAhxSfC2YGky56Gj8TQbIk1/sA+CQRiG9qy9qnMAQPAjq2oteL0/+seJWm39lRmcVcHgYHVwdc8mEd718E949643B8BeyN6TwIsUc70FBA40PK8bk+XJqvhDZzhTXwOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd56K6rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd56K6rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6325C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751623793;
	bh=40fjn9+ya5H/ctBJhemQzV6QknsTNE6pE2+NJsiDxLY=;
	h=To:Subject:From:Date:From;
	b=bd56K6rNBDh8LhrPBc+fxnBU1i6L29ArCxtj5FVYXXTHTZYIcgx1lYTg2rq5c2PNL
	 WbyL5GWa/BhIySeqQgPfrnRahR9t+IgHrp2gg59E4KPlHFOgROYZzQ/JHfgVwhS5Q3
	 KGc5ddvSD9AlYY2G9N04gJ1+0+7gCgDyoTFCnIpHkqTNxdl06+ZyqWxZQdlbeeqGyk
	 PUjx+u3pH1g8M6KWhVDe/u4In3+IDZshBesd98BPXeS3P2ILC3LiHjLCbxEL3I8eoc
	 QP7EIpvoHwHld2idksKhKxzo+BzTZNFyuRry2BdJyR4q4ryom3C3ans6H3qAXsxJIq
	 03AhsEm1qW+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162379357.4842.6167426520455577343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7507f466d5d8d79f805e89692cbdeeeab53872253497d9ccaa41d04b9863cd
Date: Fri, 04 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751623793
