Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4D7128816
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784170114; cv=none; b=QkDz9uc9+4OMGlDfmwAlegFg86nbSVJ7iyv19X3XFu1EdeO4w80FkBdJqIIg57hnneTYzynsiqIFRv+fLAjLptXj3Hhz8VhjXid+iiAtKUtHQ7EOlvUld4ToRDTqUiHBkM7RICI3fqPWzbCtZnmj89ti9yFI407dAYRVeTsOs5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784170114; c=relaxed/simple;
	bh=s63qhsLl9+/TjUvJHLBghSsIaOZoo9LondN36YQjj3c=;
	h=To:Subject:From:Message-Id:Date; b=qBtChP8nlW9RgKlYGWWa4G+W6Q4+g2fUhKxiLFJQy5eQudNTK8/1BUWl+EVvw9Y43m+RwRD0wxJ/0123C2tx0GhBUBt0kWVi/GqdRAez/sxrv6DPXTiLpQ2vCmiv4CFblny9JbDs1eebPkIHtA8wyfTLo652mrwcOXH1wA8ZwrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QunNZ19D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QunNZ19D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB678C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784170113;
	bh=s63qhsLl9+/TjUvJHLBghSsIaOZoo9LondN36YQjj3c=;
	h=To:Subject:From:Date:From;
	b=QunNZ19DY9ctwAU6FA0Hl60msYU19qu0iAZ3YrXkAYa1GEn87I/oWDqSyEXh3tiTF
	 cstpVh4H4DLkRAN1f8tPv1XstZH2lbXNSfWqXYQ62aN1eKi9N9ZkS0HWkj4q2DAQOG
	 R84fVKNAvqla+fH8FFBHnOIQcQnx++g7c0MhIbE/q59Ae4LwDX5XrLgfO7IfVmetOq
	 kHLO5uwWw8fv9+PP9b0U284SVrrUrHkVp+/WYQWsw7vjjRJD1qrM6jmKYRdSZls7R4
	 upbxao1fSGZUR4tXhWqHeElZI3gXmawObL97BTvwFQfIAfn5gIV8Wo29VBiODVtfmX
	 pKUlFc0leWTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9222C44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417011368.8482.4364265682649935717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684f7910843eccf1e04f812b816b5c667533e93ba8e61b6b4f49d2c040627482
Date: Thu, 16 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784170113
