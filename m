Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EA918C2C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767585234; cv=none; b=mJTkBEdEZ2knkuOwzOPHokMekjFWrdA8BSquGO1PjueI4LNZ3SWl/e0Fb/zaPH0K855b0ptk0MExAwyWRDfMhxtG6SDoJLn2R3i2ryggyme9Z9m5W15JxbUy52xSRdDIZ1RgKIg6+X2HnzMkfCI8/0ELEmfhW7t4aADSerLct34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767585234; c=relaxed/simple;
	bh=eGepWL/4SSbdnGAGj9vynvr/fhicnNzF+vscB6LWkWs=;
	h=To:Subject:From:Message-Id:Date; b=RgEwXn5pB9qRUhgz5eMTnqzypNgck9meNy+LHjq0jvvy5xQS5cyrlZ1Ncmkr+Zs3Y7kMzMFy2kSxYwp1sxG+rEA0LFQ/zOOJRKJZufx0b+XqAs3lhbEH+NXAg0+eZt7SAozMPOaOo22q2Go24B66FAvBTtwGbgnWxMJ4+U2ZVLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH05rn1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH05rn1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2718C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767585233;
	bh=eGepWL/4SSbdnGAGj9vynvr/fhicnNzF+vscB6LWkWs=;
	h=To:Subject:From:Date:From;
	b=hH05rn1hFVF91JhaPiyFGQ6ZfysVNPD5BGe6EBUDZZOZK3c+XnTyIUT5rhHvzbW9V
	 Ltdcdo/NSRUdoBolDprcLAZKudH1on/QAe13diJp7X2Z/R8bCxjxKq5cR6UUaz4lqv
	 EKcoJSPrHoUuZc34PfNtXmIbYNzbwNYUHCZTCUaAjZ+ugGPmn9PT8QGDPsS4QWcS+e
	 toJ30bG+n0Zmv554X2CcTfRu/9Nc9A7H2TLyo916BLhYjy7bOYoKfhIPB0PewIh6/W
	 YvWf13ji7F5UWkCAgcVJz5H1uwdTMk5Izbmimayc/AW4oeirGfQ+htn5pK9HR3jNEe
	 F3A9QmwUS3seg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A52C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758523358.31392.11346591050669377545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389d5518561b520687d7c07bc947d21b95444b4f4d7cf35555bac3a4111e77ec
Date: Mon, 05 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767585233
