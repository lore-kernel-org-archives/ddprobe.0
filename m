Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE2F361DBF
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787487634; cv=none; b=gdobhJ3Le3IQqze2ZXI75hzBNTa5GG4NSJagMfns5I7KHa4FhqeGOKXCViwYBAIccG4nvWjCeGb7MKi7VHlLVlGeBWU01DO30kuiGVo7SLru0TdSJYFO01qCQYnFjqmYb0SoOHkpbZLZ78c4NLQ4M4GHhxzHe7I9bEd1Gzm7nhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787487634; c=relaxed/simple;
	bh=rGYxiSQxpnekpQ+MnT/hGTIOJf26cMh5NqknG8s7nHw=;
	h=To:Subject:From:Message-Id:Date; b=HMPwhjm2HraKdhf/pbVcmKNdLSjQ5TFm7tMuUPecrKEk8t0Crnod5rK4fQvl6nlHgJHyDRDaZhqlbgK97C092luW3D3zEJ00ZGcF586Q7bRe0kDLIA3GXLbXD3Tg8u+FbgUJB7nL/R7W5mnre+KiG+qjyJZOV9+SxjJ3GwgbEzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+0+8eTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+0+8eTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE784C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787487633;
	bh=rGYxiSQxpnekpQ+MnT/hGTIOJf26cMh5NqknG8s7nHw=;
	h=To:Subject:From:Date:From;
	b=R+0+8eTEI7+vHrKbUZWOc8fgb7EKF0s0yLjFr9/CFOlMwAWmw4EiN1oC2st2GbZdJ
	 m3Npr47cIMSQw0sdWuRRC2xSdab15WGD4FS3h11+TMqg5F7jeLiUvCtB2Od9sZ3Uzs
	 9lRlYvY5chyNOJCU7ijg4depziaypB9JJYRDPHxinIDih8KFMGrvPojxNb+cWJLXpK
	 gciKfigrBXKK8nD7lMTogmmKDmgQOPp0nUX+heN92/vy1hxBklTsJdvppRGQ3FrAyt
	 hEzj7aT+dNe1pIBrGtDCn7jIjDHGqpXO2x1f3IcPvHpyuIgGi+QBhVE0GUkGW0s5+B
	 1CHgVxuJsNCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B9C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748763368.20797.12743254431793861943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7617ab5433bf0abf9bbc3605456b27c846372dedd2881912cbf9b91caa22f3
Date: Sun, 23 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787487633
