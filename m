Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF0E2DD5F3
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765626173; cv=none; b=ouRjdxgJuf4cYhZfjHZ1oP/AVj/kDVX03DAgDiMG0XYLgLCB76Dx1m08nRt1pkQh9zK1O/5fQQWr9fiJ9APkXSRbyF582aiZsEH5ZI8mq2KU/Pfm5XMpzjOEZ4jRt1PXnfl0twE/UefF9Do1CHjksvD3kwVNWWbxtLdOaeWheJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765626173; c=relaxed/simple;
	bh=ABbABJTYzsInmY2lpq9Y5Vv5disXzUzzPOjiGdjXDhA=;
	h=To:Subject:From:Message-Id:Date; b=FnIsAz0M1kmmWCOVylRqIbcQhAnzqvuk6Hr8HDdIrIFmkJO9xnKMd4AI6lphVOGy2duSt2dAsBvRMAgBkdprvQtUJ+Vi2fZ4a4Iu04gjrrnH5oNx/ezbFHwgBSrNKEtlzdIIa8Oxl78ZKovF2SB8Hu+lp0aez085KinuZUE4GIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCC38zjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCC38zjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765626173;
	bh=ABbABJTYzsInmY2lpq9Y5Vv5disXzUzzPOjiGdjXDhA=;
	h=To:Subject:From:Date:From;
	b=rCC38zjYkX4qzh8mBspg7MHnn9bu6IRiwnHslEsvQfYx9tMI1FkozkT2oId5jzT/d
	 q99sdMxSlEme+gl9mazX36PQnOHHxqUUWPapB16tkYNSlVcphVWqZ6e03MqCUw62+g
	 KlAtGl+m7f7X2HEgt2sELz+4vCkA9ccmjMpuZS9CQf/CBkkUIxm39kWq/Cvw5voV7i
	 CAzWMlu8X7GpX3vv94uQgQoUi3PtAwijAU1Wqe+OohE2qMLD2silEKknvNg0tfWWmS
	 PCfHwP9hEavcH2O40GcU1PM18BpdQSXApMkXhfYT0rf/IXWOMHDChz0I7KYgf5a5Jh
	 UfXf+D4CeMV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96796D5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562617359.13239.11198401576879543991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515491534249f18bd0aca9e8c86dbe272e3bfabd08e2cc024908e241fa6377a1
Date: Sat, 13 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765626173
