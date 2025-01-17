Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340801F78E0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737095754; cv=none; b=KTblDCZImqdJW6jm5ZDImZnTO1ge+nICSUF4zkLfCxUb7ZAa5rqvJz+TkS5ReR5o04KSQ9nXduyAmSVYLQNrgihca31jL51jBYgx7kK4nU7QKVwqndU6Z57EmVpYE6IJtZ43vL/XoHX3IDYYUWXoPge8BpIBM7X1UNudXA7z1HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737095754; c=relaxed/simple;
	bh=D87u1+xnHcXa5IVoP2a4KaUwso03bej2Y5Id3/DwWOE=;
	h=To:Subject:From:Message-Id:Date; b=NzqV1Hmh+B03nCbxWPvmp33Lt7QDHdlfUFoOyYSkEO8NI05szzZsRo3qYwjm5TFny9qAlPjYnD/+ZHxl2VfvVpotKrbTQm6KZFn4bGCvLt6c54kmMOnMf8hNV278DAD9eiNrJZAQshwtjtoqLf6fDEM+I1SckGakgXkYyMVbO+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6RPnbj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6RPnbj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D43C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737095753;
	bh=D87u1+xnHcXa5IVoP2a4KaUwso03bej2Y5Id3/DwWOE=;
	h=To:Subject:From:Date:From;
	b=o6RPnbj/WWGot0pDxD5hDb6RfyWMGvH0LtzgQfgKKEvD8biJZeHG5kZG1WpYk2SKQ
	 SwwikM+t8dtLL878L2ZjMHvkvb80XkudxY1TyAtCgdE2FDHlPs1UJCgQpDqGGGx3fa
	 whpakzkPLY+v7BlfzPY5VIebhCaTp0ZAG7agkh2gqz4j20WQa1CpmSjUOdmY/GSecd
	 9vfk185JKX9eUU3lggNYg4yfUckyMVnt4bGLLxkLl0Ti+AbZUU7XjjnBN61lOGG1LZ
	 UlG0LrgGWRz2pYTymVu1KvjrfRDn76Gwdn8qY6pomAZI/wAdqy06aUZ0UIfyhbaB4u
	 KF2cUTqMN4vSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93706C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709575359.21392.7391084926710043943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a379db5ecac32978486731010385f55d6704454209b5ea84559864cfae503e6
Date: Fri, 17 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737095753
