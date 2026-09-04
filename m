Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA703DB63D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788517234; cv=none; b=GbAihExTbWKqdEJR4Y3GRrQ/KM6ZpnZArKIQwXM43ltyDQkydAVCMnYvYnwL8dARZD+wwUNBcKmEH5K87ltmZEn3OQtZTOfrZufTFxSBl9zHYIDjB48e4mI+0NN9cYLQqeIOtByH4YMJp9Q/xh6tJBww9XvCBhAEdAC6qJXhtTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788517234; c=relaxed/simple;
	bh=eHJ6dAjZTNELV3GmQsPmKzWqHTDh0qQB1rLWze3o9wg=;
	h=To:Subject:From:Message-Id:Date; b=bYTk9euOFN5oA+/+0VrLGh+nfT2ec6wMAW+xzK8m1azVk2i8iBSVspSdwZT5L9HeNY+HK5ntvIW/iYA6yOruYoymbDzPTXaCzeWlcnV4FHmN5sW5xm6BtCQjIunnSYPmWcA4D91a81qNhX//9fsq2Zmvcc6nlJJcLpG5HKWruv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSaF5pRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSaF5pRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25B4C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788517233;
	bh=eHJ6dAjZTNELV3GmQsPmKzWqHTDh0qQB1rLWze3o9wg=;
	h=To:Subject:From:Date:From;
	b=sSaF5pRtsXT0qJdTzMO1Iy0QTpp0xRw55HQfA90mTRkuP0PbSBP5blvLwbeiwQwfw
	 8KBuhbQLUGmfUdGUissuhY0cG9gLcxR4Sudk3bienx8qNyIhYbk6Q5Cs2AM9Fd00aL
	 kVtGpU5gAnONmpoHD/FpO9kMWb0Ga4MOMEKFXiuq1DIDt+lcRknl5KGKLMvtog8eW7
	 KiDeZhKb4qy0JxdW6waBWstRapoNhqC4NARySfFc6q8qkOYVGgwa3xwXAr+uNoy7BE
	 eDXkSOYKeqiYTcxNfcGVpdlCb4HNgnekqfDGewE0cRCkpwd99iYucEE9MIcrssQnXx
	 iNyqWSTuFzb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C4C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851723370.14519.15335607065318163210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2326c15595161bb7b89233993c8b9ef6118aeffddfc09e46e9a60705261d45f
Date: Fri, 04 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788517233
