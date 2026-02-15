Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29678238C3B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771138494; cv=none; b=kNg7YRjSKGsTmoBWuZ9aVZB+PQqZHTW8awe6rYBZDR5aKqiGf4YSNpcM4oORFcJ77J3D+TrEYdXBWmtkw4Q0P+LtiLqYfPbX/FMmcQugzeiC5ApDEc3b+NlR/5qFnEJtEUmTVqGy3QPvJlg21dRp1P5gpIiJaMM4c1M5AbVi5mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771138494; c=relaxed/simple;
	bh=0SRNVNLVd8dhxjeQfvXit88PmrmHE2adehLn09LGE+g=;
	h=To:Subject:From:Message-Id:Date; b=MLJC6f4qEQERZVgVb0kYmp7EEVJFG1S3cPAmaYHm/+DFp4jBPDQsv36hAGh9jNcwAGMfz6eyjBwMkFXF+WgZxL4EaadHPYP4Eipdz0BxgA8uAeU9LJiOe8efQ48/VZSQeWjbVndkrnxcDj5md/EtzS2PXeqGEnOvaqzdNN773gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTGyd+1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTGyd+1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD65AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771138493;
	bh=0SRNVNLVd8dhxjeQfvXit88PmrmHE2adehLn09LGE+g=;
	h=To:Subject:From:Date:From;
	b=cTGyd+1hm8kwzO9hlFjjqjLYgWztKA19dVR7BHcIlaEhTTYDzyLJJGPdiQ07TKzIe
	 vVZuMLLkbvLcMRCHXkXuK0wzpf18T0kgdFZxXq0Q7TV2Ejj0cmDovp2QwCxCHjmg+K
	 kkgl1tkNmzc4ZM/OWeg0Cxy8DKAAlSeIFuEDOVsnhnSZ5t3sF1+pyF1YzgLBwbmK0f
	 iQ0nbxiKfNr+9pRsZS8dDxOcBXa+T8g04Y3goiFtNd8pjCX5nDAIvEMfHAeLqR0pbs
	 DRUsmX8FQ5MwMF8LpvSVchuWz1/YdSwN6aTvXVAbWV6KmQpt2Q9tl2dXp3OrTmlbQA
	 8CIwkcWwPy52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE8EF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113849359.29545.13830169352841660424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36b73dce45557a5686a95689f1c3d04aa27dbb56d242a9400267bbba7f3c2b9
Date: Sun, 15 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771138493
