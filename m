Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BA7383C83
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785116434; cv=none; b=OFZt3m5zpHq7GLQ2uLUFy6rt7K6bkyNfdWOYDB5Esqbzza6CxqDwOf+7cqWQ5ML7iiBYZTIvX6FUYNGTtRZSynEa4LTg6mZWhsVYkUjl0OaeW0qRTbVetrN8IEJbCksP8BkMDr5aDLQicMxc/pzlTgQdHTdW0HBWuA6eyk1nvHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785116434; c=relaxed/simple;
	bh=Q9xlQW42CKC9GSPz4BB8BAcgz8KXUu4DVHEepVrUkR8=;
	h=To:Subject:From:Message-Id:Date; b=rpjNdhcObxyKYk1Rgz2r8U7h2MW5eAvu7o5MfFTOh4IdKhiMcew4SJJgLXHCSa4LukNXl+m2rfe1Md9K5QzcqkxMy7+0EwtnO5Djb+7KsbqCoiS4YSguB3bDUUBrrRvRjH6XEam3A4v5/0VMFoNztkDVCXhQISiofUQ4Z65T9Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/Legyy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/Legyy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C36C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785116433;
	bh=Q9xlQW42CKC9GSPz4BB8BAcgz8KXUu4DVHEepVrUkR8=;
	h=To:Subject:From:Date:From;
	b=O/Legyy6aGZIjCtm0KKYne+8Rn+ioawb45guM/LivVhgAJhyj7E6RL6dN6HbFm7h9
	 xKeUu0lm+1J7jMxiNCnMr0M5dvSFgW1nmkNWr5uISa/J5qWT1F9DwfMppZFRw84p/C
	 SiZlCj1GDzf7I7xOXN/kcZ6IxeS5DimDYNByj/qyyaVYmVr90d8awLciZ9bK2CQ2+D
	 AdH1DUWoAwEWMF/osViwgyoLU/8nZ4LwFh7lOiK8tZz36yZ8HrEh5dWocpdKE55mU1
	 MNB+IFI19NcreMao2Mx1QD64orPrxJdA0W6VdUFS7j6Aji5dqHLwS1ExkVxtS7KFx3
	 XGbbfjIZ0CZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE05C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511643368.2936.15566969863523830518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1732de891326ba6f0679c744011edfa1a79d26def6dea09a26bc8d3445bd0351
Date: Mon, 27 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785116433
