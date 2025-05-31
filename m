Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C449847B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748696997; cv=none; b=XWQq3LwMdg77cTfnM1I09QOlHFJQfZ0rOsldgXTTP/FHlChWt2iXQMpHWqoqtYu6Q68dmcA2Df8pPG213YvSY0XipGGsrq/tSdHzwnymmbkIRYQNE8JRG3dXq8IgE7g32rEHkUDm3ag6Co0bWLyvuRnp9RlUGkH2kUHS1BcRuuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748696997; c=relaxed/simple;
	bh=pg5ZW5fPQe8kz9TDmC9PX7RtnDBffi7kD2oiaQZUv1E=;
	h=To:Subject:From:Message-Id:Date; b=YN/NO+1SJaT+nVAtjLqO7K1qhfySgaKndS8G02/StAvq6rXJhSS1PAgZCmuEG/yU+dooQpoeRILiA/ALWq4keNdj/BIOdrgpjpr95LvNlbWh/nck4VVqtnvEeUCujC/PeiwZSEAELQEWclkqJz9l90/O35potHrwqtzjLWbMeaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCner/dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCner/dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A146BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748696993;
	bh=pg5ZW5fPQe8kz9TDmC9PX7RtnDBffi7kD2oiaQZUv1E=;
	h=To:Subject:From:Date:From;
	b=KCner/dNaOeee55RGGz8rGhaHHw7yMcIm94ieO7vN4dJVHsPuWvXeCIzX+Py+Chr+
	 ac7qdFRBmvhpMppUqq0L1MewyE9b29gICHk3xlY5fENMBMEMMZckH+A7aEzlG2erK4
	 m9ftnOVebCG500Jm/vAg2BiWxk/zYOddjB6MW4UamtYmijQvKqC/oqYBlrV/SDTtTM
	 uXhEDhelapjP/a16hTaCAjIa6TB9uX+p/XZqvygQPqTkeUEObHI1nWBocwMFG82Sns
	 ebW4JlDYwLs/k3KB9VfLkifeDr/siWjfT+1to2s/BeliiZMPLSxemwROlBiPMAJdgW
	 +cZ/xTlZrxi4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2BC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869699358.18471.3699333911577504925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd0a62a1535695f9bf310b7c64b036fe008f0fd7e82b0a57f6b7db87011abae
Date: Sat, 31 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748696993
