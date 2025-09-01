Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49A27E1AC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756766994; cv=none; b=hEo6Jfa53KlMkq7FN+F3qnnSeDDxRtNMpDE3iyq89xV27/Cr3Fe2hqDVFePyy5hv7Sg7nBfnWDLPMZbUXjOuvSKRMbiRNix1vtsVQNbW8q1mjHnHMNP0EdH4/H4PjOTa4af47ZNiWDB55h+qfLQK2ajPx44aqegCrUHo8TJqRn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756766994; c=relaxed/simple;
	bh=s9pQg24M2dv1dgZZa50QLK3gZy3VH3MWX6ijMn6WC5A=;
	h=To:Subject:From:Message-Id:Date; b=KtxZqaG1H5qNUEYlBwQtDQpcSihczu6vA/tk/b8LpBpesCGDFhnhjWcrl/PNMLb6QPLm+ko3DE3K4b7P2UJpdcQ2Lm6CAQkTGcWXUHO+eZhG7Ma4XiliyWn0DxC8SYL+2XwAtyk9eV1nf1Az2I4I8Yqz3hnsF+qhXzgkn+KzSeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJVNoWxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJVNoWxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A6CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756766993;
	bh=s9pQg24M2dv1dgZZa50QLK3gZy3VH3MWX6ijMn6WC5A=;
	h=To:Subject:From:Date:From;
	b=gJVNoWxP6SM7saujYEM8yxKLmCPO5AoHuDJinTW6Le/a/cjMheKLOah9KMn0tklyk
	 xZON9LXQlarwbxK6N6txK0qdljfQgGDqTJfdGJT5b1kVkpRRWHzN+wBkInP8fTlYZR
	 mnWlKSESsZorJ2UggxciVKuO/TMQE+OCoRpChh/XFG3WhFW1W4ldXEuDDJToKKMQEs
	 744K5ek52kqQcg/HbGeOhOqGUd+7U03VqkIae1/pWUG3ZGy4S1T9nj6u7G8mGbnCrF
	 M9rK6b+28ALCAlJ5CxtADBlPx7aARYTU5ZV1JJwZDwU3r9SYXLLBSqApjfAMdMQX8w
	 adAekTxbYQjWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91820CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676699357.25926.10201904142018951220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009fd779c6bed83ab7a35c280f3efa926592553eee367262172c408c89c58aab
Date: Mon, 01 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756766993
