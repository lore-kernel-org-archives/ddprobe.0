Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A544C81
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758923994; cv=none; b=b6CbZYsEaHvE5tfF0Nz9P9bKtk6V01U6+zYXMTojgSnYVHEUEhSMF0GsI0+5rmUC/cd6lBXC+MChZVB2osLPRWQAQH9MLmQ2KKotGj8ICiLBWff8pFq5aBAiEmthBBCoNZr0D8sICi7007sxLs8UIAJws16ZJswLfgAf+YGqY3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758923994; c=relaxed/simple;
	bh=TBNR2KQdgtOy1XyiTZoIoaOW9UEl9pEntzuc1P9Q3nI=;
	h=To:Subject:From:Message-Id:Date; b=uTWnOtj6cu7TeU2WUKGxw2UYkr56Ttfng6zWwRIJ9m1GY+xQif9Y8rw1R/UmmjhxhpI8dEIWTWvwSsW4U2Cp3yjRQF4VYHno+EdgUBHwhoncdwpMScLAQdjdJT1Tb2w6gl4qS9sXKqlhzgfiiySg2IRSGdzc4JbuZHXXgO12giI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNeURKJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNeURKJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758923993;
	bh=TBNR2KQdgtOy1XyiTZoIoaOW9UEl9pEntzuc1P9Q3nI=;
	h=To:Subject:From:Date:From;
	b=dNeURKJc6qZEQ0Idt9aaGb26v8aiKzOr3QeV8efug84wRtnLSR0PGDBSK6cww8JGl
	 3V83EywwJv5Epk3OazCuJQmNxlAedPY9OZ3BbTgPLK5xcIbVA9+yadA9AcYq8x7PI+
	 rYOjOukGrzsQzv93/mI9DrD+RUfLzz+zB5rLimHjwXBlZaztfS9Bfz5cL/tLDW8H29
	 vZE+Md4ogX9QJGrCLsVzIdO26pOfgXjvbV2mZ7Adh5DpFT7BNQN1shIsuzVQT+bhGz
	 L8rIghoBn7+ndq7NWwL2gT++C8fpttopx7qIl+/r92iVMvT6Zd9oIR4evK5AYkvPzl
	 GDe5Oy65WL8OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF2CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892399359.15753.9020346435884505807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a42d410753e548f55899d9eeb35b5e3583b41d656a5f85c477db3963da15bfe
Date: Fri, 26 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758923993
