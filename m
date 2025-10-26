Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBA9286430
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761521394; cv=none; b=iO7wpwxWr1xwXV0vxXQ2+0UQI1qXKtvwWRKzD7bfVNclPhy3RjLGjWkATpGU+PPFl0jpM0+DBok+OQECVxY370vufwi4u0zpL8vZ1wFFxxWIkpX/jBleMrK8AfcolNenLNN9gEOvzymid76y/KsK7u99EmbDbMx8pXcJlK09H78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761521394; c=relaxed/simple;
	bh=5i/dQxZU4Zk1SQcDhFDa95zE88Py+xbhThxImeDbp10=;
	h=To:Subject:From:Message-Id:Date; b=MW0DIWF6UkklGQkfg/NbqQfeKfirvbuSNnMo3cYSUS8VSN3zg56Y1mnlJ8MZzF5A+C8gb43g1Pf37jRRI9QDMCd+2yMfjoNfeUUT1UH4XdSx1PxiWL5muXVHYkwPi1k94rE7MFHLny3Pa8v+uUpN03RBhZXgtY6XulOQCyM/2bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwyTRqRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwyTRqRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAD2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761521393;
	bh=5i/dQxZU4Zk1SQcDhFDa95zE88Py+xbhThxImeDbp10=;
	h=To:Subject:From:Date:From;
	b=IwyTRqRt2Z+f6P7oIA6rtVDwvn5dtWZ9Rcxv9CODeqnEPl4kOOdSAPVNDvkWiOEph
	 AeH6z/eWcNijpVi+hDznbhVWZBo+UkAaY1liEHmsdD7R24YcQrQUMnsFnSY6os5Wwu
	 hEljTgens6N5f1GbklovDuae6IB4dc2IYlMOVz6nGqJwZU7sNKbPcojpRDHT0+0Aze
	 LFIxJDBWO+1HUshQOYMdoQ0XxJKFQby03ESnXZFIRFuZnHq7mRELcvUAgV7fk9JH/f
	 SKeoJVn3UiX0hByZUYzGQVbm/0R4OV2BzAXoCoVCBuAMic4d5L7IgE6Tm54pATgz7A
	 51BGXs7qIKwsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99446CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152139359.22430.8831244279603559511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bc450f2b9bc51708b055d11b6da6a50b7d9bcbddaa5dbcceac7e3619a9ecee
Date: Sun, 26 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761521393
