Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAA83B293
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712505496; cv=none; b=KcGIpLg0TuibQanvEi75pEGI8pIuz87JC+FxF7iCW3+EGH1CbHFkQNvjunpBIKpcFSaUtiMruGyPehflsA7eEURnjdZPanPF8UuXXrK8vkTSJP0GdIJjnPz1J95fHc/205YMzMJX4b+bAlsTbiV0V8FVLkLVR+JcAwGrrRP3CkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712505496; c=relaxed/simple;
	bh=S/n2eKH3V6d+AiUYkpdrR4fVYjkFu2teW4vrIYshr2c=;
	h=To:Subject:From:Message-Id:Date; b=XLiHro3xb8vIF3u8/wgw8sZbXmo2YC0xM8ypF8m5sYvRSTpjyfNr5LTxTzg32cp6m0U/UZh57d1JXWL28PN2VLeSdhD/UVTExzkAZPzH7/eH2DCVxrnpSmGSFxAX2ufe/0FjAXP3qS4CUSltz03kwTWPV+dkuXuv9SmjxoSCxkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgzo8UVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgzo8UVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7095AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712505496;
	bh=S/n2eKH3V6d+AiUYkpdrR4fVYjkFu2teW4vrIYshr2c=;
	h=To:Subject:From:Date:From;
	b=bgzo8UVTkSqHTjEL9zqqWne5xiE+r/fsdRrVlfF6vvFmDjD9mSkSUvLg7ZqXw1ZoM
	 2BDArVHiZgUleEHWBezHNJrfA68/5JjZt/52u5RlIsktgtJqYKGtbQN9EG/I5esGpS
	 4PISbFVc5dNt69XaO04AGIB83CxdCX9PbGQPkA3V2h568wO7q+9ZuvfQsu9JD7q6l/
	 Wgta1xvuJoHAlSo41b5ZgLEBGNuf+bvzQUzNnsBgQy3B4YBcx8V7cTPhOadHbWZ872
	 8Cv48j+FviR1++bda1kBpwjaICald0KPs4hJO17sRgtsWwvClWjqGbGdmK4BKcONQ0
	 4YxzDKsDX0AwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA0ACD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250549638.21458.2838575722047315608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c518e5031476b75cb06b35a58eb84de46f2c9b8182fa48ffc75675d22d1819f0
Date: Sun, 07 Apr 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712505496
