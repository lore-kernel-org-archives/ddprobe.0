Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647FD27442
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790307634; cv=none; b=kPMwgm2UV7RZ7WBSI/19cEDddqsKOfBGl4w7tI608f6MkP8cbrWqj2uSzJJauOlbK+mfEHr8PU9iHYMFlcjUqNytp21NRs9CcFy7heoYYZP8s2KlrjDDIFOS3uVQt1mgC0fcRqz0n8/SJKjgm7eS3ytqiy86Xcsjxrd2NchOwEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790307634; c=relaxed/simple;
	bh=q014ADu16dolRcDaGD1deO9Kv5X2mpENW3XmsR2d0dM=;
	h=To:Subject:From:Message-Id:Date; b=m1w86khNYzpYqgVB1nge8rQZUPHnh+4+xlOgiogFjX8oWzYnaIjaUREViuO7hzet2oImIPeXXWoXDD9e/ghvdCi35C66YthlkpYyMZnf5ZuBGwplWCwyYw3TW4dhklUso3jm/CwvzPRA7fQCp1xagTcPiV41HywPOYOkfmaUgXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgPpiNrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgPpiNrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37E5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790307633;
	bh=q014ADu16dolRcDaGD1deO9Kv5X2mpENW3XmsR2d0dM=;
	h=To:Subject:From:Date:From;
	b=RgPpiNrB9PA0eClFcQxHWYEbJKvxMSD5+g+Spk66SzWmf92U4/wrKSg6Z5Ie1zBF4
	 yl/0j/mTsZIxlAP2xX5igqWkgEecEvLKWJL4Minpd4H+Uj3KciAdxtsTQ7q27f1vuA
	 pgs59erw6wNgxn2QVZOyDu8jt2/g0NZTFR8N/rw/Zssk3d2XU1HF/Zc3eJ6kKUjP5c
	 GicKSaEyTdUdOSG2JY3wSAe+eOyTSBo18GHUnIUJleCkyqs3GAfkNwxf1lmj+/9gbF
	 gV0/HVeRbrdtOuw4ZIkfSUO0ndHIkIfze+M8fGcoNXMwnNx5nlHgOKpPFpw4HKN6dc
	 pagDtfQaKwX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1737C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030763368.23293.4944472704195477542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b20792d0e77c052d163be8137355aabbf999493192bce50db682a0c38afee19
Date: Fri, 25 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790307633
