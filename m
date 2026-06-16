Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D263AE1B4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781600194; cv=none; b=YaPqERX4+QTjuIsT7+AZUs3RHBzIAvxi/0mgvnNUXDhqra32YDQrttl47vmvVJJgDpW7Brci7xM40hyVZqf6l2BHeELBaFFoLTiNxyE3O+rxrjFsWYOeK9y1k9BYPylmnuWtPm9x6hEqki2zrFXRNVztA6NGfSrPWnBqe/yWJJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781600194; c=relaxed/simple;
	bh=tKDV13HlSvIhtMYLlIlqWFqSUcyDGD9mWd5o9LnIwDE=;
	h=To:Subject:From:Message-Id:Date; b=s9QIeguyYcJLbEos7vpbmiKzcL5hGHuuwiRO1tvuOcv90qUJIWU5lZalc+PCrLH1GlR2VIqW9uXWMk4CED0zt6q+bkTrLkcnPN+IfmEimEpqqjX0yCyZZIW+KftebYPi+gCgrMwXjhO9MSIbwyA+IkPFlawDJt7OY75MszQlFkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNuawpt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNuawpt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13F0AC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781600194;
	bh=tKDV13HlSvIhtMYLlIlqWFqSUcyDGD9mWd5o9LnIwDE=;
	h=To:Subject:From:Date:From;
	b=TNuawpt3r0vq7o672nz4d81B0jIblQd6d/M8N0ceYfxTVtq++wSMk/YzXeQGH37X+
	 hHaYycBP+UypIubpOE59VFhiN59XHeUnfFifnpyHRbiAp4T+hrzeTsSGwOKhrisSZ/
	 YCEPMy1jLOE+roHk4STyXK+w7bLbp4SEgLcXJV4GKwQXIl15QkAlI+2t8V7q3s/8+V
	 9Ofbp0PVmdPAaovPLhfRUcM/03RG8Je7DMBMnq4EpT6mwuAo4eUREZr57ly4IreFrW
	 zhkqcK+Y8mkOdxNJKmrs9uDeG9/0fA0lldfI+HOWEwDwJ/3mFGbXEZ/a9EQlkDzwB3
	 9879LJF/r0uMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC34DCD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160019376.20287.14498083637202280824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b6675d5da3f2704bc5df87d70a8b3a06a39d89d39ce13abca9cad6f118e920
Date: Tue, 16 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781600193
