Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210E18FDC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035954; cv=none; b=qat3unYarGvYV4KKXOB6Kyf86uvJ4s9CiiYb+OI58o9B+IMHXZnGUr5arvy/mAEeuE2TqjWw5TJAEgtpl/KSq37vkjkj6k6LoEVnvo6Tn2t43y+JECHKH3mZjq4ZRyUIxkZ+JPHC5gnpweXUGl/huQ3WZCrYVSZC756R9T41bmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035954; c=relaxed/simple;
	bh=RbrkQK8Ig6RqoB4XhMI7rmoK611TPkkFbcfolfFsGII=;
	h=To:Subject:From:Message-Id:Date; b=mMb/WCY6K3yM/ctZAz0jIPtPE29coYhafGcL4zfqicW7gLa9BOHDUKGFSK1+w6425aaI1l//sr8eKZhNJmoE+9eQYUhooVgZrP6sEQXv7tx5Uq2Q01bg5KXbgOm+RmWRTD+QmJMN/7cxuezjYg1xO/osfygEMaPtYjnSEKtghX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXhgY9ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXhgY9ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEED7C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735035953;
	bh=RbrkQK8Ig6RqoB4XhMI7rmoK611TPkkFbcfolfFsGII=;
	h=To:Subject:From:Date:From;
	b=YXhgY9eaHEa/AB9+B0ABKH/qCoQGiMNnY4SsCpek7eHsPLXkjPJJv1AcdQBjL3PUx
	 FiaYsN7DLloJAgrgF4DE3lj1A5WbNxkBNzOI0RV2OjkKnh0S3r7DH+qoESenE62hI+
	 u+FkdVBQYLn68D1eAIvtatyvhts3dBBVxThB3F6B4Mi+iIjy6tdhWZnu8i9haOTFH6
	 0A/5DQjiNAn1QeO2KHqIX6sY8I12HVEUGldyAvKF2NJUK1k8zksX6L9n2Q77wzrAak
	 TirXeFq5/5jOF+saWcp9FumqTu3EzrHcjQnGN95Uk3QVNZYIKrZUONK4QVe0Evh+YH
	 xkNPuVI0J8n0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98299E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503595358.9822.5788237246345959898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed495d03273b7a3e64b335764b232df2ae714822ee6856564b02b6026490445
Date: Tue, 24 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735035953
