Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FEE257431
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771994694; cv=none; b=dGyJwiEl1r5KQGszPH9fvsS6hBBgmsynwoVE5QclNnGhuZDqCBrCqYQfFnrnuJlUPPxvB5tjVcaxGuAPLsw9nW92zdHGWlfMI/8sjFhCYuCvYzVkvVa8CX3ZfaK/dKc1e3aEaJiEKYfYmljWjx1zIyQPcvNauY84bslti/Puk7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771994694; c=relaxed/simple;
	bh=QIAaBmRcoSILqnrAa/03+afcGGAh8iajbPGfMk7MHlI=;
	h=To:Subject:From:Message-Id:Date; b=BMpYRlN+UYgu3ujthBk+2hIykbe5kxZI6kLACJzSlnAFU4tVzORTRjzuGkG4VcJm7bKT9nItUqgWzlbx3uR1sQX6PYuaUIsAi8rxeOLySVbKok/RZIWvKk/S2TlMfXwPLcLUFnsM1DpBoUp/mYf16uex8OFlicvyF8VkgI3lLtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeWqqg49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeWqqg49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C6AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771994693;
	bh=QIAaBmRcoSILqnrAa/03+afcGGAh8iajbPGfMk7MHlI=;
	h=To:Subject:From:Date:From;
	b=qeWqqg49WpVfT74JkLvodOovvKkv2yQImju0QyUzhlFz+hBhzHgIWyHQw0/HNFVTZ
	 Y1x9YY/NS5BYmQ4yrHZ289hxsF2VHeJ4zrF3OAxloL/aLjQyfqFmA43OXMNhikqprB
	 Wj7Bi5jHZ4x6oDsGc9mexc5e2Up2OQU0L2rb6qdvsUvtP+BzXQE3GLThkwqGttdcBM
	 XRTsHBs4KY/l+7btbc+boPz/+3b8t3/X1b7nJxSkeoJsOnNoiXbrew1WpbX9zw4+/y
	 1/+ZgGi6gxVJ4og4HKA+ordFoFXcdU+wUix+fQKU4vQxrkvBFiJNhjlYeEmePLYHMY
	 aJmil3qmPEV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306DF55457
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199469359.28514.11549233647984556446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96333ee07e4a63425a4cecd27139612034d9a1c3669cd3fb8a86430bf3f8cad
Date: Wed, 25 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771994693
