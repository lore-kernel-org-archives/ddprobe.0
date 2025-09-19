Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE182C15BF
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758314994; cv=none; b=ilEYptkYnXpAmZZoQmVT9WJvg6r/xssNyc8sWdRi0X3R8FvMBv1jW1Adi/LfaMQLB7r/KtBCHvbwhL1AqKGqdeqhgmGjJvX9v8W6W2qDOuU3dymN3k9LnnnTl0lgNVEiSGi423EopjhP6jzcjuKAl9Cavc9OmGfWkG/mzVzrZjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758314994; c=relaxed/simple;
	bh=CPpVFfdt5L8KTZjRdIuTFr86a8iG8phehlsBRdQXuWU=;
	h=To:Subject:From:Message-Id:Date; b=exr43dJdRY9qnPkY/JhQlSLAIb18LBozbOsI0OckdroeJkNfjw+cDyxWW9vUIw5A4rKnDFnSCJDo9FhEdXFHrq8RMS3Di5mF7XtTjsasdzld1UE55x75OX3RIopB3k7ilkbwZ4dYQ5KxqJp1PtaqIubVn6j/LTD1u3q5kuuBFjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJGKfLc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJGKfLc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA59C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758314993;
	bh=CPpVFfdt5L8KTZjRdIuTFr86a8iG8phehlsBRdQXuWU=;
	h=To:Subject:From:Date:From;
	b=XJGKfLc297zsWKwuiMaZuel4VqhXxavxUxhfZk6SMkKDU3F5RE4mFZlbUkDE/GUHz
	 Uai0m2pL3SBIKaon7kcONxaHwzcFBqzaqnmDj6JX0BqxHpu9qqxh2l/KZVBYdDAL8W
	 Jfb6C9qnKwubaQZQbjFCjJrgqQ+Lx+Am3PMcZUQv/W8rgz4SIQiJkQiYxWop9hHzPF
	 QZPC6Ss3iZ7K0itcUDC4VfBoNbfQz78NCjR5IpZg3Wt2wLwsvtf0OUl2uCkJbajxjt
	 NKrN41wasDegoUPfGUDe6rvidbALhdo4GjSAdPp/VfEjT4WDJBZKSLEwW5Oswo+NWq
	 WgPeesaPDSCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF7DCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831499362.18914.6700034719743677908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac10bc81763a243d3a2ad3e6138e516558969b1b176c01e7e1849e2974e0e8c
Date: Fri, 19 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758314993
