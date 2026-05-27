Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA281E1DE5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779844954; cv=none; b=T+0BfAwhlB8jFppQwL5v/7qkzYZj4Y7hNVnOXYANkJkTKaDOeqHzYN0QEcf1WHiWTvfKIetvuD5QNPsFK5/+F0pD+4yWcPhfYneYeUs3OPhOtJbN/xzOvq0YK9ZLplgiRXVHJkH3XrV/GIACzPSNdyolCrda+rvOU/UMERV7hrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779844954; c=relaxed/simple;
	bh=heSHKVBpni5T9hf0JjkFtR0aKTukjIpBQinRD8BAwzY=;
	h=To:Subject:From:Message-Id:Date; b=JGNIgBX0jVzm6ZqpYqZ7IFZEuUt2IY/FrpIf3/cDCfCFWxuiMMWVLMPhp9qoJlI0nXsML5yYesVeTmyxKSn/3QkF664Tkk6GQ5Xjaq0kzMY4DVSLn6L8+jMTG112k7vsA0dEqf5GgBrkPvmO+BJR+H6Y0XcqY5LtUjCZsRHp2uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQIXo7WW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQIXo7WW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C27C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779844953;
	bh=heSHKVBpni5T9hf0JjkFtR0aKTukjIpBQinRD8BAwzY=;
	h=To:Subject:From:Date:From;
	b=RQIXo7WWlxo7G/B0wvNsyvkgsZndKmXjbPPt/QpjhJW29YIxbYn3xg9OYLKzr2tvW
	 HIt71YrtbIyjERclAmzMToLYqL/MR0Xp9fS0pgcX+MuYeZ8l4cOJBUcAV8GTlvsKx5
	 EoyprfTU+vlYvjODiL49FKJPzXGnBJQEiaEJyWODCtvGpU6uLJr38bi0Q3hvsUQvXu
	 vzzIiuib85TpZygmQa7JUKmvn/yuqURObCHLTxxwG+xVB4EFG7Jq2C0HSSF8n4GWhh
	 CINsFx68AC+FwbMPp8OkyyIZu9JIM3VeVkTDXOOxLfn1LuwMrfuz/L8gugJ3Cf3WUR
	 ftHCN3lxjTJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD5BCD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984495375.22165.7943859499510592814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c6b1e773e85a655cc51643846e331e69fa75bfba87cf14c47b5f84c2323f42
Date: Wed, 27 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779844953
