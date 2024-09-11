Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F155AD5A
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726016154; cv=none; b=amIiiLqgL+G0K/o+jILgzN3mb02anKF7Rn2SrnvRGvs0NkQdlOPG+YXTQtXV2wZLSZNEK6p42WuIO7yFtXuxENJrIDbwg6r7Q1sQZvC4KlW7NXYdXaIfD65wnR1ZnLFs3WoL2n03hyrXQ7uNk11a0qSEHXtdjxTRjElZYP3oTLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726016154; c=relaxed/simple;
	bh=7yxK22Oyhh855CBkQC8rrK5uOXmK5otPqk8BnB9rEp8=;
	h=To:Subject:From:Message-Id:Date; b=sD2yQ2aMDtP50/FIW6xTnUjnMcxSSz2XSx+LQ0G6rqpgGdwMsauZBpxji5wvl6w2VNcZmelYosltY/WDdZZ8zb/IeD2qHt0hExuLJhjVV/GHkv/eME4347cqA5quDUOel5KmDlx2An0tlZQ9v8bJzYmhhAod+uemfu4Qe8t7p3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JucUioD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JucUioD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726016153;
	bh=7yxK22Oyhh855CBkQC8rrK5uOXmK5otPqk8BnB9rEp8=;
	h=To:Subject:From:Date:From;
	b=JucUioD9joyGzyCZrZt8nFovo0jPp1M+4o7kYNkCZHfikBwniJoh5my8n4ShLre89
	 OX5rpiIw8g0iZqdVDxt89XPPkK2jzPZgEx2/JMfYuwKgNHg4/AAq+uMfo6x3cmQ148
	 Pd8EWJu/PREx09ucfwU8djdiHCBSwTdqovReawFEabeey9fA3z9zWiFz6DsN8C87BX
	 ABrDqgKICobxdSuCP1qsDqG9P3S1Dpni3RwZ5WlV76SBWsLfhrOWpRJ3dmWQJuHStd
	 XBqMPe/OvgfLtIYxBWHBaJCYMBMhfOxK3hi536TuMsDnbR4I12khSmsEIxIUsRkyaU
	 3bdqI7mD5Gujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD9EE01F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601615360.26226.4831926086867705224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b0b3bc098d862e0a9978cd455e44f7d66e3e60ad63345e389d9d289cb39f66
Date: Wed, 11 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726016153
