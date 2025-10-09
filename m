Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239B21BFE00
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760035194; cv=none; b=MrMe2OkTdBydojTjBPWLA7HjUR5C2XupAlzUMYinnZSkcD+MNokZ7qk1COfYZbzlUrZnyNXlOGeDCVRniHlYoSOrEEaUX3YcoPZnP//DenL0fFq7q2C8kVjzYvRqpYQbWptDblt52jtgauL4I2wEE8qs0vUFM1sDCWuqNbNBztE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760035194; c=relaxed/simple;
	bh=v9bSATJPEY3iPxZvVUSSeMxwrlCSyT4N1HuwQWm2KQQ=;
	h=To:Subject:From:Message-Id:Date; b=SMtiCwrcySDtQM9gEGJ9KJnd6vQpqxHmfe/y3C+G6AzJGyOwox3OXxZp/8oTG5npTS2dUm38WP1oAx7D4ydN+xXfevEFjFUzvoyxdsRnR0pYqH5LSGYEw9MZTXiKriWONE0H0oONQO+mMQtvD/VATomJffsgddu2qfzSXL9MA08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwZKS+SS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwZKS+SS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760035193;
	bh=v9bSATJPEY3iPxZvVUSSeMxwrlCSyT4N1HuwQWm2KQQ=;
	h=To:Subject:From:Date:From;
	b=gwZKS+SSM+1T5D2IdNHiSu/w1QYgNzPPA0ZzCpJgj4zy82GsYmbfRj4uYuiV1nBF7
	 8Z122GiPA0TRTQgtU2IEOpqhJVnjm/draJs5FiQ1KFHE4xKGbWuAahHTU4Xq/BU0+e
	 OTldcZJsHEjHrT9N5FGS8PCSyecTene7h1QCwn5r4bvl59j/y5fMFX126rKlhMMHw8
	 HDzgiWAWcok8AWdh9i9RIFIlfp7p2Jgq/Orn9d+nR4hCyAb1nX8rAkm6BQmZVACOOO
	 aH1zhs6UZbP8oLFM1a/jN8IWDsl6Kje3EBm1OxDG/3BYRAReSl7CgyorUYkwK404Pk
	 aRmnTYCQDd+kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9651CCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003519360.1986.6854534263574436952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886685e779c94f257a850f09c8731d2ddc7abf24d6df5a15436ff03a2dd9f395
Date: Thu, 09 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760035193
