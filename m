Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E3382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735344954; cv=none; b=Acd/RkjGWwXHeRSu9BqY/qbZbRqM5ICw4vxXFP7DryW+m8JpnNzQCm0S6dibRuLQZIMINQDrzTblbSnVKVIi92uDlnKqz8bOQGwv/NwRx+u5gPItfyJNwaamier+4FQgJxnzeM8W78NK81HC/6zte1cnFPsiaSk+yKCa6BvYi+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735344954; c=relaxed/simple;
	bh=1iBo4jOwGwZJLJ8lDvPsM3bI4uTqjJcdq230faMBwcU=;
	h=To:Subject:From:Message-Id:Date; b=BDwUN/ghRYCHTkSwk7yR3xORbTLuqAkST5HnWgDjp1l+gsSKeEFrSKL0p4wtwFNSVcN0LiYKMOtfRo02ZGg0o8FJYLZEJE/jpfZwPAwz8i2zxcQTepdA6WBcA8+GAJyUuWvr3Pj73ffKVdH9fnyvAx9EgnD1XVDI5Vvj0jXhvXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqIt26rO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqIt26rO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8BDC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735344953;
	bh=1iBo4jOwGwZJLJ8lDvPsM3bI4uTqjJcdq230faMBwcU=;
	h=To:Subject:From:Date:From;
	b=cqIt26rOtwqhZRST84ruFx5hUOqzBPU+V/DWc80YUvPQ8KKy+J1s5cEpZOFaZwzqH
	 uQu3msZtsaYUytTlfr5idMHQmYHRSyCTXkwxKpvnYhltw44ykw+qkgZzyyEzVmpMb/
	 HZKGX9TuKoFixCVRjLVz45wJbwa1d3rV0alrF2LfAlxSWQLHAf6oxPnbtiqksVOlTN
	 eutYoV6unJWZs23RVVvhsoISDb5vW9/G4i1tQqZ2+hCELW2MKP3cC55bqsyad0NUnX
	 pMvy4xFQUjIkM98X4fbVuplZoM1qkzUATLh/YwnfhvLo30aE3twPGZwk2Gp10GgThk
	 ajdHZuK5w/DYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42FFE7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534495363.28178.12570248356938361805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78b65d4b69ccaeb8d022a4f2bae2e52463e565ff214e4e32b52b8751977ecf1
Date: Sat, 28 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735344953
