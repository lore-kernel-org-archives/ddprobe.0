Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F9C184
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737293754; cv=none; b=bFYGD5Yt9DxiVDxlAGdUY78Jw/kC5ViipIR1AoizgZ2npq99Z816GYsh1y92dvn/y8EPtO8Sa+WVzYAwSN7qoKSRuQ6RkzCu2T/blrfOrqZeTkm6pqF2Wl1cjWbSkgJJilnzZPcAC3iLvHA/iYh/mebWEbFr/YAMJ//Fi7LjLQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737293754; c=relaxed/simple;
	bh=wCQEIGLkyxicrr+nPNbNkI05m1KrWlC/YNVR1D4vOpo=;
	h=To:Subject:From:Message-Id:Date; b=gVfkWTQZ+upmA/KbpWCLVjDNL3qXmuAnrow9gOMegCEHCBaW4F7n+0fbWIwkvRf/pyVmOMpqxGakQhPE2+o8+kFn/jeEI5NErOUkl4n9GGq64ob141mZiAK2RPCtmt/Y5tZJL+oy/30S3rot9R8saoeD6wK6EWiZD8DoTcjgT84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USs56+Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USs56+Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE855C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737293753;
	bh=wCQEIGLkyxicrr+nPNbNkI05m1KrWlC/YNVR1D4vOpo=;
	h=To:Subject:From:Date:From;
	b=USs56+HfGUs44HNaHgUs5lp4hRkuwj5zFZxIZemnwwIeCkOkdrtv8muJsmxm+c1Ym
	 zrg9BBtH0qCm0dq+09TXAokpQaBEyj2qj8g2Hwcfkohyo5vkleYkgrCbrUIvPCOtlI
	 mRkCjTKBvul2HFhuUpL5goEWpasl3l7UUxiyLJaV4NNUXvFz+uqe6383r/b7UcuJ/N
	 Sq06yY7rxscL59ut57oi0n8KvQW2XoWBVGqv2kEbehe4sfNC7DAf45CXWpv2U13cs+
	 RUYf5uj3qdq+H10J51rrVn6SfheKp55hXylkzywy03O2zzINU74h5PIpD6IZI0MUOy
	 VuUORZ5rwqC5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98555C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729375358.14013.17189177111082738114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e7980d50586d3dc914167612f5a2ec861a222a1408911501ada4e214e77bed
Date: Sun, 19 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737293753
