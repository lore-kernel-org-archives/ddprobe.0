Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277751EF36E
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766024634; cv=none; b=vGguoz5StX6osl1yqSUSUm1D9Wmd5M5dhPg0nXnAi/aCJ+WMUOwiuXc7W3SwccR2vSjkQx1JA7w4HRLCIYv5XYSMpc7l4Hg5AfMgt1rIjdpj4g/o9JXN7LJyaQDlJJDrK4BBKQ8Q/n01WbqUFalYt+9lCXKdmMF2tjUdvjCzx/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766024634; c=relaxed/simple;
	bh=Qp9+Gl/jJRYbW/MRy3ViSuWi/cqIpHmw4zDMJC4agvo=;
	h=To:Subject:From:Message-Id:Date; b=QcG2NYmo/7IqW/2upnwArAmgSEuMVUXqro0FUbVyy0w/37GT/2YejnxAM6WpVNxLlyL/cpAjGoD/YJOou3Zk9cCUbzi4UZi3DhxL+vlH1Yj2DLrX1EfHt1QlwTPwrqtGZJxEvf1uUXlB4GLRxKDkdJTlhHrvqE4Yl5dMC+NssUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxZh8ztZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxZh8ztZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404DC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766024633;
	bh=Qp9+Gl/jJRYbW/MRy3ViSuWi/cqIpHmw4zDMJC4agvo=;
	h=To:Subject:From:Date:From;
	b=jxZh8ztZV5kgTukvR1eynG8uQEKzZSdrF/XzqQojtaCAIqzADmWSLzvCREx8uzpS1
	 Wd6JO4k1HGS7KGW9/ybtZTcOCK5luIYK1eWkOjk8lWTH545XRssXoR/0LbWjxGJS1E
	 f2CyFvO4CCJsfgtlwKvSTXrWuFyfD+Vhmw1B9TMPVDrHT8UWmq7p0kqbqcBVo2t74B
	 QqWMy6q6cwZqUL9Pu21B64DGCCCxjEgGaciTK6AYVd+ziadyTpwBesP1M792krQ/7D
	 G8I/DLGhDNv+RvUUkrWo9dblZy/pLbD4o1tC12U5jJ12c/pQDXXGy9wthD61Tvvwuv
	 QqW/vPeRaJtnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937EDD68BCA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602463358.17597.3030868682854748063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fd6575e6b03066a123693ac4e7e64da26988c1af0a0cb04a5da7e124249876
Date: Thu, 18 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766024633
