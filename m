Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3439410E9
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750558794; cv=none; b=bvhweE3lX/IRq8xP9w8ulAHBbVLqYjWkJMxO9v/837PXo7jp9cjBGexR1PBzTRgPQTlilZu4qUuCBnFWcDLZA9G4aQTJrugwcYXi3BlW+bunliMFoFEmh3XillKibGwcYBYE1XAGE7IvlxbdDkvwmG0VSSce7Bdo2Xz6kcFTXik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750558794; c=relaxed/simple;
	bh=6GzIEL3dihSuxdz+ZdktiBDTfhRSSRxIjaWAfbqvr14=;
	h=To:Subject:From:Message-Id:Date; b=tmnZHUN3xZd1u5JJquBM4TZKNp0QijaiSdrI8xgto5ullShAj+sNiKK8NEgZWJWbj73MDx8lVpU/6Ie1q16lqr7HV2q9nVnDorcjau6NvB7d17hxdU5y//JuyY8+wMTyCih+f1ysAHQUe7YY1xKEfXyseMsDV+GQYoF93+VOP1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+y5hd1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+y5hd1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750558793;
	bh=6GzIEL3dihSuxdz+ZdktiBDTfhRSSRxIjaWAfbqvr14=;
	h=To:Subject:From:Date:From;
	b=O+y5hd1TOc3avjP0aU7Wcjrl9EIjlZJBsfg5mUHNm9knN2C7bfWBCBK7R1megUj5G
	 84do6jDhwM1f6cUHZiKOWu1dgsgMFVdNLETxV0yuPlg6j+2vQ0QrQ4Iu4in+q/6CFo
	 WFYpjfFsaC5GYNQD6b3p41wqfAstS1+WCNWOSjhqJN7ZttARa1guGW6rC1uP2zytEv
	 VTFm6UufDavy/u+HKKDXGukvdJn6wAxVAOahdziZ5AQvUcIWD1PrONkmPVsAxPj3ue
	 aE5IxB1XzlDjJ+wzXTn+od4Hx9WEEo42HKzrZIy14oB8xZhr1/odc38ECr+7o/Py7D
	 5A9o5m1AzKH/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FCC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055879357.14986.6289937198798511727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bdbe1dfc635a999f3ab2abf8e9474a091bf19bba5ec55eaad378f4938d9c69
Date: Sun, 22 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750558793
