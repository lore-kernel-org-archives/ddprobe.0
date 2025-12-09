Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26636158857
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765263174; cv=none; b=qDro+eZCcXeh0W/kjDjMDurz8AajdIYA9yxhDSfHcWG5+GplnYAIotm8G6wcNThOIsQFi2u7SUrtK7S5Vw5IVZqfGyx3/HrO7IfRpmPwHheArYWS2+qrvkLAWvOGXYvUw/6H5XdhzlpvuebBxmriLaDpDctYFsUvqPbr/mOY/rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765263174; c=relaxed/simple;
	bh=GcEOqSY5+vaEIxy6+aOq/U6H07CJ2oa9SGW7TnsK6RQ=;
	h=To:Subject:From:Message-Id:Date; b=NXSNzK9vF2SFbzmF0e5gJ9z8WThyPrAQftAaPsyYFAns7ggKbQ0J211k0iC4CClClF+Td1oVUnjN4JG0YetvFNfIn5jbfcgeNIA031LudRWviUJ1gUJm/FdEeJFyHsax2psQ9BlJkkoPIpkEppeiUD0dAAu7+qz3amd4RXYJgQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ4NXcax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ4NXcax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDC3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765263173;
	bh=GcEOqSY5+vaEIxy6+aOq/U6H07CJ2oa9SGW7TnsK6RQ=;
	h=To:Subject:From:Date:From;
	b=qJ4NXcaxEK9MjUEqlBAjtkZ/FBX+7B0atcOF1sQ3CexEGIJNGM4DYWxD5BOcg2Q0G
	 f0VCjTul45spGb8rXPFjcSJNZUljKLZ0p5EPlQQxs9B3cHPaS33xnjqqNi7LGL30UH
	 ZvtqCM8wpZSliGMwVAQqXAPx7TOpAhEGneNDvG1h9l7K7VwJ02AXCnszLHwqGEoX/j
	 A9p5JlP5NOlRcFHskw4StWHazAIJ4IcTpUNnZd4wU6BU2DnfQ3rmY8a9Rzc2wYXKbO
	 aZ3UGoH2Iq0RV0wVONnUBXYh+pd6id8pLBRyNW4uCVALNMqczme65K0ts5t7gSuaeS
	 mZmZpO9URUrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B971D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526317359.32570.9879444994363790111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07aae9d4e29b6935c6e5c8d3a7ecb2cd833e3bc6c3d1e0b4f1308e20dfe878c9
Date: Tue, 09 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765263173
