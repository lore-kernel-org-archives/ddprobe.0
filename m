Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4574418D7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775063134; cv=none; b=rGikW6yzNjlHzQjqovygqD88sfQjcy3exCphWy6QK4cZa3cdherVbD95Q2xQHAL8QlOzAx3UxwXmZchxr20evw2+YvIW1hta6JixDhLT6/FMwB7wgL0BnkhWSl2i+7IWqibegdnHxSOpq1RpRUE865Ir1j1dZwMC6eHa4jpfYNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775063134; c=relaxed/simple;
	bh=1A60zfavq9T+y6VEGnHCvjlMC2cOxrZtXmhYHEBCIlw=;
	h=To:Subject:From:Message-Id:Date; b=E2/bqVNIjpIMppr8Y+nmnxDjIeOe/US+ieQMcohqL7ylgMA8yXdcGnt2Aw0/UuyucnrUAiGKhFba6/zlvXgK8HU/R3G2kjijBoPUwbVmitKInVDcaAvZSGRqVGxBEn0ZgkzDVX7gg931o33sbpv1kD/+rvsIESofZJR6NKIE138=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8h7tGY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8h7tGY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61D5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775063133;
	bh=1A60zfavq9T+y6VEGnHCvjlMC2cOxrZtXmhYHEBCIlw=;
	h=To:Subject:From:Date:From;
	b=f8h7tGY9IrX3liYTMLqEjZKDH+JQ7JNNUs2Wqa+aipvxIQVq3o8HO7F/chfOtV+Tk
	 evhTnschpZaiYS6FvhqBWHmjZLLznWMfm28tiZJntbXvfG/8Pxt/eMFqlwtqGZ6nYa
	 gKRq0k6K7qGyTBjcXJ6/BUK3mCQ9CfVPgFEGxsTpxtNx9IvKpxIAv41j5d5v6r3tPo
	 y3xkV9E2W6eg/1qCbzEWifjthYn3DyCadwDDU4wCnvRY4GAjrhetBDObyY0mcA+7c9
	 ViRe0NaFF5xxCN88hJYOw12G81qOYaKbypwQG9mSfUK2EeNuf1NelXdmVrNs+sfbuR
	 8oECflokRIYMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26A81076387
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506313369.3654.17303888628395927365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2295db85b43b4093bc073c8feec28e171151f5d8711dbcd82317fa593a5af425
Date: Wed, 01 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775063133
