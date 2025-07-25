Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188D12BEC33
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753432194; cv=none; b=rPXcjKH6VXsxDKeuBig3yGGn1oeKfr6vKOwzYbMhVFCABDa8wlPN5Nv/FtUW60p10OC3tNYT6E+edoQ2JEzzLRWy1Bj9iweDEZ8P044JbHF2EKnnDlqSvHEuLxU+WmDZ7myB5H+eB7EOXRKWcUaTlZUVxJzcLe8eYa4oKCuWTiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753432194; c=relaxed/simple;
	bh=GygtJpazUBtztlO5xtTr0ckyutbgjydhsgIU5TJtZ5s=;
	h=To:Subject:From:Message-Id:Date; b=lgYJOtMnrolBbHk5HDiz6SLsD/r5i7JWlTJW2P/lyiojj5ug034QEGT3naW5Qw0rLVWmTWyDMgdTybKZ4z2a+dP67aBTdRr9yO2wydqSuC5uB45hJdgWiwaOBrRfIayeg/ShcQL+rY3W3LAtgwmRP+VWg1yF0hSeqNGSWdXfX34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsXy2oAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsXy2oAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1216C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753432193;
	bh=GygtJpazUBtztlO5xtTr0ckyutbgjydhsgIU5TJtZ5s=;
	h=To:Subject:From:Date:From;
	b=NsXy2oAdWY2cwZzby/21lX0misau053mZe9fJAJPl8yWJIqfuk3ErdNgKnagjXD1Y
	 F+4Q7SQ9pq3haio9+FMlXx3kf5BUd/oZqMkjiobD8rQSf3gOh7VOyd+Ci37BlfzMZq
	 9xVCHUxEHg5DASDxeSda030ebsKwpOklCo39oOMExsq6K55bWD81GD5AIWgxv/RexU
	 Dv3wSZmC4Qr5dvZBb8N667LgVl4hmTEvOW1Ry7LEQMPF0+kN4tqoUhTtNCA8vgsMir
	 7Gxw2QvD7Eyap/ln0tX2CdABPX9M4NcNm76peaQw0MhiCy2yvNZao/ljm3GmARIJGd
	 bRC7qfEmQBowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50CC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343219357.25733.5557754605675966325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7382f3a46ffd2d004ca89fb15bc9efd0580ead6ec9449a97a15541760354c8aa
Date: Fri, 25 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753432193
