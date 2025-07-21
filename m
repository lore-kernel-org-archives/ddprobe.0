Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345842DD61E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753108194; cv=none; b=MsvCromOu7ySTi1NbMFGr106nTE6MH7MtWKiey0M51ZfpE0OASq3rAEcthZ3DHZWzQKsSbPdFpeb0ciF8n5/PLEMOX7L9M0xME96siFqEEzYqmcx+onE6kfbTXlyzKFILi+6ScZo/v0c/R1X1BfXqfJ0I7vB3ih6pSYkFhTBl64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753108194; c=relaxed/simple;
	bh=gSW3HJNwNYGLIjvgHGmTu4KTZ0HXhvF0VemoUWHw+Ek=;
	h=To:Subject:From:Message-Id:Date; b=rBsANEB8ecVYZd6UpkJDdaolkbH3aNdhadStNrBSRoxeTSv1x3ExhAp0PRnRsZ2IiPWSz+YihWqIHl7kHOchTxutkZGQh9N4WG7rZdsDysmsCqbkkXx2Q4Z0L9/RER5NDgC5HBESgi9Bo++qyeDlJkHXvO0pRVFJaC++cQxwMM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovjESvsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovjESvsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1C6C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753108193;
	bh=gSW3HJNwNYGLIjvgHGmTu4KTZ0HXhvF0VemoUWHw+Ek=;
	h=To:Subject:From:Date:From;
	b=ovjESvsy0mWtdu8o5sIVGGJCecGtCmN4Iiu3pJif0kiwcoa5amFjru1vY6xe0FTYQ
	 D2ySBOjzcg9nOJtav6mEBBtzuGLjjxNftMWU0zX0172OuwcOCCyP8O01xE/5zMhaIR
	 K4WToFGBaRjmizLhxk1LqBBzdYHy4MrcS5VXNjl5RnZWkLaoRe4+HE9lh7cn4mt33w
	 5nXP0yCB2p7MGSXd94BrvVgLYL2aDaWBzADVmAjbvdeaAA59qUA+h9K2x3VJTKZxdw
	 j4m2F0SY6nFqsZI3KXSfsO3w4QT/JPyBNwzlqbgcXqFKwoQD1j6oRK/1vc2je0ZSlG
	 t+pR/EPlUO69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E95C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310819358.15024.13918561235122240403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716e7cedbf460b4efdd5ac3418e06029dd5361e473c70edf27b7b034049f1c97
Date: Mon, 21 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753108193
