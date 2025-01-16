Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7881DDC3C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737035154; cv=none; b=kyHNzXFbfGFQfKUKIdJLJ5KaAgLtvZWPU5L6IcXWXarl68kdeq0jPoPungCKwV/aXu08h+jGvaWc5yqYp936XWZP9vN/uoHSOBm6q4215Hd8ij16TaA3bfyKbzvMf2dAilsNQQS1QnTg6aBmmi0UaZjuWjb1lATgR4akkAaQRAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737035154; c=relaxed/simple;
	bh=UyBMrISSgJ0cxND3u2YmGLZoU1cuplIDAy6CPUumxes=;
	h=To:Subject:From:Message-Id:Date; b=RFV18P3gm92j6VW76dPdITjMfnwHmBWuh7Y8SCAvHTdn0addfjV6j/HanxMs0D37S6bX8A4JuPdBuw8mrQzpBm0kOOceLyENTui9CKC0FOIJqztKJe/cYhRkKW6NQM0A+Tvz85buDFQ3HViRG/AP4fUBNZhnSrhxPyhpg1Y0JdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIWS2wpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIWS2wpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34F4C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737035153;
	bh=UyBMrISSgJ0cxND3u2YmGLZoU1cuplIDAy6CPUumxes=;
	h=To:Subject:From:Date:From;
	b=oIWS2wpKr7BXsf++pSojFLeS/9UUDY9tEU8aFIEMs7JMa0i2AlaoEACvumZD8Y8n3
	 cdH8xc1LRpPV+cGoWJxlQ+dyRCG9g/1CBZyLMFC+aiQlPqt4pLZ2/8w+AX+Ll4O6Mm
	 f2g1umAaJBjLMBa1odVWOxmK3/Wz44epBx6814XHT95+iG7c8sSGOIcZe1m1PRyp2/
	 E/3xoE2lqYjYlab6YTn30R8laqkS/YI4Vawkk/HO5mGqhipEz7v3Pg44VcDMjFJNJo
	 elXk+qadlHI2GCwPKe1atIfVK25CXcP6S/eAGEUfDJAQRSEyMnNIGyHkxXyt+LwMyF
	 OiiKoDEjGPrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72BC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703515358.20497.17788576328521762106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb50857302da61f771683669955720758b54c97d0e8f9bbc193a137f0778ccc
Date: Thu, 16 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737035153
