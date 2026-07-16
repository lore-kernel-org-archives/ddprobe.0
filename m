Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CD24A076
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784203114; cv=none; b=QzW/Sh0s6z9EeVxQcq03n3sL9yvTewiGWHcd/iFEUaAodmC2/GbH6NGIlFqcXzRwVKKrOuCCsooneQ4ni/ds8EYtMlJdIb8fbIdG11w7OvvUtqYYGeo5AWPgkklokjFXJM3FfxYWu8vNEw57NtIGjRmtVGtyrYpukhxr7O3FhW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784203114; c=relaxed/simple;
	bh=znqCFaMYPkclJhSoKIRGOLLS37HmCrzvSzpddxcycgI=;
	h=To:Subject:From:Message-Id:Date; b=US35tuRFV+yozKbDXGg8BazSjrKfXvBu2bgYq9CsetoygBlMeT0s7WpZiYZ+NHRGvU/Z4vnRO8MLyuj90MQgd24U3PotYI08KwxP1NZ7JLq2Aq26GfIkXyX9Ru0Z7n4ee3skOxMY1tyAUGDkvssX4S6JAYh1NCNdNR0oBujVFYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnoLrIwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnoLrIwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC5DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784203113;
	bh=znqCFaMYPkclJhSoKIRGOLLS37HmCrzvSzpddxcycgI=;
	h=To:Subject:From:Date:From;
	b=HnoLrIwROk+KCU8dzoBWlg0GOWppdV+lD8FDv8H8bJVR/nbQs4q16/mU+yZaiQBjx
	 wpJw+Oa7lgQuAfmgty9ckDNvnQ7c37ADw1Qdhg4vV/JTLqEDOHi4q25zK9DzRB+ZEw
	 I0m1jaBkuA21dmwUhN/3aN9O0aLxMLZ6QI4s6q2tFQRjAhg5YzoE1MqN2lMyUMk70p
	 ga2Dq/Hez5ZrHqoFjvDvn/zbK4TO41XaxV1ScG0Yv8uQO0p906q0AnNsnf0s/xuYUI
	 XdKFmRzG/tYoPznTDHiRBznvPuOGkc5J3tlEBWG+2qQQT0odUeLEh/+A547P6VMWOG
	 +YsQmKeKNB2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68BC4450E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420311368.25689.18404031709810626721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a8840ae80889111dc1e728e40969fa98cad8c7503a36708993d1f6ac489bc3
Date: Thu, 16 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784203113
