Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A5CA6F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741396734; cv=none; b=OFg4f4/uAcERUWnCjPSEkvA6GhlzyFX1Z8Z5rBCMp5W1mW4rnBs/jtu1QSpECffYY3fLsODxKXwgbR/79Hi1WfUqMdGd0DeLLRhf9ZJJ/KtXukEVrpoDKuo1hRTh24rEXMwXOYKC2rSpc/qYpldafw+XcG6TFKCyf6bx/BPkR0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741396734; c=relaxed/simple;
	bh=lJKcojGnggJbC5tD5HFOVOXtvncVYb4OBqduAfvrldQ=;
	h=To:Subject:From:Message-Id:Date; b=aJW4Z5NWCS8uQ9V8ef9wVPw0HBLW61KIEaYxJbYjGQSMBEpf0wzzRENe++zh90byvfYIV3Lxi1x5+SgJ0OOSu4j0MHeuLIsbzDe8Lgt8K9qMOPu86Qg2p+kTPV1TN+qmtQ/kPD3JUr13/hd4D0t5geyba9Q55MuwPHidPpyp8vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4eCvUUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4eCvUUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6A6C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741396733;
	bh=lJKcojGnggJbC5tD5HFOVOXtvncVYb4OBqduAfvrldQ=;
	h=To:Subject:From:Date:From;
	b=r4eCvUUEBUGD4giLNRGDZEKHwDJrihbYLtPJM9cErBY/RlWn9iTkZUfa6BvwztDYJ
	 5qEBoukXg46DEJJc326sbmFCr/yDIGeviNvbOXA4XPp6rEEg+oc5MC6aH91nw6b8uM
	 +gMkCCQVup+N2VjamiG2N+pc7/4ItqOss72rWPNxGI4U31IQrgB8nlnWyElUiW6umj
	 ZwNzBYkoZqOx9AKebrQiYiRcinQoref3oVK7mjuwoNk9uixu6UjZ533yBCDl4b5d1G
	 tekq56HzAMZ671UqqJyuw1gNB6F4IF8otefFZia39r29I2ynE0sfl1xz7VFfi1xhAZ
	 UT1KbqAe6A9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4413C282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139673366.13677.16826505164816465781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3c3f00670c05ff6a1678e56851265717581d5a0a3010c9edc8b914cda4ba08
Date: Sat, 08 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741396733
