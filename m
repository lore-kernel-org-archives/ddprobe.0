Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD34248F6F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767135234; cv=none; b=hvNkBKO9/NRtTeNRGWxyMnuiNK5EJyXLWt86n6I14ueYRJBETy8ncwUvGZE0Hh7UHAEltGB847UQmSNMODRxbJ3cZL2oKzRnwF7GPTWm9PYA/meMAB+hKmKZjS2Wxm4vLxfvaQAK3RHNe95aAiNpiPu03YifxtzLigkw6zd2YLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767135234; c=relaxed/simple;
	bh=PhNHJzDP813juO+ScRCjyQPs4YoNfiPtJ4Az+jxuhdI=;
	h=To:Subject:From:Message-Id:Date; b=nz5Ff+TjRr+PAZ96hsWdRRy4TkB6fipND2K6NSHxdS9yOB4oeuO7VqaEw7AHwQJVlFBFGif3bDW5+2bULcyxFZPgm/G7zOnCL3aF97bqwXuL2Uuh3tWkfoggScfhKSS7/OL6yZxipr7TLn5mKLIZ1cArLXjw9df1gL+Uji+yV08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQAj29wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQAj29wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B95C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767135233;
	bh=PhNHJzDP813juO+ScRCjyQPs4YoNfiPtJ4Az+jxuhdI=;
	h=To:Subject:From:Date:From;
	b=hQAj29wt+jjc9TcNp+FoaPHVMd8sOomp5dGhZqq9qtEE0LYhnNkqQDA9Pm8l3oxKL
	 dWi/1ryER4TYGc+sN/slOVWLNF6oQXpMQfcAKZJ2mm4FGBuQRiIwFha/JKFte+kenB
	 kcEyaZgXeKHPC8ixsg3kZvafqx+NS5GkJFXEuOtvhQgMbqtNGFOwKkLRDT4ykBQ4Zl
	 8mWRIC5dKAO1fTBniXwktekydUx5V+ITdARYRdnwVzWsUwcseHhgvAQ6gMJtUB/bQ7
	 iTgsVBSP4g3GH5/OaGXUDBa26Lm5HeN8f0g99rL57oP567H9kdTYY7x5Jxgx1BYV4E
	 1Wbt7MmwEWY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94694EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713523357.13632.3634244994807879875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37e7f0d0eb1bae6660e0f6d017db31d60b70e016074714e49d984711565a8e2
Date: Tue, 30 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767135233
