Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D47A33F6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719034343; cv=none; b=pCZt4dnS0gvnXiN3WhSTUaasREUa/RRB8MJHVy1gUDLAmCO++mMJe/2CfyHSMmjDVKMcbjsj8JF1CINNfT49wQX/lSyEJBFQDLnp4RCgs4z2DfJKp88TLgcrL5u+DqUJTom0vhez9tLnGuKguaak8iGafq0C2mbVLf56WcA5LNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719034343; c=relaxed/simple;
	bh=VUX+6dTEKYu/8k/NsaEQnqo334c6nPNplA2rzGWVP1g=;
	h=To:Subject:From:Message-Id:Date; b=txVkTRbx1fRWK9NW4DX23bigK0SvFI4TwwN8KrmCliydKdj7TUwvarDNXvgjEaO5Or4kKRgjfoU49r9A/e2YAlsbNW6Wjgo1007n4avWQxkAhCa35VVCmXj5/BYIXE7jA9TWDua2aPhd75wskL2MQbT0T/PWcrl/zVX8x+3sLro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4Iyhhv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4Iyhhv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4090C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719034342;
	bh=VUX+6dTEKYu/8k/NsaEQnqo334c6nPNplA2rzGWVP1g=;
	h=To:Subject:From:Date:From;
	b=E4Iyhhv9sLZKHcOcwUbkgaik2IzsAhKCzn4HeenYtZPT94uOWp5PKYSZGdtRuQ1Aj
	 7XBmPmWHrJXHf+l54aG5MjlHLro3AqJHBcOe3r4oh87/05wbKzXaNceWpoWY26asVf
	 RFtTUG+5CwiZW6JNjLgE5hAoSMV7bpG9lWQclUxscx/1asB8DDOD+jbnvdF0RUMk9f
	 qk1A4z+VMP9D2uz4Hrt3TuDWCaW4vNn69a7kvPQ1rL6bmkG5gitWwh13fhxpgKfE01
	 EdwbzJ6nBsF5e3/7T0THJ+hzpV0Y2JdaJ9sx35lxzN93JWCap1d5UKYFIVoUVQjqgj
	 dvdepmspPLFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDB6C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903434281.31526.16113988910102836324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304db022f9982a56e10902886d0893ce653916302eeba222b8510c4e0fb926ff
Date: Sat, 22 Jun 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719034342
