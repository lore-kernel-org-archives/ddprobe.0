Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDF93DB327
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789440034; cv=none; b=sBo89Of3CvAk1mmR7mcf86Sg5+/Ksxpei6AIeF8E4SRVjBhN16gLa0WybmGNKuxV9MMlikGm2M7V0lCxXxMhgcxJgxxdOmql9nseHTfW/9RFNs8TPIxEu1Wrz4aZwXaJjgFBSycB2bIh5pIPvHfZ/6wltXIsKqo54va8BxmHevY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789440034; c=relaxed/simple;
	bh=K+0yW42u6dptVd56h8AmQ5sbgwpH63Grp5gAzhekr2s=;
	h=To:Subject:From:Message-Id:Date; b=tqEzahSN+orjN0QaThr6ojtaQ8kY0gjSCj3D2N4nSKv5b5uP0jfClodxJGu7kmp9/QB07UrB2Vvq3b1n6cM9+R/jm1U/rULc8JeTRMTAc7dmgM3HImgIJpjRo80obPYwvKLgDzsCrw4rmKK/WYAqGnEBg1HRGPAwprELfK1uEpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuJsAj0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuJsAj0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AAAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789440033;
	bh=K+0yW42u6dptVd56h8AmQ5sbgwpH63Grp5gAzhekr2s=;
	h=To:Subject:From:Date:From;
	b=QuJsAj0SO+J73esFA0OBP8CvwHBcYT+f2kc0WAPGgsqNMMIkd+jOtgvX5e2RIGgeU
	 l99knKWCZarsHqy0b0t3rYJRlB68REg3sBIItwykyfPPQSCz7lHYEpxjLLfuDbpQcK
	 iBYagVbjalrrwaAfQpOmAC3musqcX+J2MslmTmfdxpKh3niOWO3pSdI1/8pwxEhtKh
	 KKJJTBGDzyOPl0q0fJhyzOrcQyOiD6P4DYbb8ojG1ml+oPSS7HO/lcb/xFFXh+kcY/
	 zvqf5LzJhkb0O+3TDbOgJB0ZXxYXKcRB13vMI+lYan400zYASzcN641tERSyHsbIEh
	 43g6NRz6dFddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C7C88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944003368.30751.10028076397258182663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5fc85a542844976d3e753492a72a2fb65e7441a194aac65228f33130456418
Date: Tue, 15 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789440033
