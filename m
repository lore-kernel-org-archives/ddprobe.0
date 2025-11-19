Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0919C14AD0D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763530314; cv=none; b=qcj+9wpuvth3i95ojFU2YTxxNQCPRDkmdp1zsMp+yY19BfGqm9eYdo/fh1jHwg2dGVWp9yd4QxwMszKGEWC+qCfUzZPPDIL5yOzUgvkdBk3GJdVySCuP0xf12/rHUfmQ8XfDeOBbOoVTJQLMIZUXHCGA635/1pUTFid7+TVQEt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763530314; c=relaxed/simple;
	bh=dwM2kK0VeGDeSGrpUsh8dQHldlreBB5i460+TF7ndSk=;
	h=To:Subject:From:Message-Id:Date; b=InAtBw9vqoTCMxrloIYb5OIMtU9NdO1jZKV/hUMRf242awsJOX2NR1vDRIvQeccm5YdXKzw2VsG4stFKdPjnpqO60fOKSz75iKj5jOVOpJKmn/aQ4tq+cbb3EOM2sgCX3/LBCNUXq+alQjJUk8rK3wwNVxAJIXLXNM0Es9bt2iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ggegl5h5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ggegl5h5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF44C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763530313;
	bh=dwM2kK0VeGDeSGrpUsh8dQHldlreBB5i460+TF7ndSk=;
	h=To:Subject:From:Date:From;
	b=Ggegl5h5S9O1yBZpY3uqkjB1QnXb6oGrm8dZx9SOScUn+EEu7NnYFGYU94f9ALd8B
	 UhRzwOEnsTGrX5b6Qu2YrPl/xE5BJBoCgNgIpKVWKTIZc5C01Xvak4emCrvTIuai0/
	 NWxy8ytW6xlfO01IzUKXkAbX5gKuau4GpiEo6liMwM7H+Wy5rAyh/U8yexH4pJrPiJ
	 meOmiJJ4FBWyjqa6tYW8tQ3LieueMVxt1u2uAk9M3zAGDgSYnhVVJ7QeTe2teZfdNM
	 mTqj06fND9d4ncWfRB0BbK55SSvhue21iVJhe8jOVbgWVD3bpGk/6AmSn9qyeS754f
	 c106NQvo1gkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FFCF2582
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353031359.29071.3669813969274452724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1506933777156385edfe55af8aef515e7dda502c2a33702b3bccc7a6378412
Date: Wed, 19 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763530313
