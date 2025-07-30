Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2852D292B36
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753865994; cv=none; b=bANkyVx56R1hiBsieP7NXiInepCFaFn2kOjYNuqx31+j5KLuvpyoyf57bo03ZCqXeBUOzxzZx+ep90n/axqrnFQEHDP+rJ/uixD5bpm2b/2fW8bCPTrhCUyPrnDhzGyv4ESDYP7fU8/vgSdthpIZIdTeKBPsnfGu+fblll2esBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753865994; c=relaxed/simple;
	bh=rE5WQ+09p9tNNennyEdUbb4H95YZZgSE30+IBqdXBjk=;
	h=To:Subject:From:Message-Id:Date; b=ZnmFJvHh3A9BTwF1e+gMsDtW+pUKemjMJRwJXc2isulg0VA08SHGh2ie1GAONB8q1Cs5JnoqvITC96Wtw8EH8sMYrnDXv2YBiDUUBfAfkQymLc6SfXRBc+vgkQNJBxcjOu/fp+4lieb8SMJQ8cMTI03IhdJPhUzTMxEhjF34kc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzlMjsil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzlMjsil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CECC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753865993;
	bh=rE5WQ+09p9tNNennyEdUbb4H95YZZgSE30+IBqdXBjk=;
	h=To:Subject:From:Date:From;
	b=CzlMjsilOxtEmHX+mEOfMicirSSjERaxwrRFcltm7mszO6Ed7JF1sDHWva6+cb7Eb
	 dcJNO8xtUx5k1MzuDhqhfEk1L1vGDYaMN1jpNvbrDeWQKlwf86C/0X0z3CPL+NH1MZ
	 3+Gi83LWa4ZAOFAh2CamCHUSNN5hQ/yLyxROh4JyZAxHXf1O6F4nvK9IVMvT1OicRO
	 GYGIqkO5TfcdUpndiFtZ5H5O/U11y9iXCDg29/t3bJMJqXpIKfrZq8aXB8XWbI/+rP
	 CNV8bkfA3prPnIY4bgY8aX8czP2pZYaJssNt3z+BkVa90P2sNz0q2JzW7Z/tiJLBH0
	 Bjsm4tLKg1ezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C8C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386599357.2270.16486515270516390056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d8ce1db4eba3b267727aabdae3f407a87d34efa33ad6754eda1866c37cd4e0
Date: Wed, 30 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753865993
