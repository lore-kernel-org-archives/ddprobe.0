Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF691D8DE1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758305394; cv=none; b=oIJIMCKWDuat+BXHEYJDgVz29Kg4BuwCUe/Iv4FK3lbDmzDN/jXV3BoEh2Fszb5eHOpO6T+5T8KJqD+BifXfyZf0PXEmAH8H4+Vhf2f98wMXJHRr2AWzz45fDdZ8S1ufFjdHSpYduTrXyJtfBEO98IH7Wa6L30fdhFCxUKxd0cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758305394; c=relaxed/simple;
	bh=BVxhoRw8bHQNtKJxZ8zCFXL34nhDP7fdNsDqTf6mAyg=;
	h=To:Subject:From:Message-Id:Date; b=uRziTOCDATmxgpEx5N8mglJaFcWrjqOSrOBza/dtxlsyxivjFl69UWcUkexqIgvCm6UJ71M0f5DwvO/+nca69ql8o82C5G4JY7T51pi30IOkHr+Vy1UopFu0/3q2eH/4DRZUFd1g7eMo1QY4CJ5+0Pj61oSgmmj0zWqx5l4J6YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riFBpIXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riFBpIXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5936C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758305393;
	bh=BVxhoRw8bHQNtKJxZ8zCFXL34nhDP7fdNsDqTf6mAyg=;
	h=To:Subject:From:Date:From;
	b=riFBpIXywLVahrzmtpvwFv/s4R4BdHz8kFmtHsjPpqpwHUbQd+aAMnbLrNYMIyYS7
	 AO+gvjM2N9URgfZyveb5g6T6qvsZ/OgmZQm4KufvLwZgdZ7OrpAOG9UoetWfPOpHuS
	 YffO+7okg5yx2iYqdpFhD0tBRqdUJ/DzbRTDooswv08eTlUNW2N8Lyt3evx8AZnPzU
	 27/l9CiamfB2kiO2tMK0MKfiyuYZ3dIXlICc3Q7TfzFhhyoeNxPaZNRnsG2H9Xv3e0
	 Z3r15E72lvjnrDTUSHJNu38lFocMg+pYEWMCa1sK/bGZf/GxmKOgDxdqTm8BbWoOvZ
	 Tn0KNErM27U1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93819CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830539359.32499.11843432290035110853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60008eec1e44395ef8048021b08d8c8c4140d085466daaf8274427c0558cb290
Date: Fri, 19 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758305393
