Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6D7206274
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733504754; cv=none; b=UA6ZvLCBkp6qogQQHMGXKzGgHJoKQf4tZMXcs0YR+qXkpMqrXF7o8OEvLzwAwxLhVYGeiWzvI4VwtNe9nxJfvMkDhdyuPQstl8TOPSEimPTfDpPtjqT+x8ZIi3Oz3lWvb9byhXueNmi3Kli8Qt8d/bcQ2u9/xLl7rxdLpSdO2Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733504754; c=relaxed/simple;
	bh=TjkL3esC2EJqvFtusyZxCd50aA39NExUcTBk58Js/Qw=;
	h=To:Subject:From:Message-Id:Date; b=fZTzWlSoxpzuh+cpaLxPCXTFFeNktVvxHOsaen6WW89+MVdCZixhfdEiRt5kCBqK9vyiOCPpfKLoldjcoi2Iv3iBivWG7ZIgHqiEjGf78wnxhiklLWTAcgjj5cAWeYItibk8t4bBsU9txVLcVVGkuaPdYoVWtc7MUn6PaBFbKEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucr0LutR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucr0LutR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A20C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733504753;
	bh=TjkL3esC2EJqvFtusyZxCd50aA39NExUcTBk58Js/Qw=;
	h=To:Subject:From:Date:From;
	b=Ucr0LutRVhhFJoCK0bb+/2fcPWMvPwZDpySt3feRynz85cd/glJbT8WFxcfc/NdOm
	 9Vigw8W93XERHRDHZL2Zh3L/C3hhrKhWqrDA+tK/s+EB575dxW8SjGhU9p+C+91Jlf
	 6oZMBWN51+oAl1y69LFkFt28G1ZbEw5sBuPxmydvKhGM18SAJdW5I44eJ8ci4rt5C3
	 6olG2DKyH3HM1XIXdGDKxmSbV/Y0jfSmZBk5HMvi//bXdaQqkxanF06E/ijsPLqeTB
	 MEXNUqjfuCfAt1He8SmPkbE0H57tkDinXdf/Dvq5z0EeW2NygyEzQo5RTFHt9VPHvv
	 pUsJo8b+R/ghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39F3E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350475366.9501.405045716727946080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29c2a909a5efea08325671b91be9bc280b92445d76f6a124f897fb6ab729e75
Date: Fri, 06 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733504753
