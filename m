Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BD219B5B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766871834; cv=none; b=D3GuqhTj88ztlK9uvdz2/xoFdkFUHYIPbEzbuoZoOm5+yI1Krpfc5v7PSTy3CcCpnteciC8ZGdtbd+u+sugM73NeUWwdMEcYX6crl2HP80EtinLWXWSr9B/MsS5zYXqPYbFq9IHXqr61Sn4LsuSzzfIY7EEVL8uXed8tdRtWDGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766871834; c=relaxed/simple;
	bh=rs05TPjTUxgRfrMvxCkpfj18zxoFYyCQGgkOY5xw0pk=;
	h=To:Subject:From:Message-Id:Date; b=Y0HASB5Lgbt31lZ/ErNEcUvN+g0lkfH9L5CvryH52Vr0hPmKpxk6rc7d1/jALd+8+YgPHCKCnYiUuUXTwmhKf1zCus7ii24ThSYDbq3VrD87e0jSbz4VV9O5k5UBXlhjIokqEfuEaaJ8cHBd+hc3yM5er8zoWbWjPQabmqkH59Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBWq0tWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBWq0tWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC83AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766871833;
	bh=rs05TPjTUxgRfrMvxCkpfj18zxoFYyCQGgkOY5xw0pk=;
	h=To:Subject:From:Date:From;
	b=BBWq0tWRXJhDC1dgDKRT6u6vQEV+8dbP3bYHdR29hX224CUmjx8/TXWYXphIk9Z5W
	 3LXa5llnNKWUKb06/yOWT91LkRF3oxutfAd6kietoevU0KBj1VE8u3BS5UIF6q+TrD
	 ZJPxKrmZLcrQzae9jtOOYTbUookVcjiZ+X6v+eCjdspkOVgQ5eaONJ0/DVl6Cvad8r
	 6yV9dLmHaw18agf1o8x1Vj52gnGX/sZ3q/TnjMiQWwtUredvqnZqHqP+VTHHCSnZKd
	 H0TwqzPwq2oZiNPRUVB0bpHjrvzr2/SiVpIdWErpe+0nriwOERfeAxNTr9uezuczaL
	 VeiFvABjfQvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CD6E92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687183361.12037.6584929650963721872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10654afa8cceb692a5effe1b13249ac99301740db8bbdfb6f61cfa14a1766f37
Date: Sat, 27 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766871833
