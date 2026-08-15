Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6042729898F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786756234; cv=none; b=hv+8pSCfnOGJqpE97A7tVcRLUVsFsKF4zfSveg60ElrE+85sVsSuM0YWB72jyx7i+UyhdPV4Yq8j3MFBzY1Xzv4h/lNHFON78pUkwsIJkVfoCSqZNB1tcW+04qUEehz9Xm29P/m+zchRY3r4qSbOrlLlO4vjhippggcAdhm6LgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786756234; c=relaxed/simple;
	bh=H+Y6i57yJs1ygbRiNusYBxvV6t2UEB2ndjCqtSrzGzE=;
	h=To:Subject:From:Message-Id:Date; b=dGWoTGH3ZV+lLCZKulOvnTG/nHMJmgAZQgCW9Mgf4lUYh2JDGEiracl4RmQ4+cYXvZc1zxBimDJxroytEvsEttt6hMRkJ6AjbL+dbM0d3rbNDP5J6Bl7rYq4lLQSiYnfR0h8i8GEnIBrMup8uEtuMQVY4B7dG9tRio5I8PUUZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+0wbHs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+0wbHs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F57C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786756233;
	bh=H+Y6i57yJs1ygbRiNusYBxvV6t2UEB2ndjCqtSrzGzE=;
	h=To:Subject:From:Date:From;
	b=R+0wbHs5gOYYBQj+ucIgYqz7r6vSaTI4IKZaAgSKLK2EkytFJuQiZSicYgNHevsod
	 DBARE7xQKhYydnQ3GZyaHpYTe6pBLjZNeStAKou5jHeL/qDq5SGLivEEI0Y7w+ZUSc
	 TJqartdq8W8bFrFxRv0w6vbuRTIPMWXbuM7swPo2hXlhimKNU9VmazMSTBxJJNJZ+Q
	 2D6o2TVFRnBViTXnC7E5K3JdGNgpZe4wIErOjie81fgZGxc+jBl/UmEyMZlMqHbYpD
	 37KEXlSEzbzUekOsGu+CLAoY8y+rrw3SLA56LrLYvIg9PA8B8vO3CznvzSGudFTWA/
	 J4+X0vxBLdRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16B7C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675623369.16663.14431228799369943168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce4f47e24f2daf4752d6570c3bf40ee14c49479fd8b3b1e86f35b5898edc058
Date: Sat, 15 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786756233
