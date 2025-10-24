Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699D23C8C5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761306594; cv=none; b=us4ciLDCRm/nxEBgWLryoAox3lCJXMmir0ANKouem2sLqGyHukI4wXy+sYAuyapGUXgvHQHftS5vC4pkx9dmQSZyCvCxN+iR974XH7bKvKs2Ubso6sIRrTgr/D7guLvttMEBheqV/9BjhE4SboYu/Wq2RNxCaFMBx1HSaThqvTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761306594; c=relaxed/simple;
	bh=BUvEpv2rV+/TvPud0ddjwPCWqHmY+ELLSjPKnddsifs=;
	h=To:Subject:From:Message-Id:Date; b=mbDPCi8RMvRCFMXyo8NHd7983wwT9i7yqsu2/nWzX+ShGViZCP+gJQB35V+9HIDYgDfYay/YFn+jbFARdaU+/J3mfs1NlXXhTSPTOlB3bZQzFqvg0Vo/vtGpmqcVIVkj7BffuNdUmWM/M304DeG9Npd7TQ3Sv0qKWO9D0D7wxFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUUiHsb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUUiHsb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761306593;
	bh=BUvEpv2rV+/TvPud0ddjwPCWqHmY+ELLSjPKnddsifs=;
	h=To:Subject:From:Date:From;
	b=jUUiHsb6Oaozhjmc5GZezqW0TnIPuZedzoqpYLA9IjpeAkHaGUBA4k6RPFXmp2ql9
	 Npk3sp4y2k45ZX8hKUYwC+UsxvLpUMT2Ni9vkYQ9y8pHjXLweW4PyywBaX1EfX5ozQ
	 bCvbu3wlmqDkQkG63F2HR62nBt3tqLmi/HUR+NT2FkNEWXm0IsYeHnBSswU6vfwWPj
	 Ag0WDyfsFjfyoWBM3Arhwmfef48/vXe7IeFCAdYYEu6JR1CV0VxwbJiyLN5I4Qf05u
	 lxh5Jqdaje7wfAH3kEhgKWD+lP6/HCME5jayEjmPE679m6Vmr7xAcERgK4fMRp6kLW
	 hbe0MTpQL5/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F212CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130659357.6967.15053513881412238974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4259cd1fc384389cc88d2666e9305a5476bb8b1e1ce6bcccac3b2febb3ab58bc
Date: Fri, 24 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761306593
