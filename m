Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8E212E6C
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712870363; cv=none; b=JwR1pIWwYwLXyaFrt3CzjtHExBw1k5cN57Cdj0sFF/y2OZ+tisTF2WbbFhF7JlcoanBmZ6wWs6IzXFKi5a4ky+TquNx6XzM7iz9U9MFDC8egsplM70nCAM8GHnhsv4dO03p0oKK9tuW4qgfeqG5oJ9KyeX0Cm3nT7cjSaGvxUxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712870363; c=relaxed/simple;
	bh=FVjgX+dtqj2MvY3Y5TRy0TXORnrkolkW1Pl247/wpsk=;
	h=To:Subject:From:Message-Id:Date; b=XlE5rS8glmqeHQjYw8bAg2P6/cfKgdTwbDCi+5wqE88RO1Swuhp+PHrN3luIShMtFklAuecIEoc+hIHUcywKzz5n6gKYogYOmnc2T2F0mcMic7NO1+aN6q4IJtITsNDsIpZQbufpewPy5raSZ2PquaoLbUncRLxs3Y6+AVNuRmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5c9se/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5c9se/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F24E4C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712870363;
	bh=FVjgX+dtqj2MvY3Y5TRy0TXORnrkolkW1Pl247/wpsk=;
	h=To:Subject:From:Date:From;
	b=Y5c9se/1ot/z8MKhBZIu1aH4SpyztS/AulSmV6/JiEnXIHzqeXuBuXjXGahR18etv
	 9dIsCfHpB0KZAJzlr9NReGuz6OYfB+z15ZySRFwil2Ho6j0defeQ5G4BfuZNhis5WF
	 k/8Y9QTPPGeiM/o/zM/FFRhiys+Ld7w0wqDS2nmkM5S4YUCju+tAXn/Z4EaihLOJiF
	 K6+FNE90CduYk8BbK5U49Vz+Eo/4x5mrjMC4B1bf7nLhvlFyjoYywWJGBW4WMKwRZ7
	 yYXEiv7Ya7XQul2rXnq5Fvp0jt0lK+B8IMX7LgsdCixUxWTeE/EgKYuTFIK6pTilNX
	 Uh4yRqE7Rm99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D659AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287036285.8614.4804029826286255493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a4621ff3d3b3437e1c295b0e4ce6a2f3464f6cddfe2bc8362917483059bd23
Date: Thu, 11 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712870362
