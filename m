Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE0A1B87EC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735898154; cv=none; b=XInWHkycHfmEW9g5fiaWH1qOb0LKRBUnBZS/kefZWt3917WxI/jA620rsAfOGj+2WwNqeyFvdQD6YpOQPdkZwzg62wO/L750VOuugaRD1ElWDhWTyBuEy6JoDR40UoQm34y5+FLRxOvmXHmKYsyNkgRQ1TOdn4iH5jp38yEf094=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735898154; c=relaxed/simple;
	bh=ffrRaJAFAUg9cETjzZQqUIv/uWcPNzysknf3aKzmAx0=;
	h=To:Subject:From:Message-Id:Date; b=tWtbcmRh6ukdJ0orc3c8od7xt7BVfQPzkZ24ApDIUgaFxgtVvZmQe6keTF9n447Kda+3N+ciJNcDTzoC1RXX1DQJRLrf3LMmoGoyj4t9Q1NF0gSWtTC+ofeivjFtyAoOKHeKgavxuWKAhPv6eRZt4H/ASZOBrB8/jmbZPfU3puI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N198kaJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N198kaJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49AEC4CED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735898153;
	bh=ffrRaJAFAUg9cETjzZQqUIv/uWcPNzysknf3aKzmAx0=;
	h=To:Subject:From:Date:From;
	b=N198kaJu+aVvb3PS9Y9oPyrz3eihV9YM8Aws75yjOHSp50KqJgbSXow/in+B4MdX+
	 E0+Wc/FhUDLpVtZKOPFbK+j/L4KfsZRPTXGMcN03497VevyfHa6FMrc6+sk93ND7xn
	 yF/3st1XguWfFtR/1j5FvnMIJqSK6dKvylvOAlxY+i4UTMDyBPIOZqYc/MyCkGT7n8
	 HE3kwQuUODJqb8GhSoVfnCiMhcOHEIoHY96y8UoAomgT5NLXKgzhsFFYZXCar92J2U
	 en1eD+MY7hdOnmzj14AYwlDo5EdnIDT4CviiB56dpwtCKoBW7cVPq8mS0YEr9V4z1W
	 YZPPkOyq+zs2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F98E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589815358.9955.10130694175464010230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b900b0f5df4cf413359ed614d4f83143737fb259859421f511dc28344444e81e
Date: Fri, 03 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735898153
