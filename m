Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D19C3F2111
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778062054; cv=none; b=CUnDnKQ452GpWHpxAWND7FCOuONQW9CVpyatvzPfztEgEWneEd94d93ys+1KmGyq+ulE6j2/ft3fAhL78rAcbVKnzLVRT7FqinC74mfe/aubQYTSgWjOPSu0r0KHk4jLK+lVpOCCQJiwLkb2IcrqYWoiwRlGSKYLzVW2IG2KsrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778062054; c=relaxed/simple;
	bh=/X88rt75WN8q+iTXjKAqdFBpHZ5JLMub3UwsCm0wMw0=;
	h=To:Subject:From:Message-Id:Date; b=HI6vOtnIQUYSZ2TVhn4npO0knQ6T+v/u19nKz2wKUkFEAcrnWHQPveH4zV2WSePw55yMyxUrgidp8L31AwOKGCmLg/YJ+3cUBJbuRrzixAAR53oWxTGgRrHTCpJ56tFUNfyWearzS0HH6Bs38cxmbOGN/83SPVmADFNRzOvIeB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiGlSJgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiGlSJgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4575C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778062053;
	bh=/X88rt75WN8q+iTXjKAqdFBpHZ5JLMub3UwsCm0wMw0=;
	h=To:Subject:From:Date:From;
	b=hiGlSJgHlsJOWJIY0+OdHvZrNPq2CDbCU2fT21E3Ed0tMTzqzUiLWNw9WP2X5hFL7
	 /FalElf14PHMo3VNfLAs/bKW4f76FWNLlyLpRAQXAZ4gQjb8JT1BXa1rhiE8KwZ2yg
	 7Tbrhl2GhF9gPRfrSOISA9KZscpK5uTlDO30HLOjh7uUj8nuaVIQovuVzC7JcaC/ZI
	 ou8IEUdJ02YMgVD493rYL/sQ6vPDYtvdSFPA3wwA6ycxaic9kWqjecd2Aay6EhYcUD
	 ujzkuRKcgNBdyeNPIdOAKTkZ2lm6RlsfghphxfZk7SJ9WFpy+1p3ygQgr7Odx+3jXh
	 8dk41o0swM75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0708CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806205368.30985.8320351977165381267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb46746816607df5f15609b27aa3ddb2a5d0e7516d4da0c79c12b25be413b142
Date: Wed, 06 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778062053
