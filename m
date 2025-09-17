Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C974A21579F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758129593; cv=none; b=msOwHbI6yVG8YPHClYIeBHkbM/XwC7q0ZMuYSWBsjnin66pLk5YVjOh8yLt8VqLO5tOPx0BNWMBapJ+i7jYYCyRzOZMsYhjBFm3xV/LV0rpfBMOyDxUzyC+HUWFyvKPM3QGrPg6bqWLQp88Zva7sGq1flzH76bz5sJHFvjO6XzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758129593; c=relaxed/simple;
	bh=SKg8KbaJdnN5nId3OJvkmZPKnbs1Qbstx5ehcJhflXs=;
	h=To:Subject:From:Message-Id:Date; b=EVGFmo8x27svguKl+SjUaVy/m0tIFPiV2mbbLwSgqRGIVH903mYmnudM9qavZvcBSxsCCmHKKkrJsSWC5iCEkkk8Osy2/Trzj1YJYJFM39A4simblRryZk44Xd5r7a8tN8/2a7WOJZA4oCIt5p5jZLLaiTVNQcumYFxiWt1M1xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd2TAZtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd2TAZtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7076C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758129593;
	bh=SKg8KbaJdnN5nId3OJvkmZPKnbs1Qbstx5ehcJhflXs=;
	h=To:Subject:From:Date:From;
	b=Wd2TAZtdyvpGR6aMu+WGQtEV0kDjwVjzG5HHnabl5BVoQMAUqc93Mq9MbI01wzJdf
	 autKvVd+0Y2VzTUjxHeiIlYLR/VR4Y4zZuIkxIZgQZH4X4SY9nCIvVGTpAqfYzPCrh
	 u9GE07gx8hKlUBUZ8oPTSAVapsi1Pe53i9m14hlQVzxL5FjYO+K/qGQryHbz0SjYAa
	 14PTYZzWJ6B9UTBv1l1jxdDLISKpYbzmPruiGJlw3Z1jys0eAxRDNLQHqgmO2vm56R
	 Kggt/P/GMWySdK5DUXYNRIbJQXg5Uk8jNFxy4Czcn2qsIl7rZtB51XF3N50o6fv3c/
	 tcqCXjIrzpQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93073CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812959359.7964.6770842369634560401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc561724aa7457266faaa4ead871d817400dd3c4e42e27567c7c852331caa0eb
Date: Wed, 17 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758129593
