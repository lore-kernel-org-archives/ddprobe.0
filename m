Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3446D1F941
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728876954; cv=none; b=XNJQMCPUPwxBkAQIFUoESO1cClndmNDqJYBydejYo/ulGCJ53Wnw0tO6URSI2d/1xp4r8XjjbdKnHw/xWkv83LXOyCN0Po8PDT0Sk3AvE0eC/UYuXOW6AI08DRMyB9X6qIub1InaE1o3qExcjMujE1tXJODDbKVAkH9QbJiC8xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728876954; c=relaxed/simple;
	bh=htIkZR0bD9t+dQN/UeoZK27rEx/pQdHQ+M8v9XquR0M=;
	h=To:Subject:From:Message-Id:Date; b=hSN4Hh3Dl4r1fDI70M2B3vu17yCY9/5YlQfj+3kWGWMQhNX4NM0TFIPuRfcorrf7AML+OZl2FH/W8nckdPkDFwfsSNZSRyGF8vTunCKnih/iBen0GvayFkqcTV6v9YzXWxvwYf5OXTpoaYgzejABsbmuui0SbQ5+gRLD7hsnxVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3SwGk+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3SwGk+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6882C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728876953;
	bh=htIkZR0bD9t+dQN/UeoZK27rEx/pQdHQ+M8v9XquR0M=;
	h=To:Subject:From:Date:From;
	b=V3SwGk+L0BIuuYPoXsyn34qI8TwUTjt1qtNYcTtdaJta9F1N9j8kkKg6w9ZO4k8sl
	 GAFAEwOBlIVqKUxyaZCqEl8OC9fhYAbsCOrrlHNGcL34DUVVo6EGWDuP5xZ+h0F0lx
	 z9Ksa2KJJt8OAmETANXDnLw54eQcBWrDeYGo1Zkn7ky8vTjMW7N3A3FOjNeMXM5Nzp
	 VNAJDQdhHoDykQGg5kbFSAmAvWgL/fYjrQhfXiZ0qmk3FzN8UNOu6VP5bHXW7SqSOG
	 1M3ehXCjYDXId5qQSx9EksxScQHF2ZT7KHyhEWOjmlYMGcjjNWX0GTd1m288ap2Sz2
	 Foif7OQSCiXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A66CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887695358.26740.7867672089305629141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55b5b4d68db3c50b3f796ff0279b35cf4dcb276c5745d572a04f0b901f4f86a
Date: Mon, 14 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728876953
