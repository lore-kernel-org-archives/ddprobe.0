Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67399156679
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719318203; cv=none; b=EgFm5YNm2g4YbgnXxVcvNu1ohQRygsDFtIYiqr4W1/UeUJ0ti1abJL4GDLteT1K5FdgrvLk+cxazSIiLJuNYI9RKBeFIPEVi3v8uGl1o1aYKUg1brhbDUaLy0PgyUzWnkyJ077FuzRHzcQnMUKXXq0BL6C+N0mJPf9dz2f1JeIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719318203; c=relaxed/simple;
	bh=DVS5/7oQC50B0+NhEgvV1f/z8cBROYvt6hPGlX/pnyo=;
	h=To:Subject:From:Message-Id:Date; b=g1cLibMGY2jb2dNV9dIPtzIi6L5H5mMHrrA/L3wEnKPkc6eduHzI8Cwkm3l04dPLjdDot3QfiuEW8akD8MujYZ6iO91hZsHCdFAu4JVLzg6Nc4sGxniTlnMsc+n+LiX8xns7EslAqUMwz3WfBLtmeAe9nqeicKCbdEZDd5kJD40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNgK/iLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNgK/iLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF51DC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719318203;
	bh=DVS5/7oQC50B0+NhEgvV1f/z8cBROYvt6hPGlX/pnyo=;
	h=To:Subject:From:Date:From;
	b=kNgK/iLNhCgOfV9gMmNyJ4IhA9lU2109M/0qldAScbovHdTW6qL9xv5oMk7A8jM5H
	 6dreErMFczhJJJPDx2K6Ey6AlR92RSWnqtp1qVTBrRfuxKS4oPm/vgq9uEyHuY2AcP
	 RTjKfwhT4JO9KkVweJhLJXC0QjgCo2ySHXqLraoQGxTcS+G3U6e8+wIUDjNDZq70tt
	 aHdB6a/RzZjK5C2zETpr1rM6Vz9fNvrGHcDInc5Jhfk9pvzch0Y6sf+k//WLM7DNWO
	 6FmMVUsU0Cvfe6DGqZlt3jQMRJbPUU5/PFSvbWmXj6RwINFm9dVOixStTzz3jUuSHg
	 VWREB+NYz5wyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB554C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931820282.28928.3255458234912681811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302b9793e3030eefe882aee99db660ba9882dcd31621ee76a79f3d11e24d0ae9
Date: Tue, 25 Jun 2024 12:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719318202
