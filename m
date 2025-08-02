Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2536125776
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754102994; cv=none; b=dpgVVrEO5XjwBZcFH9j/SZ/4RaQc9CmQGqm6JpsV9zH7WBfDeVtnDXhue00TLqkTkJ1xI6fIOwbfEDFyHa1gI32+54FPmzMt46PuigQiejoTRZbrAjTNhdhy3/WPZz+UHQXvgxocqzk1IVfpifcE60hsk68NU+NByzwK3T84vWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754102994; c=relaxed/simple;
	bh=lvNFg5uEp0Vjp6bpdWCFX4JjNqesH4sZqgvctbcRFC4=;
	h=To:Subject:From:Message-Id:Date; b=sGRXI/2sVGl/H4lMfZkaEipTIaR06GTjpUCez/P1rPpqFHuNtcbqAVqyi33WlIdfpy5iaBWa3Y+5ZEgtlq0nF99YD6XqggoLa2aKBwowYu8fod4suOqiQ0WMdwjRTVxGv0HUjSJTse2RGQgsthZSwc+fF5+XlY9m74QfYLvLlaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7jv9LRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7jv9LRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1299C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754102993;
	bh=lvNFg5uEp0Vjp6bpdWCFX4JjNqesH4sZqgvctbcRFC4=;
	h=To:Subject:From:Date:From;
	b=U7jv9LRGrkLHdUYeuI334WfDe+Ikogyvis5T11yB6x76YQHh0YvfyPsF1wH5IqwrL
	 GVWlNQQWrfJHacQ/tw2FAFGR8IvOyyO/I3dcJ410HYoqUTPmHnf3TBJgLRhVSkZM14
	 +tSFH2X9h1GpnOe/eKuNt1gbz/ZyvFcThFFsOvjIeO+v9baE7zXmvq8DGOsJu/7sK3
	 bPUk9G57/+vDPgXlFVlUo6a7F2EPSfB2Oy+HeaUgxMGCqdz99yqmGhgTVMK+YDRM6z
	 KfPQ3ZzFKY0U4sBg3FYFYinnitK0roMOE0iOVtg0zul1qACkjkLHw+X3tlmiyHIAUz
	 FpqMYS8iJgBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F2C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410299358.19416.3500587157440428985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07fbfe2d17f8716b86504a148288134340380aebeb210ec201383c832e92b0c
Date: Sat, 02 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754102993
