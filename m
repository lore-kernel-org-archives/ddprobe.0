Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48826FA67
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754330994; cv=none; b=Jb828PLJw74Yl6AI2qm2EMMMDtn/+qvL4SPBwmoP1APiaMGjy/8Jlw8SVY54/2Bg1kEOZqLQhQfOBokeAHQdrRoUSVU6VOhFiMKqoJGYkPOhKpqlw8H52SBsqIhLlEztCTX0CVL0K61ql1r4UofJbnskvRDJ5qx6Ve+3wiLZBbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754330994; c=relaxed/simple;
	bh=dihUUGl/QNFGur5Snt1z+fWublv8wjL70UzU1AYW/i8=;
	h=To:Subject:From:Message-Id:Date; b=JHlzC3S0jKd7nsM1dnUdrU1G8n/sv/AFDxrrOg68e3xbSdw7tUWegH0aDqaWmheMFLw8Io1tbS/STlm1UEaejBl8qy8KpkCst4Hgltcq7qw+kCzESy2AQlau5HyZzzhPgH281Z8zVed37zPVyFgMTe27loks8wDp4fpOjGVkGio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfBGYeZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfBGYeZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754330993;
	bh=dihUUGl/QNFGur5Snt1z+fWublv8wjL70UzU1AYW/i8=;
	h=To:Subject:From:Date:From;
	b=PfBGYeZeKvg7gvT+oR185wXS5GQ9sIFd2Tc67vrIZMLsqSHqPpCV8OAvepoFhdL9t
	 p6ckd9HHa1refhkBsUXlrDypr36O0i2rJ/TbQh5k8Wd/WPQwFOi40CAkh4jJftZJJr
	 sBTW4LMlUu0jXmoyQz/9KY938eJ5H9drpW/nn4PJOW65+jza0VSNx/K7Dxc0b3yNKM
	 +p8BG3DUga3fX9zdOX/Z9bYWskQOrRDP8cMU2bmrOP7s7OB53X1H31sJ4QySdio1L3
	 GG81Ia3WQkLtYdFAEpQ4gmDpWfFhHtBYTa5b7uZcJEKcKo+ysleQFnm3bZZDrgIlzA
	 ypwGYWxbYuzYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92160C87FD1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433099358.1512.9327439298949358320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92210152ecac95a24b524e0cd27894f1ba338538736e96bfd58762da9020367c
Date: Mon, 04 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754330993
