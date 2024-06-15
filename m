Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C69646
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718414903; cv=none; b=URCMEkh8Ju/Cp/htUSSJOkm5viZ3x/n4HXUi793kuQsCTG40NYFYfVJERjaTu+0ffgUU4F0OtaZlk1cbD9xDPzsh/Ra4KMQYLgMMYpVYk8w81Nj8MX8NtPxH7LCMgXPXHy0XMMRVKUuIXTE5qL8Frn4IPW1RErciWkl21hPP7Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718414903; c=relaxed/simple;
	bh=w1kpl53MydNeuhtKNIHcsIXy7eAvdvUW8PtIrJI9MR0=;
	h=To:Subject:From:Message-Id:Date; b=ZkKIWlN40LzPRQ7PNc8qTUV0yjpMxi/giegQ9xpWWpnwk2A3oLeXeh2YIhEhUfCc4r/zutekrUjib+ZvqjvN6eytMWA9V7GyiS//NDQdaNsXUTaYVulVOZnrPTju0PQsoSOweiE/65lk7jJCj4xzGk7JrLaaLuCwzNbODeRbHW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNGjRH6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNGjRH6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E936CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718414902;
	bh=w1kpl53MydNeuhtKNIHcsIXy7eAvdvUW8PtIrJI9MR0=;
	h=To:Subject:From:Date:From;
	b=fNGjRH6m1bI+c4dOVcWwQm/NIm1jbjKd0i5yNc0GWS41uYyZw/tGY+6+d46JUMHme
	 Yxc5n9eUimFDX4oop5ABuKhnKuEhME6c0bECQDFPWbX7f9ah2i2A0/+xwSb5pbQX7G
	 Ghz7wKJ0LxhUGrrOUOIn9le7ngbEpruSxFTHaG1yqsfbjWBk2zWW1WiOk2mLWM+FXK
	 IpPJgpTfjzL4JbH61aLi97S2SeKFCuL65179Io321Z3XMXUsyHulIWJQR02E/Z2/RQ
	 43g7CCtKi2hhME/MHbK5naMAuo3/O86miEmM4VZSFih+AkMy0qi83lkpq/qI2/CPDy
	 v7KF19tkVXcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F30C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841490282.14866.17409373899767605429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c967a6b9e29c81248ab5bb6e5087b57c88d1f3b7d09039afaf945cace70399
Date: Sat, 15 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718414902
