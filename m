Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353CE1C695
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782544114; cv=none; b=FmnkMOJjv/kCdU5rYhTs05r1nVQrCv9zGNFUHHKLPfxTaJunshuCFtssduMSBsHZcDpDFkO4pF4Wloo49BCpXGLpetHtHCFbdgXhsZUiDP9BBnRZLHZFTrhamKU6LD5zzsbZUe+LgDuHyqPRjA8VT65QUVce+K3Lb6cQuq9hwWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782544114; c=relaxed/simple;
	bh=F3rges+MzNmE/TbYI3Du05aWxBgeyl5zz8g4N/3uxjw=;
	h=To:Subject:From:Message-Id:Date; b=O+7AQhXYvHIlhk9xlguXGVulieMs6WfWcIJKl93GSoDzQghUgO2AfOupwDaPyF+gqRz3PJs1UfiCZKSg9L8eXJh/+6/i7lgcM4iZ3pn6L+w3lIHg2+Nkp8QEyt4zDPTgCaYzNeG6lkGn5dbEmKFsrWdttomE6TkF0UgHWpUNhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOSoTs13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOSoTs13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63BEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782544113;
	bh=F3rges+MzNmE/TbYI3Du05aWxBgeyl5zz8g4N/3uxjw=;
	h=To:Subject:From:Date:From;
	b=BOSoTs13y2qckdlhxdnQZyq4glnU/9w4leNC4TYVIo1ItdSMcem2Q55R98lg+ZJN3
	 8/fL5Ga8lgWe/0jHsGtqERLaPoUNKowhV0JaEdXXoUI7CqHVDSfq/ktZkVvb9AOh6E
	 fNnYhWbkYb8rW+j51A09DAapicocOHm3oOe+XZmHySOWrHD+sQ27g2o6rIBSP3tIx+
	 5+CBgTcpR1dKjAEO0PH6djzuaoTxwGuXKhOtwUMhENOE7zI6U9vIOSMCveJGKb6V5C
	 xGJxozE3hDZoZzhGK0iS+bK5GuUJIZYobMxK96TkSzybG57JVmT/2w9qQFMDYcOW6i
	 GVWzARfarrBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB749C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254411369.30408.10729494423390797893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f732340766a4b9397de0299b4509e7bc8aa6f8cb2ac99e6339a0c12aaa074f9c
Date: Sat, 27 Jun 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782544113
