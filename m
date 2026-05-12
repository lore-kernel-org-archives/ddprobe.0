Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5383B19C1
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778617833; cv=none; b=VYtaWYgdADBOS738GoZnC6Fc0FRxrlVcrl84JL1heMQ+u3zW3Uvc8jxvf/HE5mKJrdykCVM3HGBJuI7eQ3uvbz56+72vszazwZ1wcswzn6r6gMTaM+8XIBW7EDwl5zyJx6AHyJZnuWpyvodVhXIDQrL6WfMBaL/jW+Fc+ZFCi5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778617833; c=relaxed/simple;
	bh=YEuNu+cYXzCWA6xmxCA4LCbFaEK/aKqrwYdm5wjIGZs=;
	h=To:Subject:From:Message-Id:Date; b=eyXQh0MY1tgypVL5E2CUqjNZ45IgjAvYP1stPw/qiyG9/9rdAclpanFxb00M3fGDmZgkPkjOcZhC74LSyD0vP1wrfpHy06S6Yjcz8HaK0znqob3Tmn2U/mClEJ3yrYii1e3ZO8DsutJocC66c28IL1Flj21QZnfmBAK52lf717c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUYuggYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUYuggYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0152C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778617833;
	bh=YEuNu+cYXzCWA6xmxCA4LCbFaEK/aKqrwYdm5wjIGZs=;
	h=To:Subject:From:Date:From;
	b=bUYuggYe7O3pZ77l/eDZ8Mns+CaXZ5KbjrRo0UfLIbppdiFv7dNNBMO002QqaGKam
	 zFINE0d529u/PqhBKLF/kHctvFaFc9TpIHoGknzm03YIhYcfDXOw+tGJJHLULF7bi3
	 cHnyjpV8MFEQWs54qcu8c3n2LYp5TVS7oJ+BiG1RVEgrEh3ifa3xnJ8IP8ShmMKxOp
	 rUS0bCB/DTAzgUJwD9PkWx+QBoOf1YUflO1CaBGezQFutDYZPFjTkTol563FRI0NQM
	 BgLcbZ7r7YcmFmI05h53z/iFFLWo8SmYN5q+nrJkrO7wEGOd5Ommn8If42T34fE0+i
	 ePpRC/OJDzSaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2BBCD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861783369.22800.2138516785588744011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d644ddcb738d69c2d6f2a2769b482af9c36ca400ffa1d4dbdece14a8d9b12ed
Date: Tue, 12 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778617833
