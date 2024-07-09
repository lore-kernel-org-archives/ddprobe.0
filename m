Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C757F487
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720539383; cv=none; b=q1Op4QCLwYYFo5BtrpDGoRsk7LTmjdU2oHrkpGfq+PisBbYwSRsds3PXoOFuOgNzl7E8wO4SIYVgvIT5qrlfW/MnEig+YZs5xqxGTrO6E/RBLGutL4/uAY3P8Tt2wUD+/D021PTjvRUaILowoQ8gY8GQ5mElY43dRf7rP1qqR8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720539383; c=relaxed/simple;
	bh=xNvrV3lOxSUc6ixa3SLEzPTfHIChaGGbDGvgksnzhTY=;
	h=To:Subject:From:Message-Id:Date; b=W5CuTi8S/8UEPAdK36impRgapKec7GUXhW6ygd5C2bsUlJr1TmBqA7X4Br5DeH3ab8jRF0npjx8kpqnsPQ2prRj79nNIjYU48jUHL6+AYxv2EEexWCVG1YveyawMn9Zk5AaLc0h70LRP4oDUT8n7oNGW0YjvJAGyizDhNsMU1ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmQCJwIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmQCJwIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB71DC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720539382;
	bh=xNvrV3lOxSUc6ixa3SLEzPTfHIChaGGbDGvgksnzhTY=;
	h=To:Subject:From:Date:From;
	b=pmQCJwIkMxE83ugZMQl4JFoiz2zEnuhV+seqJwRObua/NmjkOlXKvV8n7NqAhNHL+
	 LkAJbgC6fSk3rFxmFO6avaSQGn+KmeAXgitbd7nMdf+GIuX0iJSXg3iOLyzm5SvWwY
	 ul+OczHUNwuySbe8MVTL5DjD1uWMnsQAQY5ux1TYa0KLU3grLzx457uxlHL5zMiC4V
	 OK19G1eyRIv13sxIqq2xHPqOTGNuduVAILelP7xg60FDy7IQV+0jJJuc3rggUw7p1v
	 lElm0umlSC01kIJBZEQJyJ5DHQeUJNCqjBi/Wegt/6nzuSRa/Cu8Y5BFwhj59qmurQ
	 0frqHhO4LzcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7417C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053938279.24661.13765784471445677862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988010bce466419219c1767276f6b8b3cb81f31f49f4a3369b542876f6420bb9
Date: Tue, 09 Jul 2024 15:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720539382
