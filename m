Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C201E98EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775914654; cv=none; b=ajmkWJqQMEyDzYRPllWRgBMtCV6+7AA6lTtWzqiUdkYCsLPx2noVfqZUotxiefFEiwKdXnL6lFi9wfs9ov/sOe4c09RlJq8VF1dasnE9EyqkKz3tSY2t8zfZPimu8OR0mLaEFedZB6kguAHXvEU9TsCPWeq4E/k6mM8fXjZ+njc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775914654; c=relaxed/simple;
	bh=z0e/x/obUQFi44TiwsZkuaFuodxzk1sUAvtKdbMfhFg=;
	h=To:Subject:From:Message-Id:Date; b=dV9JMjNCf2CT5I7u4avUD4mpauzlwdfgiWrP8LqYboPEGT0fB4Rd1CaeIdlVgl5aiPOLYHvQmyBH5uSVRWp4hYzCN3AtHAaNX1gFKuzH6AtVlZpJQBPXUAXc40jR5Zx6ce9Q73vD1OdqtYSZqAeTpCC/wmxUJJ+sCt+citmdPq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZoaQhh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZoaQhh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DC7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775914653;
	bh=z0e/x/obUQFi44TiwsZkuaFuodxzk1sUAvtKdbMfhFg=;
	h=To:Subject:From:Date:From;
	b=VZoaQhh6HRwOh6lPc/+dzlb4ASX2OEa3AOSjkmzN3CiRk2qN+ZXGJLBwo74RGWyNK
	 Vbyzl6CxjXrqnl9OWOSe/lfbkF/wIDo+lj5JPPEi/2k6UdwDJb3YvscBl2jSgIEAYh
	 wbSP4iskWWKqsHSy68E//Fz6cOqpHb+cBXoUDvGt2YO8e+sUTXi3xHuwjDyEaDC39q
	 KfqTWCs0T5IwfiHcfRWe6PNZmrkZsjPATkzuWPUk66RKKsUTvGUxOZ1pEDx+eLUQV/
	 bKgAKycwqmXTa1C8lz9Nen/fMAhfhZWWiVHosdXPSo3IxCBno7G42f90xYPVixKP63
	 iwSCoTwZyTINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E30F3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591465370.3073.17693772901940999377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f36057bb7528b377e299b40804f86f8ccb110b944ffad64a0c71eabbd4b064
Date: Sat, 11 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775914653
