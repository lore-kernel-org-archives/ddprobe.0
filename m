Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF04414
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745710194; cv=none; b=djKofnaFVl8bsorlo1E9z2S6iqnOgb3fQH68WQ8zYqqUVKgPCqZf9IIbu44bRuWNod4WI5S+fgNy0HqlCNUda5XFSVOZI9urqqD7Yiood7nRX6ehPqMAiXbhl3UNDdK7diy9H64CvNsEQscO3O/ri+bS+9Xkjue0nNzsFKL79XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745710194; c=relaxed/simple;
	bh=0TcolIM3BQq2a7x15dOYxtL/SXaWy1D1gNJrRfQ1F+w=;
	h=To:Subject:From:Message-Id:Date; b=FrbthohSS+697z6So9hkroP5rPFtG3jVkOmnad0CdQqwJVgdDyvF35IhW0P9ZRL38x0mW/4VUu6wfemR0whF9nTr6+nzHloBSIugNXUVQ5xzHOdpB7ZrQHl8LXHRHr+XE59brvlcQI5MxT3SR+dwiMvJzmnXigJJdWAawWnSX+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/LMznK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/LMznK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B74C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745710193;
	bh=0TcolIM3BQq2a7x15dOYxtL/SXaWy1D1gNJrRfQ1F+w=;
	h=To:Subject:From:Date:From;
	b=S/LMznK/g5FRDD1kwcNdiG2S0Lrwe6YuC7aJe9hxhgTnC0Fmw1VAENDrI0PNBOJ2T
	 B8avuIjv1REXSmk8NBLQJOOL8Tq3uyDZo1mL7OkoIKYbSRE/clUdg44LObvEAwLp+t
	 r/z0DZNE3Es+qnjWtzCS7jvZc9bDtsaUpXLZJ47lbBAjhmeF/SCBBslLe9+90XmYf0
	 wBo9A9PYjlgJVZ3NNizIb5zdWVpKmjOk16W8fZ6ToGk2+tT79ysrnIxYxPROjAsGvj
	 aw+VEHbGEgI+ccO6qGBB+TFujP8dwnjYwoNmJfgeUJW5bZ3pVSrdLZ9+mNEqo5bMoA
	 z7KMQyvqTHZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192DC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571019357.9707.9261035587552154001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a1a6665e4dd42621deec21ecf3affee23fae0e6e4e821b9083ba0c40c1ff9b
Date: Sat, 26 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745710193
