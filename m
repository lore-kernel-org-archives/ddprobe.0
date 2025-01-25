Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9E738FAD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737803754; cv=none; b=U+tOU6ha981E1s2JfP+jETvZLWn6Mp5odcDyE7kLAso8c4bIg76VAgjBd69l/2pK1rWZg1YuKYcUSLqwsbmH+88xNpVaTJ6yR2PlQajjbUCo+UjEEY1diLZEf9dNt0bzmyVuQQ3rF4EWMBFwFhAiWx4GvL8OUqNHcdPbet+aK/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737803754; c=relaxed/simple;
	bh=ivQQuPFZcooyrEut9oVyK9XC8xUPU0AwPAtBpS5z0Pk=;
	h=To:Subject:From:Message-Id:Date; b=VexXGBvsbYPObt8uvbxZ5U+stFwWK5sBwKAI2892X7U7A9KBTZwIXSETMryIhF5tR6RIQPQsxlpQpsPEjOrHjsdE/ryc8NJGMX+SByf3T/uaEfcjrWvTwYtQpWE7Xf0GNfdq4Lx4tPhu05H1ZfoTxR1U3UAK2nrmDb+uLalPY3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHsprU6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHsprU6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4996C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737803753;
	bh=ivQQuPFZcooyrEut9oVyK9XC8xUPU0AwPAtBpS5z0Pk=;
	h=To:Subject:From:Date:From;
	b=eHsprU6UpySgTNg1Alk36ekuXoIujRA7Dpe3euJkt6Bw/Ppr9tLNW+VsEJ6CW2T4H
	 SwYqneolglK2mYUAsi1L2eKVZd7LPOfOncVCaVJzLB6xNcfSjk6fsx1i2EjGNmBcIc
	 Eq4IgpmrTiWBemKJS1ViSegO4ruloe1Q8qvRL/jeFf0khPTrFT4HKyRvpCJ/HrVp4+
	 6cLlAF3FzUDBh/lglCdboIuhy1A7Upexlf0zY3j87x+l40/crBmGko+J/Z1tc7j7B2
	 Onuqlw5Sl1cQQ1JXBxdzHfFWP19788Kw/k0GjQZgYYRbFwbVDrlOOIi7ZQVcOZKC9p
	 fv1Y+UOVRodcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B753C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780375361.25693.3355651587122963951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e486c5c3fa2149a6327651f9269edbb010fad7ba68b5802d0451061f33e8a8a5
Date: Sat, 25 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737803753
