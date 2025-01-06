Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C9B86354
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736186155; cv=none; b=hsZ8Wcffg/wDQvHUQ6a/Tz/jLHbcvI9Y0dRN77viFRkM6HVTXZwPIq/RktLHnO5h365dlW1K7+ZM7duncczlXVWiAXG0WFHQ2wQbm9MSYZlFo6IL88Wrr34YdJ5TqBEWQqpSV0sVChvh/y/Gk7Sz9CSjzso+SlQ73SwZAAdNo/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736186155; c=relaxed/simple;
	bh=YBICWB1szwZKxsDMeOoyc/W+wmCFeO3wIcA9QRkBtnI=;
	h=To:Subject:From:Message-Id:Date; b=msi4o7pT9fWNvl+UATiiw9VJQm1/atj1AHoDBo+FH8fMZug3GNXjGxR0CMhj/gJoA4F4EnyDBuUI0UqvnktUdQNEYQ1N59gHCA8FLLYHdyw6UuUdQErIsBq7I8eQIDMfxajHf13RptVFLVDiLxwT6zTEhhzjME97pKipPQIxV7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPuR1Tot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPuR1Tot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7A0C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736186154;
	bh=YBICWB1szwZKxsDMeOoyc/W+wmCFeO3wIcA9QRkBtnI=;
	h=To:Subject:From:Date:From;
	b=aPuR1TotRSUOB3pRKPjkn1K+weVqAMAQfCFfqM1WjKQrUJwNvzi00YN3KKUpnVW5M
	 jcyFMOe8lOvchYU1MhoSTEbGZcgIT5FTWpFzWW4tVBLnlqpKrXdpFGzeWbFVEv1aay
	 vbg0gH4CMbNEWWQHL5BUg7qD+zMr73cOVY5quBw4gD5+RJoZQG5fszPju9CjOnGAef
	 el2dUPVhBMUfH8MOGeWvr8oXHiWYW7R1E2szm47mQF5ODcikpFt+EtDSZo20d2QCFD
	 fVorRowqJoFxl99GVRVcCe4pTyegH9qDt4WzeiWYmnWvCSIYmDDW315Fl3+0Geki3s
	 CvnUq/NjY6kZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CFE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618615358.32638.7586257453200047248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4688d2709d9cdbbba229e566ca1db375a6dd6ac50648a5a8a67721a990e126
Date: Mon, 06 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736186153
