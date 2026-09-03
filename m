Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752A2376BCD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788419434; cv=none; b=ZR+VYUWFH4o1hoIbU6JTnjvIjt4FwMvUUAXH+x3BmCdurZ/q3f06dWZY8H43dZc23T7olygFKhckNPq3e6qr2HlFaxCHXJVSXGe+yilILp6CqnFA5loJeAjkIlbm64tpHiP2/9Tp37LtKtgk978Q4YT8nARQPryIoHfffU4vRZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788419434; c=relaxed/simple;
	bh=sxhBCSwHEBWtf1NOiDqVmhgzugsh7buzEyFe3/jE8ZA=;
	h=To:Subject:From:Message-Id:Date; b=plS9gIo7EYa/SpTzdo26UIwPazB8nNIUir1lGTlFXcgzAHylbdP/FVWfqgY8umwicMpOWL9qf7i54s90C8RmzyfR5OXyCC7DyZHeACxYCQ7gLLI9o9l05YeH2+aNy8g7aEWXUzChQxLEj5L41ygDrHkkLO/3hCBDwuEFBHwR7s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNsTyYj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNsTyYj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC79C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788419433;
	bh=sxhBCSwHEBWtf1NOiDqVmhgzugsh7buzEyFe3/jE8ZA=;
	h=To:Subject:From:Date:From;
	b=rNsTyYj09JED+SuONTdsNYes9UQv5/Rw5sc2EaZb0dlZUFJ3ws2f0mrxFVHNXD5Bm
	 waMCqHueGWt4oByxJDmN17D7q5ra2Ot4KQhTMxbaeCVnTCJwoErhQLFkwbH8h4dp4C
	 7yBzpN4gzBbt3unMWNHvkwnmiM1Ca/b+hZmQVjljgmCYGdjDfZyORtHqWKAjIhXXLe
	 VdDQ/QDodPSH1D31KFi+OLdMsXZTlFaQweBcJNehrZ5MF9NeaE9iZClWPCxiLwu2Vv
	 STgybvcG71H4D9anC75p3bidZs9l5jRCCtoGAJfDpgNYSxKyNRI0v5V38x+gtK17Xk
	 CGGOgIrBFwlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC2C624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841943370.28399.11323014266527255442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acb47208d42aebf4eb68debbaa034a62dedd56e591164bf21b8b5ad8c832072
Date: Thu, 03 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788419433
