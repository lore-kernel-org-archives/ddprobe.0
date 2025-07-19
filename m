Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C8C4C97
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752955194; cv=none; b=CaKkv2sprLGzWoNE4H/4yImwfUXvgza+nOvh+FKih7ZDI0Fv9Qo5sEZk7Cq+jf/njzMToqIilpdxUrtsSly69Xrv+W3PpE9pS8Z6h54Z8OCjWHKPL/hgVbyzzcENB+X6OuMJQTBx43+ia/1zXwLS8ZRuxOXPL6fd0PLbvL1Qqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752955194; c=relaxed/simple;
	bh=xs8l5wDsUKsvqL3TQVxuqBmrxScrexM4yrzW8veWw3A=;
	h=To:Subject:From:Message-Id:Date; b=i9/0QtyrLuz4jiZTO7v2z7YtkMNG+K4VR9BdPs5xfGcjvMqjSQ9a2gvcK99kg9sD7OOWcySfR7V3fH0/V55RpPYZOP/Uk1OG2IZjtpVX6/RBhok/LcfxLMZPmo/kAJzhzeTyjCurdXi7ZkAaNc9pn6Vkra6i3FrOFi/0QvVEAmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwXl4Uto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwXl4Uto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752955193;
	bh=xs8l5wDsUKsvqL3TQVxuqBmrxScrexM4yrzW8veWw3A=;
	h=To:Subject:From:Date:From;
	b=FwXl4UtoHQs11P6eHsR0ifgwghXsu1UZjivZ6XS6dzGUeytZRB3uDPjA8APljQgta
	 f0oFHWOztelIGtHRzoPBonBPcAtarGgCq+M5TwGRTp2C6ed8w9kfHsBSzi3fzIkoQo
	 TnMswh/HCRFMMbm/+HnCXvqJUSATvFp4zuyAsyMKDEC6XkjwfG6nyZYhhs6VA41hhK
	 ofrVackjPKPvtYVP37q7aVw2fk6PyAmPaz4VzuDuWzmw96RpWRbp7s2gkVhJZ8suvN
	 tORaUDxMxWklpE++omtG/ZCxAkaeMVLXp6zs873iv95INPni0mdkA708AR+QzSyXJ+
	 Xt9mC/oZwyWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5BC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295519357.9804.12831477061446065744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee504bb5f1b87a8cf5bffc9ebbe3dd5621d1ec8fc55d830530e4880231073d2
Date: Sat, 19 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752955193
