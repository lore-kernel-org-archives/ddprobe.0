Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787653DD872
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781353594; cv=none; b=gzo3iZfBUXBi3p1QWzOgIHEZWYdFkQlbIXHZ+N9Qaqg2U0fvfxOkCb/QurrukC5EhA4W2N6p5kYsLos0D6h63/C68Hjpn5B6Cf9OhusbnPlcs/VSh3KAViP0ibL5D7TDiJ1HIQrWqlpUP+mHIDgUMtrW9dWq8smlpYxzMNqk0Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781353594; c=relaxed/simple;
	bh=+BplwfM8seHdUX4nr2fRJtgOryEdrrP1L8jeNAPRteE=;
	h=To:Subject:From:Message-Id:Date; b=kq4X5MD31vwN45nk5PSW64ITesgzLG0ezEfGwBWJyrxOLZ+bghYBm79ogmtl5ydIYMDWWwevIKEoY6wn0pGNXuS7rDj14hDsUr9kWrAVcjzKRp+Ws+X/wbkb8fkX6543/QA91Eb0T++5s3Ol8bdcR7gFDCQxpdaclT7YzgsrbsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw/7aapw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw/7aapw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA03C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781353593;
	bh=+BplwfM8seHdUX4nr2fRJtgOryEdrrP1L8jeNAPRteE=;
	h=To:Subject:From:Date:From;
	b=sw/7aapwTpZO/mF/+SCHkUlnGcV5uCGB5n6/h8tiqDuiICsSU2BdNFyjoF8Zc/hv3
	 LwFJi/tO3gen6OLrx4OC4O8yd7XEsvKaHmskq7/AJfqdaJ4tuRjakFy4D4IFW+bPwf
	 8U/MuyTBryffzHwiHE7TPPWosafOvU6FpJSJp4M/dl3JbHecHwDQMQJTdYe+8GtYW6
	 9Bg+U1zeQ5Jg3XoWouUEwJdxzpgFtNCgfygBWKKgsgK10gFDstjcnkgDHHD443NU9v
	 cXOwypJ1rFdAhRvvvSzUt76B71ihBlN+S3a9uDTvEFgpIfanofRJu+jvjzARZ8l268
	 RWtlOCUKJMPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FD7CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135359370.26026.1905840919892205571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22faf9ab745e23374a94148b07408da97f9a9070683e39fd34d3f8046cae040
Date: Sat, 13 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781353593
