Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D41A1B425C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759075794; cv=none; b=kPehsUrLo2RaPZF/Xtn5IHrtuAkkkiAAcDH+msjTtKrRgzsrBQg+P27tVWfO+6IQToa3JkQKIKo+05HfK98yk8Z39oB7VL+tAb1oTlhAoFUe/Tk5oO4JRUM49g/20+S/hovt97UZm/d8MCtDWlcrE1Ry2SrDe96u1kH67nAT788=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759075794; c=relaxed/simple;
	bh=KuoOfLkWrsC0rfHDoPoxv1eUr0eOeq/jWqo6a5K6vMA=;
	h=To:Subject:From:Message-Id:Date; b=BabfO5zvcfH5rRgwxXEPPo1bNdeuTdnXR6N4UV7MqhCOHc15mzK5PDbvUXdBaMvmqk29k6aukLMuzLMbS1RRooCFE11nI92AwMdi082bKE3bZy9AtmYN0Zagq65Qv5UAtEtqYuGRXmgvYQgi3tOvQQiZFG1YYsaHOSYCMDUGpZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbRVPwLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbRVPwLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13EAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759075793;
	bh=KuoOfLkWrsC0rfHDoPoxv1eUr0eOeq/jWqo6a5K6vMA=;
	h=To:Subject:From:Date:From;
	b=jbRVPwLMdelSyUCbcqDrbepJ7o/jWBZ/b4ORd1Sxx5IgtYRb3mV/cj7G4W8iB1cpu
	 au3/wCGbTOwBgDlHmmX19pLvmyvJfVbGxRHiiEWlbo/f64NXKQnI0WoLwodUeEy/v2
	 67Z7o+wCLaH2lkGnESyI4JnToe3o3Z3fN1zLkgomjDKRBEMW4c2K7jCZs/D32XHQXH
	 Xav98NztM7SFBRzH+2YKEF1c09jLztbNpPyxTOa0bftSSvhpzjgCiEJXAryF3J7Sc/
	 xDWgX5D8DrOk1PP34Tr0LkbkefRPZBLgsFXdAFCANlU1zo/8qQqqBSD+PVj81RuUpK
	 Kim+PVUKqI5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F6CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907579357.14836.17376920531857187499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8157ca998ab918a1248017a5ac450dfcf30aba55a4d2db7383fbf73c848a3980
Date: Sun, 28 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759075793
