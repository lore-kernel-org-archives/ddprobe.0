Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCE9156C6F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747252194; cv=none; b=YYDib6RJYVQPL2LRT+pTejyO4t94mFV99gMozwydAIY60CPO362+n2efQgOSL+rirWMJeAolQ8tdxNttxRZhaXu+ORZJv8z2mSleBxnWY+gR05mVB3DkZluzZYJeK3qkZPMFAEN31Jit4iR+5OPj/hCHpu3Mfqdi6dHEyPjctwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747252194; c=relaxed/simple;
	bh=IXxI1/SOuyUvpeqKIhkbs3jNBsr4kajlH6mPIVd9cVs=;
	h=To:Subject:From:Message-Id:Date; b=V5UOAZ8Me2+kekQda6R3gI2v2lhmgsq4nv1qAAeoG3QpLHMFSOEOT69EgEje0b3UkvSGMpehncZNvFuFQZKMmhzA/ZhavmKYZJY3zVv7GFrZkZoIwDcbY6/oggXbDG++knUtIaSvFSRFQcFHWt8O5YnVFWqmV5as9ELvbmgTI9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeOMwGHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeOMwGHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A8CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747252193;
	bh=IXxI1/SOuyUvpeqKIhkbs3jNBsr4kajlH6mPIVd9cVs=;
	h=To:Subject:From:Date:From;
	b=VeOMwGHMSTp4WNQ4kXZ82D+02rGjS13wJ10DkBrAHQr5zSnVAarBKOJmHN7tpbOJJ
	 otqmhd9Mox7DHYLm0q1+ey0kqzjRq6nOO4iiR4KRdHYJsRqqu5C7vAPhMaHo8CnHnV
	 fOHrG7b6gLZgvGwA4TKEVnJsoCbBsVT+9yZNBV5RGMpn/o2m6tcxyP7jKBAOMU67/x
	 qLp1kNwK0KRvJ8OjFn4CkYC92T8T88oiVz9U/XuURXPShsegfrdoyrfG4Jkf9PzHI6
	 g937KQJw+6+uJO51im4hBkwNSpKwvfmtansCTHyN6Au0hDhzMwXFeXfPoDir1GFLPD
	 NAH3mw4zwcOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE18C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725219358.10753.5079387391273128599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf26aa2b0c82dbac7f2d0018ffdaa4b49baa20bc31b50801559a1d687e3b763
Date: Wed, 14 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747252193
