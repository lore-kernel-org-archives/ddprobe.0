Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8E65227
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750379394; cv=none; b=Nv2O6DzfbgYEFWHURpN3T1uITsqRamOLqYnAuXISKUVPzs+FN6ge8b7vgtlnTIeMzeuelMk8agDMcTkJV4n4Y6RR5vtB3VJnTQFDid2GzBzMMXYV/BidOqTMjY6HrV+B5tAOOykHWwkkTl8N5V19NQDOdT0Pc98+wNp1RondXZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750379394; c=relaxed/simple;
	bh=QR3YJR19Gm6e44ILrMAZlTnDfYxMy40nb8ZlBa44kDI=;
	h=To:Subject:From:Message-Id:Date; b=lcuhT90fpKY/T7Hz30MH5chrXZ+goVCKleym9lJYkOS1ggHdsNwLUlyttLTpG51nAgZzYQKDsVHFU6mXaCqaaz3wX6pwzeuEs+3WjXDAgT/XHVRBB+FhKSOJk4wmN7NYn88nlVbuMdItHf9KHOYCqNwyyrkbmq/6sTF3pOF9Rks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REDN41sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REDN41sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2257C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750379393;
	bh=QR3YJR19Gm6e44ILrMAZlTnDfYxMy40nb8ZlBa44kDI=;
	h=To:Subject:From:Date:From;
	b=REDN41scoBvU+NTBxdqZuqnLDvGy3qC7CnK6WVRyD88VPBdqYyp1lt/fTLe/MmDO6
	 Gzv6eYBcTIubo8RvQ2g+ATBZ/xSxpK3R0NMXagZcsq0PbxpPXptmmg21kgWfTQ58TP
	 wwne3xXFmSvqbu05mjUjjFAzjolkkuUoMe89pjrVNnlvev5aRqEhsEo0KPuV3KIVJz
	 +kcu3d3+Q9ztQ8x98gsKlqPI1gu0nkdT+XGiMg2oJUs5X8y7ObEnDEuWiMlSBhK/XB
	 jW6vwSwUsN8dRN7pftQUbJrQaVIVyeY7JNJEuI2oAl6TMwDi1oP81mt9vHApXT8hGU
	 IpXwzXRrz+HrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA2C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037939357.9182.7680940731867105085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d5e2e327c4443089807b1b6b97ce46ad0cada4cf0f00ce2754eaf8acfe0cb8
Date: Fri, 20 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750379393
