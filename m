Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442AD1FE479
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737980754; cv=none; b=LC4R+zKMMmEnJV+OZWngLtYho2N6SNehbMEXN5Cwg6jVZC97M6jN6IybdzbYtHgT2Pa0eahkx0CmfRfLQQF+zlTG4+BMPWiVXoRqbowXjRQTf+ezVeGjXqX3ZKm7zpKuQwxz9Oj2he3E6L/VMot2fvgBfg9XtJYWp9vEwPps88c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737980754; c=relaxed/simple;
	bh=l+bFeEcVtdNsQy9/k46rIKEu+Lbi5pwacWMkgdX+DhM=;
	h=To:Subject:From:Message-Id:Date; b=HNyed9gfMPnmMS2d+VqcvaHNbxc2vl7nHcfimB9eiHM30Nu2HrMNVk3X3ISmh9K3sY9mAcl3BkiOnl7xvDZ8fmQyopqpdv8zCxl2/ypAMmBDEiIEBjiL/k4MC27v42WVJkZYrFLPwSvf51qAO/xgehy5KMS+8F+JMlgSj34DDBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZCLfpm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZCLfpm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8158C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737980753;
	bh=l+bFeEcVtdNsQy9/k46rIKEu+Lbi5pwacWMkgdX+DhM=;
	h=To:Subject:From:Date:From;
	b=HZCLfpm/Um69THURC4AjIo9230xud6KrqhsxRuVXWiWPBdEyEFZwbCwAspWohOmDi
	 wfUh1eJhUbi7/3k8ILWzPoYbMtDQtA2ZX1M6jces7ljtA3LptHDVPxzNo/qQxu6Klg
	 Lq3uo4kgx3roYBO4bbV2Qvmy0bEOeIvw1DsMKo+qX649GGBCdvslqtugX+hMKFApmh
	 85ACkXuvhC2e5GJ3oMv5/L4zDhlR5KbEReUZ999dCJpzTmwHkq/XY4KE7MKzMnasZP
	 zhTVdYk+7OX76U7yZ+3IfCj02XP3dox85eH8PsryokhGIVoojLJrqNX8cOWk1vWda9
	 ORCskQyYmrHBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92186C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798075358.1823.13858439542965487430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75b160328dfbf0ba2ed3be2a1e5d2cce2dc284737edbd4086d892f16aa01de1
Date: Mon, 27 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737980753
