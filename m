Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F45434545
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720631243; cv=none; b=KFyy0AthggFfmMJEAKMvjv+hUTwmq7iECviSNDqRm9Lm9INXUcFLf4oDLo6WlT2ZdS8Vm4BIgB1mJcM9SOH6Y5ys+67nsqAf4XA5k0Qx7OgKrhXPM1T0RRKkAqrtN34glfRTuhO2CWYYkCGsYbtU03ml3FQqFxmGEr70gaW1occ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720631243; c=relaxed/simple;
	bh=f572XskXidVUvUb6aYMYfaZlluu4ZFXJYpJxxrBsUxY=;
	h=To:Subject:From:Message-Id:Date; b=cRpG9Duvo19TNGJXGOZh53dmjxezIp34Grsm+FPf3iwwItwA/rFla1C8cg20//E+lOSh4uQi//noyHrVokTwrQ6VsZZWUodjsfdTL6rowIx2q4uuVLXkbSqDZuX5QvDsOHOXc+k/J8Nf5VbcGCKEHFoTCmCJE/unFM1nI/B9Pk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svJJfAcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svJJfAcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6875C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720631242;
	bh=f572XskXidVUvUb6aYMYfaZlluu4ZFXJYpJxxrBsUxY=;
	h=To:Subject:From:Date:From;
	b=svJJfAcVXDgwTDDS1Z69qqdncMkB7Khce5myzENHSBNsaD2Obmj7H1MAjPHYrmed9
	 OSi6p6wdns23vUvv/nUQ49f/6oAor0KBKZKyG76TpJ9xFELyK+u5KTueZK9ixUsFri
	 NHENAe73wacvrRDBwcpdUl7CuCsu1ADhoIbU9Akd7xnsANRiRvHx/CfQd9sJ9m1A8r
	 HRstLGZbXtcjcfNpSanx9y4jBGiL7Zw/DRi/1Jcm51gAnVAU47uxfiBXE+UrVclVzi
	 pwUaixzSAIKe9cj8rQfvPvGUW5fU8ZkAYlHYtALpAUs+onTx2e2vJE3EDpWL5HHtax
	 0zPc5pNgmzEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30FFC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063124279.14403.14908145208315919272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49fc4729b5993cd3e0a9bb10d9eab3f3b6e5dc3988b14809575f1977e49bd82
Date: Wed, 10 Jul 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720631242
