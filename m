Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8D81E25EB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759663195; cv=none; b=N2ypz+QvI/UxSd8mixtxKGEW6Cqy1LjRhP6iFFIHBnnVANSJlCEoZTTtUnoeit1+o1Tc+F6Pq+pJS+SG4tiqzCvzCi6NodiAhJPa84XIwyBNg2PdlqDggJ9wcfQixuel90Wb+sOE/sSPmdzI9j6lDrTB9HpsVk6yE7aLjA+LQZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759663195; c=relaxed/simple;
	bh=d2NZ4VmuxG0wBGYhgVOiU73QZfYkfoE+VTIfOIkrkes=;
	h=To:Subject:From:Message-Id:Date; b=iMCY32bepLJm7cMI+fhUvB6ypiXxsBiAXtt23RoxCwRca03jdAhT6//HKrys6D5uncLf4JNk+GMewGOtgQiuAOML+xqhAfxOaoqyEuE6YINZr4Eo49eC6Vj5jX24t7x40sd/iVv59CPihXO0sKKHb4HSBz542x8eEDu/+08pyfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feDWxUQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feDWxUQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759663193;
	bh=d2NZ4VmuxG0wBGYhgVOiU73QZfYkfoE+VTIfOIkrkes=;
	h=To:Subject:From:Date:From;
	b=feDWxUQsj0xsIOY0y3qBMXRXaEjeTf+MRpglCeBiZy4IxFj2blc6JvfzaMllei5Mm
	 rNAvo3p6Wedo8dPWF5vUrxbyTCrm1Wf+fn+GjfUIc5B/66vlvmEITm542exXMb6eMl
	 pnjUt9yKqxY11DbP6xgV/DYA8J8y7ojjGSRkoSSJViJO4KpKhxm7KV0kyAWociuQLv
	 DiVh2aY2OY9vzmpVylqVWsLvs/KxF+kMyQ0UZJ1nQkbLRE/l0l99eH6fjioynQsJNS
	 nj3XbL8F2VUOIMBuvFluStML7HXPOx4pzo0ekDS45I8I5GP1l4N8LQsbCe5JjWf9WF
	 g90cRxZWsMvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F585CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966319357.16362.11217348153878455359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce6d9e71d41856150a41786ac49aeccf6be693fe095e828a395bedb9ad637a0
Date: Sun, 05 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759663193
