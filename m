Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5904E1F4179
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742083194; cv=none; b=CFxKM4fgtQQwap+2/PXIVNHSBqgd/9wRLSGJwL5PyzRO65Ep/yUUUUlxOl/aiM+EVhPsyHkFHRj0vKqaFKKLIVCgS+hORySz0IYz0oytPgAJ1wkDuqnc69AFUaTj3wHhZ4A0UlX3MLzlQM++2BCdmicOjLBI7XWQzhkGkLpYaz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742083194; c=relaxed/simple;
	bh=NI7xYKdsmjWUyZp9r4inm6w8SYrIcbyBrw2o9k9TecI=;
	h=To:Subject:From:Message-Id:Date; b=eK+nSQjf7Bhy1YTTj3aS+VloKMUXdYY1Tw3kodgbDJAbOSP9fD7aPwTsK5Lkyhzz9P5sQ1C1PD3GHLVEJDT4FiuFcyCC9LpuGoaAkhlKyhrccBZb75nWdboYjSOx8ZV1wmKoHLgLGb/zhd6H+f+bOn5e3lOxm6DwinKe0wlHwoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOoQrVOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOoQrVOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F86C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742083193;
	bh=NI7xYKdsmjWUyZp9r4inm6w8SYrIcbyBrw2o9k9TecI=;
	h=To:Subject:From:Date:From;
	b=XOoQrVOL2RCaOSKPqp8+8tR3U+XuWqS6tAc6irFC51yqT6txOsk8QPMtg6kqn0ocL
	 IUjtb+umxquYajQ8LNMye5ItsbjRJRnGuAbqaME3lT9POBeRhesnXlwWQzBchYcpiP
	 RgdDVLfOIE/NTYNR3UdnDeTNkkBYnXD8/Wnq2XUSqwCpXNPIKSjxILZ8UwARt89hDy
	 09F0KS16SxfzdAJNdSN5icRV4FkHJeNrTcJemiXhH0nrCUUvKKx6Wc32ptmQVzLMdh
	 1acEIaI/ELrhq3Ejfhte2YlT7Ai/JWUQKF8rAe+e5YTZ1QlFnyGjfsSdOg87C/f5Yi
	 e4VL4iIbf4acw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA0C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208319361.6167.5776392767814259711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4a2bab153f876abbf9762bf9b7f1d219e69fe09d1a174299efc912b6526aa0
Date: Sat, 15 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742083193
