Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC95450FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753216193; cv=none; b=hln8suFwBEaDyT1epVPJJmpPx9HdQc5sMgJL/ynExhEHh5XhnQh6ZXo4XqW/eMkOWpidPmwlnmqFuKq98sryfiC5p5LZLPs6xtDvM2mR/6Sq/nyOr1MQQrK3IR+5bUX2q17Gi82dGxLFxAfrpGz+Fcpv3l1MOKrPiq/h9vFdaGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753216193; c=relaxed/simple;
	bh=tIrt2hEVqfq+dr96kZfxn6K8hIGOxcofxQOUWrc9RaY=;
	h=To:Subject:From:Message-Id:Date; b=gBX+DMI/G8dd3F4VNfxknT5UhDohtDMqKY3h8vDdKJQimaOMo/TG0D/HexCdaPDlczCrIcvxLfF0Mz/m0h8gTJsgJW5S52DGTWuuni1mrqt8Fguq8TuhKJCZLETEUo6dINrJO8+3pKy5eUG4nVvsaeV2yw+wJhYoHTNsSH9j4xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVls5s3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVls5s3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A899FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753216193;
	bh=tIrt2hEVqfq+dr96kZfxn6K8hIGOxcofxQOUWrc9RaY=;
	h=To:Subject:From:Date:From;
	b=mVls5s3Zdq86PAH3Bs+XVGgsgQeT2iyrtpuj/raOXYohUonT7Rfjmbsikk0rXcMYm
	 0l5f/OhO58sVyiTtICetkfxPN+jKynAfzsbz8tEh9r8oSZPXLM6LQnhDYq8TFSTyI7
	 ghuF7+jx8fb0uMgrvgfDoNTcXcxDbrWf1j41ppiJAeCRRr7UFZiPMAPGp3suqRaEbr
	 Cs5/q/drKAKSULkWUTlxUYjwkE2yiJsa8KEd8+3MLhAUZwXNz1ilYNLa7u0N+dZE5w
	 H9l3ErBg8Vume3SQjWF3GljenOAcE1rq7SltK1DK7KXEB1a54uDtovKDCTbVpBpEqn
	 JANS1XsBb9OcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94166C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321619359.14718.10751957899229245298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea1169196f46e7b948bd4a5d83fa22fc16208c3b4d1554456e7fdafd1d23a68
Date: Tue, 22 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753216193
