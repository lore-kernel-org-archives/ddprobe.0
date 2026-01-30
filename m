Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAAF34E763
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769804633; cv=none; b=rxqJMa6ko72IMPDoPVmU0YlqH/3Gowtp4cmg+zHrDhvczJYaaK4FBM79hNBj8xXedb316iLkw9/jPQplxt2eQzxCzylWEpCXR1YeJw7wM2hrUdbOqb9LU6Mrgl5q+hHkexAVHZ5zYmLdUatbehixwhuDooLe1WIjNLtduhZJ8fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769804633; c=relaxed/simple;
	bh=nQvM6sVep7FEui8TnKyMRzcB2PYp25qAj1TrZd9QSWg=;
	h=To:Subject:From:Message-Id:Date; b=jzCdjoRtCxbsBPGfsZ35kLNphb6U2i126mXUdsaCq63Q94TvgY9Xz+ljKiukiF1jPE3HZQTjDiqUZGHw38j22+16hWqqiP+Vj0frcS91C0m5w5w6iH8XXeb2LxSecNHGhcSRZLjTgnFnHXdn6a2n/R+UcPsc+u5ymUGvOWM4vBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvoSJwsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvoSJwsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFAC19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769804633;
	bh=nQvM6sVep7FEui8TnKyMRzcB2PYp25qAj1TrZd9QSWg=;
	h=To:Subject:From:Date:From;
	b=IvoSJwsHuF54R6ARXe2OIgFBUAXNR0sckrUZcBMbGb9DIhTo6Sjcvls+BLEusF+DU
	 R0BhDwEWoWTH97zc6D7xbzBiXJEKmmUU83znUAPbZl/Dk5dLNehAcSKQSm6yISTv+q
	 oPU/YLSh3Q1PZPHInYlSaLfd4b6uzZ7r4tXiVwJe7i6zNvnumRh3wqC8TJ7GJvNHEf
	 VRf9r07p4qsXF5/jqZWDa+GKLg34vnhUwglvP3J16NJ6q16fb9pv9imLKGorTyluLR
	 KQClscMwWu0h35ISCpxWjrptTYuJBNJGu1PAAoxlkBcD5YGoijB+X5brDExGJSz9pW
	 upkkeYSEh4IZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFE6BF10
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980463358.2518.18010023894838617489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb5492a58b41236ae16bac6beaf284c1852fd885bb570f63a710042de4410eb
Date: Fri, 30 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769804633
