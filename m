Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D82446A2
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717654643; cv=none; b=WoIXxxodVee3fu6g/7xqWvxrb4G1w3mI1dLp5U/ZAHsR1BAZ6O1ZT63/yjMOeRBftV8vHgkcQuEhcWa2edtAnzkJHbwnDoVqhsiiBrsSzohBeo6dTTkCcbPge7SyuWuVAhOdMSyIIGzqd9w8wqoUWs2X+6jM4hPNNwtzWenNckI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717654643; c=relaxed/simple;
	bh=NMJye/Q8oeXbGkozSQOOoN525imNi6ShYdiyR5PFEG0=;
	h=To:Subject:From:Message-Id:Date; b=AJMDai0vgc9zdPBJcgzOlmnqJaaGNgha+WyYe1bVZP7W2mEM5YWly6xcyqQpY/71/ltEJ2TXefMKf7xAEUojao9MOUWnvh5qoi8aGCjuk29Rw/DqYozL4lQnnDW6CbAz2TvuVVAdJq1CP2ThhrotBF6w+BmB0qGlF9pbyNgb5jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/lhTtiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/lhTtiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F3BC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717654642;
	bh=NMJye/Q8oeXbGkozSQOOoN525imNi6ShYdiyR5PFEG0=;
	h=To:Subject:From:Date:From;
	b=B/lhTtiDCwktPkgiIYdRRqkKIjzlgXrHziZ8xUbO5PSp4zMYWuQ7faJ9m98U3+UqQ
	 7/TXDg2HSchK1AFot511+OizoLNfLfCi/fAxAc+pnWaSfy6VVbKWLmNEpYxlhoUwy5
	 vuHofx9H54kog7Q42a/Aoxf74aB6SjsbWSwqr/0+u6Q/TnpJtWc8NtQjkHQp0AsV65
	 Y10XjcPzgJUXajU9ke46kP/OzeN6HnZsXk3MiFQzXr5vlhXBYusQJO3NRP9+DBvd6J
	 cKWl+4nGB4hwuxiKAtec/dY5+oXXng3DM5qXooPGpw0f6zVIJw931IXQaMKMupDmhH
	 uk0YjfKsdnizw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F1FC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765464276.5980.12025491770762872057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae535ec5a14f8581e706679f44a2d24dc014e7595a0ef1d8bd9541df25d42efc
Date: Thu, 06 Jun 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717654642
