Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067C1215F5C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774541694; cv=none; b=F0+m4bwF7QTEU+iCGy/WluQQU+nA9sUzEuGxVUJNu5JK8QfKmgvsju6z9laGFkopQf+jOovG/PWqjtiUsK8I3lTjPg6cMrNj8tbBtw+GxZpAglRhmdUKoHzv8DVpZ4ewUFWMnZwl79rhTjxkWgsZtbXPFfK4L7LtZp7UkVJgUAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774541694; c=relaxed/simple;
	bh=VK2fTl1Wkc4PpVxrqY4OO0b7PSCy2aSxkcTSDrTT3N4=;
	h=To:Subject:From:Message-Id:Date; b=kvhee0xACysmX7EyVSxxxQrZY0ypw7KkZ5QKk58i3RGIhDd/TNMrT93GuXqEieRctjMhPnJ/S7bP8V/CmK9M4V/5EoC8NUTyCTI+9ofGSg4VFMrtkoIaj5GoCoXha6HrIb7CgA6lOVRyFTLfJ1l1NlfLqDw2bv0zB+LLIAQDwnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwB49TC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwB49TC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CAC19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774541693;
	bh=VK2fTl1Wkc4PpVxrqY4OO0b7PSCy2aSxkcTSDrTT3N4=;
	h=To:Subject:From:Date:From;
	b=ZwB49TC9OF2DCz1ln6J005qSHaVKyaY8Pdt/xOr4A6zbtT+Jm7qDDDcn3J/qWBUMg
	 2dKyLt3oVzVwiJhh4Y6xT7HCdImW5tlgrqGBj4rBP/hwHlgez1vEGAxd+npOIcFpSY
	 rFO60Z4XPnOFyY5VRVE0oCABVwK4k7WWRVpzTa2X9rNSr3louDugxfNfLW+QHOM7Cm
	 zXgBjc49WOylRflOAlJ+ZAY7tLZgLirI1Sr+P9nu0ZOrWZDG4q2gK4tvoVfuRabMch
	 r0lKq4qdFi+vFAOosa+UiIkW6uMsV/eT2h2TfWa5iqX4s9YV4cuh85opvh0M6WSslo
	 oJ62PAbLAdCMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E610A88E3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454169358.19902.17895346004551247899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b381864d12ffb4149372e1560d4073aa9d7c9f7fd8d586e2f6f357c71b43a7
Date: Thu, 26 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774541693
