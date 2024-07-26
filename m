Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1D363C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721953554; cv=none; b=SwrAkIOXGcQKn6yxcVQSxUdWIEK9V4QEiw21XTbgdbV+iFyeIHJYblHyo1TqAjbdkm2jvKWAp48Wgho/8p0liHsnQe90EBnUDf5D3E5ZbiM+zP52UiTpRBbRg3RfXyzHh9ap+ks4SgV/Hn0AZIDRgAQ/zMS+9eZX1dpdX9CwAF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721953554; c=relaxed/simple;
	bh=fuptGJfRN0zFbBbmvmCsFUDtcYMIWdfTsXqH37lBW/w=;
	h=To:Subject:From:Message-Id:Date; b=e6NC75HTGmXzqxGEvUy30e2IUuebtvtbxO7OCvYwnc59PzTmgXfLc13tUsdHU1r78ZBjds1rB0Lvd55ObTig8+FeFopDi4PJDWCkHHezVKbmOCOdNvWRkonxtgClTf9AKcMOJ0W9zOTNctaZ2tsFP0eA/EEOfCLghVaRzCeQ1Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTThrlIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTThrlIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B270EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721953553;
	bh=fuptGJfRN0zFbBbmvmCsFUDtcYMIWdfTsXqH37lBW/w=;
	h=To:Subject:From:Date:From;
	b=VTThrlIgqujKt9HKHcVhRrQFsH+VviBeNMw/J94IzJpxz77WOc5vcdpAJZQEng/kE
	 6Ocag8xypaJwyvohE0Pf9R92gUmlZ4ZyyzinahupuJZ/gZ2c8eXcCgNk5DMUl6cfhH
	 BWpHM6b7xrY7qYn+oBZwuH7yUhxinbfPZbJpr0fc8SYRrdvHwMjvc7djZKZUZMoHAO
	 Ihv+aprWtEJHEKNNEdgATz3KDyr37RdX8LsAV53tqnci2L18zL/TDE9u+yEwJA2hdV
	 52zh4BlgJglp1r0bX77aNoPe/RQmrhOh/J71+zuH3lHpQAbB1S4nP847Q+kYsAk/8h
	 gGUpOVBq1D8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A126C3DA70
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195355362.6612.5016679531694354365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49a96bdb4356d260bfcb5e892e184f08e7f126380d48adf65697916b20ad152
Date: Fri, 26 Jul 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721953553
