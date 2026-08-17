Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402DB212554
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786971634; cv=none; b=QG+GHerIc11lHwaZTzhqIavssvsTM75VqOASfCCh5rr5x3GgwBeePlHnf57nV6OKe9P4yn7Bqnb652gy7XAtaX1mjtAno/cF1zCRW3RW6BVRARGKiL9vd7JkTjWe+gl7XPg5yH0mZ9vu5xqicHtO8X8kVjYcv+HK1XSdfoJc3ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786971634; c=relaxed/simple;
	bh=vld16f/v9MKf0QFL29pnoL6hSX8mPwou089+QE61xgE=;
	h=To:Subject:From:Message-Id:Date; b=opMebLoMva5R7/VncjToXbuAhW2pBji8NmoEqIzGWOKhYxc7yqnS9sJkdEBgtifEvnvpH68DnuLm4qegvpTeiO6OcF2tdMRQ8ZuVsOd6GOQm3EVKhV9dAQ3Ik9YVlYR2a1bLwGy8r7SUEQbgedr+objyzXsTQVYYyUPp8wNcVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSZPXSeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSZPXSeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD6DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786971633;
	bh=vld16f/v9MKf0QFL29pnoL6hSX8mPwou089+QE61xgE=;
	h=To:Subject:From:Date:From;
	b=BSZPXSeCtpVAxjAAyQ6iY4rbZrpysXUPq8Ejmix43pgyaLt2yk14VPxzrQV8eb5sE
	 Dh6xp2KM28UHOB8xRA/SDZnIO/MtpYlCAQU6uIvyCiZA+AL3W0/F6AOE88CoErIRFy
	 1Wi/oNz/gUHGF62ZgWYZ3iiIADYi6XFwSJOoFfqRw5GftHQ+jlsdyl2fxAdEEPRDW6
	 PkdsfcJC0smreelSE+NMb1j27WYp0LxYL/eWDip4Yy0YK7PmG3PejscAKxWBBGRsze
	 LrqtOKIVHNkYXSr9zOiEtLgJ8tKwpqU1baSKRne/FvuPaoF8mblFT41WIF9pHDNmbU
	 2AtvoNSbKSIqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABECAC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697163369.20218.5082136761370415865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b403114dda6fa314a65f5c939e909a3cee19edacb0c61a33f19959f0d042a9
Date: Mon, 17 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786971633
