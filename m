Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD3A50096E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768865034; cv=none; b=r9W5CiBQEadKgF+BS0iwGU9luTq5PXl13QxVGmbF51UTNQmsHrBGx+J/KXJiJSheVKmElm+oSkK8Uzi1eTr1iZdIYoP5I0CwIfFPopMiHnDSKPGfApHZIK0fwSzApUKAvb/9eHRnlAFhvctRkjrtiVWboQAdWas0EVLm6Tm2SN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768865034; c=relaxed/simple;
	bh=9b7ckxfJoX+d6z95DiS+UYokCKSvWifn2JiM20/1K7g=;
	h=To:Subject:From:Message-Id:Date; b=U6QhCvNqVDJnE4TA9hcV82Grmax7GiW8jbmPCZo0blS0QXYp3ZEeyA6RIbEs3YtVYfaCaQCjkPb38qjQu5pKxZoNn/itEjPUehc6sM9T7JQz7A8nUeJ0xMaro28B1tyz/ZOd7s5hCrC1p9uzhajW7sWvjTzQI9YjfskCADVfCkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9DC0sRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9DC0sRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768865033;
	bh=9b7ckxfJoX+d6z95DiS+UYokCKSvWifn2JiM20/1K7g=;
	h=To:Subject:From:Date:From;
	b=G9DC0sRV9CcpnuKuTFxyh+iMZ8bO+s2ssufG7H3Aa63+9IrVbJ19okELYgXEbUUcW
	 C3myB9kJWMVG2+rplyw9fT91C3EEw05K72+g0EzMFunIDkCGGMwP4lhNEye0Fskbps
	 0W8o/DWlUssC8XxTtvZmArcFDJGu9sOxmHnQubPJO5Btse7NGVhbAnX5sK8Xuq6gv3
	 LD/VdU2o61xllN8tyMr+Alyl2b/p3/KtzC+AgPPYTnDLMEYxdjiSs0s66yasWacKsq
	 pmVj5jx1o4jX5upKLLabydot9wyTGPhfdLrvEiDJBsuJZyUYuHMd+C6JgC2trOhdFL
	 Pz2A3M6DOL8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DFD2ECF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886503357.14950.9486194558484790604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba58257a6cb1a5813ae64bd162b71099bc7d9192dc42789873b00f24f30151de
Date: Mon, 19 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768865033
