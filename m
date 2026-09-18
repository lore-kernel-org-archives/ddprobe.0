Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514D9498936
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789716634; cv=none; b=GzVGASy0YPWJcskGuafqSSwlO0CoiWHG6Nm9+ynxqNx+uH1XIPjxPaBdD5/vIlIgCnTCif2yZ5HLaRTnh3kRt+T+VXBwjrEmFq/hXV9EqVgegvEGYhFFqdy8pdxnLlUVTf//hj56z/K6OQAZjLmxf3TZDADnEKUwtoj0sKV53fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789716634; c=relaxed/simple;
	bh=/HeztA2xl+WrKv/uKa6uNOqcpZfrkiBc9wsbiZur//4=;
	h=To:Subject:From:Message-Id:Date; b=bt/mKHfIyYH54yTwYhUc1Rkn6O/B6SmYVOA0piT2a592n8kRxhTg/e1BbHtS+VJNFeW5Etql4PIHcy4vfSZvynabACw9qAXpNoEYwoUpLtVg2uFM+As/82rFgJ9PEEXL4Tf80eyfk2yAsH8SQJRTyZ4GfJS8p5wiXMHX0Z9wdAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THDUgQyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THDUgQyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D307AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789716633;
	bh=/HeztA2xl+WrKv/uKa6uNOqcpZfrkiBc9wsbiZur//4=;
	h=To:Subject:From:Date:From;
	b=THDUgQyT08MYK2AJPPAMCCs44uABlVRRL64BpUl7QB7nCxB8QeQoLyt90W30ohGHw
	 UvJh4J6vZxTUcwzFKac32+M2wIuFrOm39D13qzQwgDXeQZr3/q7Fd9ZUhIrVOE9n6K
	 tmIEBZX1uzR9BvyyTVC0TaL9+WFpR3Gp0gJL1U+tgRLG0Y17ryB86oxs61cLt5JBMB
	 FRgbnUj//BylRBoi5PNK4GWyTA1IgiMNVIrukytg+wkfyADXfXhz0KuwjkurBpEFIT
	 2xi1ofrCN8gUick4jzQTZT9p1q+ycvjZKcWzsULvohV/bTl+0IP+dfRLHlrh9OqO43
	 +qu62Skz5MFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB9C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971663369.17349.15569234945483894538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95018ef0cee27cd630aa30c3e1d1d1dc65ec49f3cdf7b1749fada532e0b94234
Date: Fri, 18 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789716633
