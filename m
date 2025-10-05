Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03166254B19
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759655994; cv=none; b=DOj9zIxRF1OhD650AlSIvnCYTkBnE0o7KzHwkQ3IhXuqAjDk1uBPByVkYvlhi4iGIpipYDauBl41pXJIznJZ9znopajiq9daxiuj9yqvYTnlYVjdwBu4K/8WyTKvsd6zJjrKWk23iXT5aMd7O8FDbP1aMKTT7sH5MNduyWDqzrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759655994; c=relaxed/simple;
	bh=G4V9CfqpD4xsd3LQ/MAPLm0qQBszNn8/0h2HcqMVo0s=;
	h=To:Subject:From:Message-Id:Date; b=oYw4Ya1fm3PvVbVIsoMpz/DmQjWfKuqPBjbZeDNJdU1QtxRjYNwZbnZIex/xZZaXOcm8FLshwgW7ixqMW1KXBX1Z+vd/4sAmhxlg6WFWWIX0N7yK2x8m2s6pnsD+IPuheS5HrREm5EJ5faaIHMW8G7/yLHdMyYPjxKfQVBdowSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ldi2CUvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ldi2CUvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7FC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759655993;
	bh=G4V9CfqpD4xsd3LQ/MAPLm0qQBszNn8/0h2HcqMVo0s=;
	h=To:Subject:From:Date:From;
	b=Ldi2CUvCRhMqqlgjG2EP2qQDilKn7x7CiGSv2EaXBe7YBUTG1dLoSqU+gvcBj+7UU
	 tl4T6v1YiHQsupu7iuYI9Kc0C1rJRyK15MwQNtr0jgVFKXFq4R8XAQUWVAY++LXDsl
	 ayYO6OHrVL+6nlHzf0Hphpv56uMQNZ1fKonWsr5FYsLHe5I7CBpX8QC3NerCNtQ+S0
	 O6Y6B6HRP+HJWGkRFvIDRR+vSjwSyRxfqhroXNh0Q7tRTX5qY643mofH1xA8uiGRDG
	 /THpRuztnYZVByEu1ewhb4LpQ4v3YXTApbk7G48xr7hyKLsIKBWxS93yEBqAiznSIP
	 Xuh7oHICp49Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965599358.11244.12107961801190610091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d190b1a552371fc4e8b7f570ce0e5c0f8af44c60f378961ade280efead5004cc
Date: Sun, 05 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759655993
