Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3950B1DDA2F
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744920594; cv=none; b=L4eNiq6NHBJvFJfR+pD/MC/olKWLeWex0EJv7Gtl45fJQbqBlb8XoqTsIeDk/U3vT2ILLDVRT5nSfXdJf6c800fo4iUz8cEsEvDU2W1W9EC0/8RsqTgSBx3UmHpIHrJphGdXEtf/iJnvfcdXVYBa4aDbkgHnpSg/y09FyEBalqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744920594; c=relaxed/simple;
	bh=uv0I6JAjMOV8ysR57SbDlus98Fh7D3GARWdn8Us125w=;
	h=To:Subject:From:Message-Id:Date; b=A44SKkTX+VmNW27/f/ZpDvHcDhfq1yrcuneFcxveKbLxZNB4j3h6HoQgGgfvjNGMmGb9I6Nvr+5ThIEp0hckVSYZXPJQoHpcm4tAB+UAPv3dSoOJEh7IznW69k9iuThpuWuJhiCTLgV/cgc7T0EHGBqWw3UNYbQ0kFmSgiehpnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FePcxZLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FePcxZLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8895C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744920593;
	bh=uv0I6JAjMOV8ysR57SbDlus98Fh7D3GARWdn8Us125w=;
	h=To:Subject:From:Date:From;
	b=FePcxZLdXYWgHVBS3aBjhSccq/9de83S7Jtfnh540ml4kBP+3NxhLPR2rdtY6prOk
	 2N1TO6OsFOTgt4m51XAhrTX6E8AVyQxnfRs+N81y5Fap+J1MmYKkcAtmwmG1bcyFyi
	 NZNw19LAJ/rjzlroiWD0vTDRK2OW0H72JmcX1NB9QyaxPAGtXaz/zVNsLXOrFfrQXl
	 +MiA2KTz6pqZhSpnK9PzZnW9kttKxVgpr4LvkxYhM4o/kPWMnwgLnIq5+NOF+bzv/t
	 yesXEOtM8Wv2fq/82uBOMkplxzQdyiAXhXxfnZZi8u9ja4E6RBcWhPUxo4TJv8nOuq
	 MUXMDdOQSHYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9869BC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492059361.20985.10181537530119562578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978a360c8f2100e0c900a35d04ce1b8b0b2f365965bbf23e7e5d46b8079ea4c0
Date: Thu, 17 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744920593
