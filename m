Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F1033C53D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768148634; cv=none; b=jiPHEKeQNUmZ23MJeTxDWJ8tH/LUbwahyBdwO5Ri8qZ9SVNWNqnR7Q28GqWR9QDZYqCUE3VBI6ZfQJwbIT2jx7WfYGZ0VbEM7a70FvXSna7lAHM+bxo2jAmnIv3iFCVgo9yRtb89255aqxkEuuAs4Q1mU2/+hfXszyx/J8Rqi9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768148634; c=relaxed/simple;
	bh=Gn7Z+h1TgZRw75T5mY68I/7BOxAWT9EVwdfI6qbUQaM=;
	h=To:Subject:From:Message-Id:Date; b=Kx23vAZn6f4Tmzn+1Xl8Egzws86DQ1EweJIyIVv4d0wfjAnP6jQ6MySPgzto4Nw1SQ6M2KctR9PUfNFT8rbgxHJMalCDbWJevhOzJm4myGIaBpfY8of4eTv38N90HL47sHS1vrgQy5qNq9VZfZeWUOnTn9VGwZ3LQe2+3eeH5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0DMtccf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0DMtccf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5374C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768148633;
	bh=Gn7Z+h1TgZRw75T5mY68I/7BOxAWT9EVwdfI6qbUQaM=;
	h=To:Subject:From:Date:From;
	b=S0DMtccfGMyM/UhVDZolqXmrPywZdxl8a0a90UqT0kDv+YEd50o5b00nUJ3UXR8B1
	 VfFutlMST+Dp8OoChVPZ0NxBiTZCplquDpiXnN3dDAwWZYbYbzn3IB6pyp2Nr+rT4p
	 4ecOL6HPE27CjQtJHzaBdlw7K4BbmbBcJ69Sf4ldg4K5dUbbEZk2CS67eyWPsDORF7
	 Z1cvX7NZQNb0o3ECqbmT0Qx/AtOSYQUoT9HmqG8/DlP7jEItp3a00PA9Erb+ZcnCBB
	 9o6G5XH+KfxrD3t78S/HtzFrUkb5DOSEE2QeKQQOiQskruM2Oileg4TSjpQbvKZnHQ
	 NxITqKSAmlILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A09D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814863357.5992.8647055919783481190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e6423cc867545c2eb79ed3bb67898cc6ef48afe987460d094e707054164418
Date: Sun, 11 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768148633
