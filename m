Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A0418D636
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783999714; cv=none; b=lDwt2AFB9TjW8jIgD7cUDRrYSBeB7iTQvxEUOBFdkYmwnFK4xe8gNaV49Ssd4lD+oRXUOzFfWtmAcK4A7W+EolQMEafSf5oqCWPDKI+HkaM8OVvZccf52EKLhEf1ta2PyHnlZbgJVPNq9+Y2d2q59QkxfJRCVh4cb5/ibGXH47k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783999714; c=relaxed/simple;
	bh=WoP/d7gSPZJyPvIPJq8wuJSR5/M10B+Qnk2RUsoPy7w=;
	h=To:Subject:From:Message-Id:Date; b=VvR809XscjtcS8QuiszbsJSXa2RH5/4dHoH/MBZnj89dRhE9MtQb/At1Jj362shd1mJ1S1tnJxUvYt3IyZSxmZSx5wTSud0KkyGea20HDEpdSdqOuW8M8DacNiqnS6bi4tgrRXtUZMY2A0vvw0AODupSJxR35gIGGQ7ScgVH+KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAbIIRRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAbIIRRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783999713;
	bh=WoP/d7gSPZJyPvIPJq8wuJSR5/M10B+Qnk2RUsoPy7w=;
	h=To:Subject:From:Date:From;
	b=rAbIIRRkv1Z+RbGWga7SMxs+0onwWrjyB2Qjlfu2a8X3N4EZW6f+CFKAV92HKpeod
	 vkdeBcqScNSo5FQFMjl8mKnF7d2udg6EqeEboqgSlQ1bPqjf8yqmHviuCtdWkr/hHO
	 RbfKpAYtgQ3xXwQyuWersMAkL+hHYlAa8PwsG3bJqygZflhsZXnC+W6W0XTnnUDboR
	 0BMS7/UxjK0h0Hjac4LhLYYevJEEr1pgIHT2HJG1XO1Wyg8hunisMML6bp7N4CwrDx
	 Ncr6Z+FoG7BF/kFgZ8j7V7GlH8xZxdV5bCpsHIYGvlG6B+cBbWR4yOspEx/eqq9bZz
	 gLjYwSTs5n5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC2C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399971368.15894.10543026237517158896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99618bf295b3a3ff87ffdaa856f6289eb7b991c3139bbf013e20baeeaefc0817
Date: Tue, 14 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783999713
