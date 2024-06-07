Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634CB194089
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717766243; cv=none; b=TWN9fe8Za+IqCCvbGnu63iu2sMiEy8Ws2AFzenx6tB6D1I9bjHJRfVNici4fcFZmjatLDD/2v60bURDz4E1MKwKU6L8iL46wutFipYP8Y44k2RwYvWYpyQVVPxglTidKFczFwE+HTHPFHpN0lPqOLGAK+srB7y0XJ3TUQg2obow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717766243; c=relaxed/simple;
	bh=vWGyoYFBVMzpbrhio5f8btlqfNi4zWl0fij0cMvpSqE=;
	h=To:Subject:From:Message-Id:Date; b=WIbmcZ8bSuaXqrxpOOSXxnJ1JsI+SX1dV+R0lgC4Y44Gj56J8exvC3dm7FlHfN496re/geOTksp+MRu4Xc/8c5I1WHlA6Irel33lJL+gyF6+J7ZspWy4Imd+hR4bHYZ0sbjv/SBGzOYrndxAllEoC09E1U8xT2C3ZEuV2mxJxzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O81GIXU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O81GIXU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CCBC32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717766242;
	bh=vWGyoYFBVMzpbrhio5f8btlqfNi4zWl0fij0cMvpSqE=;
	h=To:Subject:From:Date:From;
	b=O81GIXU/njTwt1cLgAYcDWmvEJRn52VlCosZlf4rZ+p3oZUKDoi7k1Vxdciam3VXf
	 G4JHoA90D6/Tuoe07DIDoZnoTExh4nZt7dG7/iwKOefIqR8Pa/gKRJMZpOmUr9CXNr
	 A8l384QP2MOKDf2eUeajb0xQmcBn3F3h0esQucrQ/aGgj12JYgl8+/3uqbjv5C3yr5
	 tPQD2XnrkuCeLOLKqiTyk1sYCYV95HU7MUSsdQrayfO6QRE7Bu1XXgnEDT3/AwdjYC
	 xx7fzpHeotr2tHXKhpEQO3rUZhCLwOo8w1YKgjjtBge9qe6p0h+y05XIVYfqFhR37g
	 GMm8zpjGQqqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC33DC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776624279.9245.4564214484634499435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5e80a71327b8970411217106349e15783eae3823832b3134aacb515d2a46f8
Date: Fri, 07 Jun 2024 13:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717766242
