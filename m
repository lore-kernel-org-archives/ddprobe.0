Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204012D0C6F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755892794; cv=none; b=J/ptrTK0ZmShpmfxNtVT2I2OIBpejhWW7+5iP+PEZ7+ZR2LGKmSAFkSkHgmEgdgY6/NMEliH//DR6q2+kuKm3/+AHbc3Bb21vvgF5h2EKqrcSguL6W1g3F/qyYlttx6Y42WIJpPr6diT6fjOYsFlhCmXVU40F+GUnBqQqECZne8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755892794; c=relaxed/simple;
	bh=BzdKnLPEvI2C1kzOrlCAFAYaaRHN8XkAxrm1NPlU21A=;
	h=To:Subject:From:Message-Id:Date; b=n3f9E7sFCjL5rkEIOsaS96/ZZ/60fCmCFwGHyDOPdJ+sLCWLRO1lMhtKaBsz+bH078N+8oovhjOpnnYPicG441Zl9RR2rr+hkN4DZZ7nXaKtFKUPOdoR6m21hMFFwvMNa7MDOCCuS6IOvH7C/5R7GiEilgvQFfk4jg6SilWLM2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6yfKUQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6yfKUQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3549C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755892793;
	bh=BzdKnLPEvI2C1kzOrlCAFAYaaRHN8XkAxrm1NPlU21A=;
	h=To:Subject:From:Date:From;
	b=b6yfKUQ66IQfT4rIleJDqm0GglBLhaxp9pRC10GaE8GlUwUNrOvMBwL8j0p3Pu4Kg
	 IvWRlRROFanoThB/f/J5PwbXmF2YIMX4HA0a7xW2N+d//x0gw+qTQjPnF7kq6g58Si
	 gthVSJeKViz3ExS0huVLCZrZNC/oj7BsBAAhfAG7RT2VIYfPtTEuNij8fMhHNvyuEp
	 G6V69kYLMpXGDObokJjvCsm2gAmXg8d1Sf3sZ4WBTrCej7u4dMOfdUPS/OicdSwJ7F
	 0DqJmTuRJKIQfNgsyKudMgn6ELUg/g244eT1SolWvKR2UuiDLQXMHoFHWdDECisNlB
	 vn9jIDMAzZ1Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC77CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589279357.5892.14239678639633554229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eca53b1338d7eb69eade6b41b22e5b80fe1e09ca60c2c3d9bb4d84a230608bf
Date: Fri, 22 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755892793
