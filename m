Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0B8273F9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736292954; cv=none; b=IXgsxVFQqK4hBNxX/d6psivt8iT1w3BKWnvp03a1mlUlb+CcXm/7ZAklEHP/v0Qw8wLTi5n9SC/DF3fClVRFjCzJrwc033jS2lrf31+l24j85RzgsC7JqyKKXHjWtRLVYvHHkPtC2XY/e5PdaWp6ie3YL9oCgXUdGTm/wbCTVCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736292954; c=relaxed/simple;
	bh=ihGOzCbLRfoqwNu3kF3GvC3lw/DuQXje0DnjAmEGRN0=;
	h=To:Subject:From:Message-Id:Date; b=VU9JksehZaD5dPubtFov5ui4rsO2up09X8s1bKiAkEsMFK2Gx/vx2FNIPTck5etG9/8HyFPia4CZEBKt0vP7tT4JQJl6k+xJlSg61+B9oSz2BJzq4efVvB7DH/x3ekguDyTP9bLPr8+NgP6DL9nBYY1oV1dASoAcHgyrfYufRkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niNucykN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niNucykN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA75CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736292953;
	bh=ihGOzCbLRfoqwNu3kF3GvC3lw/DuQXje0DnjAmEGRN0=;
	h=To:Subject:From:Date:From;
	b=niNucykN0sSKp1wr8oIUAe6RnxXnXHVSxqKemSmFs9O8vA0OgVFlOCePHir1MBQ9t
	 jL2w7Ys2SID9/BpxhMgI5dTwps3FTd6fXQMT+QLT3JI0RXcCgT6KyBu3st3PrZoTmJ
	 qfrQfoKi4+3D95GJUvX02BkbWDlPoXQfJDWBNJBE23QJAt7PHgHXvc768elbT2u6Xl
	 he8LWYHQSJ9VT1Woe/TyA4EGo5S5iy2bzYCXW3Ie8VzLazvEUqd5r2lrXvzEZxuDb6
	 7QKVp5SvnDQzDtHwHm3lzVSKNtNh3HgHXzUkMyeV4tlQDKTNai0eCCJUJ/TF5xTB5p
	 +wTjRqS3VZcmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90912E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629295358.25673.2068771457477768612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad40efb72953f157c591941b14dab485f23babdfcbf0b3be3b1fcfa5ec95bbba
Date: Tue, 07 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736292953
