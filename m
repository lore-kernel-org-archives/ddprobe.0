Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371922DAFA1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416694; cv=none; b=mxwoMgModgGpAUQg+y3HZURjMSfnzVtMV7ZMpu8JM/EzjuPxtxVXL4q2YU8sJKnRRkQdsEZQWeQFsD11PrxEH0Hyszs2MQIwTYt7A6m7AcQrG16+U756zYQA8AhFEoh1GvlZfQpSppldpTdP0k9n/mirzIA8o8Nw5PYQ2gd+9GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416694; c=relaxed/simple;
	bh=JJRSxH6zsQR9Lm68zyWGbD8cKKZTV3r74mIwSSINFiw=;
	h=To:Subject:From:Message-Id:Date; b=Yv5SjWy0+pBLiGapRogRzc0dF0AFwdbLXHhAz4fMfzP1WW/1k4rNIqgQDDzLIP98fNnTTdGlfLNxEcOUwePDt8aFbwns9xNDeAf4f/GxOZjHIFly6CPOaU7Z1g7HkO3KcrWkNzmJN7NlHK/BzTwjMd0FJ0YotovTJs7/2/AWXUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvtDNw7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvtDNw7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A2C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773416693;
	bh=JJRSxH6zsQR9Lm68zyWGbD8cKKZTV3r74mIwSSINFiw=;
	h=To:Subject:From:Date:From;
	b=mvtDNw7XYN/j+DlXa5RXI3HIQjp2sBX0atyZ5aj0loboRCvrDxcy5zs0u/3bWrXff
	 Ho6/S9csB4cjMctWRF8fNRGEYNiiH/iqRQsP81oJjnHZ1B67cZQ7qXFmuEx5XGRs8t
	 bjjUn/apXjIXK2rMOQc+7t0RK+32y6bSIJN2gS5HAjc0DSV13XTzIe1yapmmvdkqgm
	 S0uKZ+Xdyt/tte45E6BmKKnBxAE50ukWwbxRq+XweTgilwlFhahD7QQRCXf5r9OC4Q
	 NNjoIX76yinhtUvyRvKbus/M4kGQaY+n0Ssnnwery97yhxAfZmTYYy3zRxxOvLufFh
	 LhTZRB9V2LVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB1103E305
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341669358.16913.11767138835993625595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6e7edad120bbd2d6ce403b412602719d33c2e5010e57e7b18a134ef6cbbe9c
Date: Fri, 13 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773416693
