Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D94A269B12
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745405394; cv=none; b=GSl1AbP1DPC5oOi+GUtt5VthN1jfPDYGkPdrVF/mdql+atoRjmGUkmQ5+2MftCZPeNISUGb5XiwHQwfYAeIoRhpKPAUz5VS3zWtJSdgo/j1Nn7ylFWE3zQaJRwffPCbnlbhusWbeZcJHnvroi0ejpA1BH3MF+KLBOzY48mBBR24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745405394; c=relaxed/simple;
	bh=LmhbJZDZRE0tTg5EYLV3af43i0DzwZmhBvxrjdCUJsA=;
	h=To:Subject:From:Message-Id:Date; b=gx0q+UKvd9IvMdis1IpO94+sL4f/z0AUzudwYSFb62038zww20wXfrZjN3EGREtgeraUARB8oA4JLwOcwPqEVOxjhemd46M/L7ffmetBGDWqVSrjp7MgRsaLZ9WO65QFKS0ZpghJEpRRSfVV1dwThiz7ZNSWcK6vE/A0YGPe+Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQPn4JNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQPn4JNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1749C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745405393;
	bh=LmhbJZDZRE0tTg5EYLV3af43i0DzwZmhBvxrjdCUJsA=;
	h=To:Subject:From:Date:From;
	b=AQPn4JNQEvR2awsTCIrK2PxU1kL+Ve1++w4PUD7jwXoAacidBfLCznTuA6xY506Sq
	 pko1JYIxsmhvgtQRRkn3eAJ93Cwyxtl7aEkbNBhV9koeV/5xCxG47KT5dzK3P7WD8x
	 48l8jV5O4dVMfiLfEWNX1xCPqaUEl9Hqbj+HviUE6cok4nJaXRAVF/M1PrmvBJSj6m
	 x1rLZO65hks0oXdt/01MRXPBzSwSLyi/VQTcLguuDKjs6U161TkW8GfhP517MWVbBw
	 V9D5PJlDUJH01AvR0/HqcUcq1j86tUh9bv5Kxa5CfL4WHXUhizcg1wfIC/4d/kUs05
	 VyMm+9GeeDhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED00C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540539357.18311.8479809145534988089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f289283f14f956f8cf49a11addc55eec5620efa1fc9915b3b226e001b21cba6d
Date: Wed, 23 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745405393
