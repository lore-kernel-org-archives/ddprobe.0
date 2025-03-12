Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CD1C5D7A
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741795734; cv=none; b=MmO/kNbgtJWlGVrd91us94q4vd9ilDK55+gRcIYgyY1CvLWvK1rF28zWw5Chy21hwLTaXU/VeT8lyudRWMHGkqfsaJdyuo9T5f8SZaJX+V4uTMz24lHqinO57B0eeoq9Y+lmACFeRDFd2cK2a33tlVLVyut4XomagNWUWL/BGUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741795734; c=relaxed/simple;
	bh=rfMXizvFN6jeR7x73AmkaRA8RmWYXA0FdNGh/7YdtgY=;
	h=To:Subject:From:Message-Id:Date; b=oVvaYUBFL4k9WrePVx9FanaGs/odrQ3KCZ55xk/PuqYfAKCQR18W00oO/NK8a8eGa1+9x/9RyOoLZ+r+/ShieBqjSoqA3rGkvwDb5aIx0VdSF0CEBUXa98SDLsYZvwr4xHE+I7OcfRtz7d5ZlYFVe55HVdn7d31jlcp5GW7oVwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okf78RGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okf78RGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F89C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741795733;
	bh=rfMXizvFN6jeR7x73AmkaRA8RmWYXA0FdNGh/7YdtgY=;
	h=To:Subject:From:Date:From;
	b=Okf78RGpMseBaCXoFLIMXNV1uHT0tJH9B2cq/FAJKtagoUUAPtep8ZpE6gz3P/fy1
	 GQhs360SYJeLMR1rZRnLOVc9OkDL7+DDS6zzhWzJx5FD8wnsBa47mJTMZZZjYD8hte
	 Vv/j3x1gc24qXUW3hjOF7TL4X5K8WPrkEDDNX7Pxgwd45+FlO+hWPBLFlnAzOBEFEw
	 9opKug2hitWbrMNkrSZxjGNexhVuMufE21GgHFCzYecZ9CsVS0MRDj17HafPIpBG9W
	 FN+KXdFfLx9dW2RkAv9D55pkBjNY6iPxb47Nqhs0Ty+cOwo7cBUs3tQ0e2XKFqTz5j
	 0diz1lEPCdCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D41C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179573359.32510.5857695071443242561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c35ad6205a3f9e4fdebc6edd819374dc5021d4a61b53727a0d80a6bf6a8ee54
Date: Wed, 12 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741795733
