Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2CE47F4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757635194; cv=none; b=kdWKvwYgG0KTAOckQ+nsQ54If2xuCrbyjD8+kB4Jz5446mHM0maoYVY7LaZxseGlexxPk8rGHNDighXu5ai344eogK1S4dyNKQUGPvDv986XL5xZ9C0bWKB0yscDWZCac12AZSVjgAMj2dmmbFQr7lv0yG0m2j3El/+K4OE3YGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757635194; c=relaxed/simple;
	bh=ttHsI7VK1555MTELhlUEugl+oxqCzCFGhnsr2AJIH0k=;
	h=To:Subject:From:Message-Id:Date; b=GQTM/McuGFXaIaIMMyzqEcASOTw59qxtJ7+65ShcI+jGjnpxGtSip4l/f1vIcnMZgy/lyP+X29FwhyVryxZ2bHUMGEcAlfLH11Bqli6Fz0SJlh3gVGK4vycd4x10A5TsOOnZ6yByMbpfgZW+DUQGWCEwd2ugYJD8ndydzaxd8N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ1dRes8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ1dRes8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6360C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757635193;
	bh=ttHsI7VK1555MTELhlUEugl+oxqCzCFGhnsr2AJIH0k=;
	h=To:Subject:From:Date:From;
	b=ZZ1dRes8hxL8ByT+TVwltTqaA6av4C38zA6ZvLfyo7REAszNptc3oLwTZ6iljcQ5/
	 xIK+OLxN4zp/uQEM2vtvlfpD2aNrnCtLNr9rpr7Ian8Y+KPUkSCJTLwngBSET29+Wy
	 zjGpl3ZWdlDPZ06EaA8W4c7FvBh07hcL4V8jtgsRLchF6sQ80XEX3gRJ1q9vkN3H3H
	 hCjPlnCOYt8SSAs3tE3YQE05LkRV7nk/sf56W3MhwID+ry9hwklm4NNTZRzQlyWDl0
	 zpUSff3yJMU4/1EBtTZKSj17HlhG1hh9J0/QWV/fGMhNEFiON9XMeoXh4FdpzYe1zO
	 YU5u/UZCNbu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B0CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763519357.16532.9490127175125792294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dee01debc3e47e4c1700b9cd285c168d7255952bc6a67557cb607aca5906cd
Date: Thu, 11 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757635193
