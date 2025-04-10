Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AB71E25F2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744252794; cv=none; b=u8+7ixe7mEPSdJlIQjJkvO+PYA53glhjFZutiXGnWaR9WewgjrwmEnOXVzrq4oiEYC8fYSh9zuq+bxi6wWTt17s8SuTfvpn3k0C0pE6TXaeqk1Jv+ULsA/X+qW4LBYPpzjuyrIrP0VfZjUg8BwuC6TlcSSydzqib8muhsB1B3zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744252794; c=relaxed/simple;
	bh=hjnadD+EfLN7a6rLMhIJmMrlrMSoLq8tfI/fVtu8fdc=;
	h=To:Subject:From:Message-Id:Date; b=AnsF5f6lNlqGIYTTfajrvKhirTabgfLu6JlvXb8afPUUDQnJUJq9xrcauYnDKZd26twyivNG+9CjHdNgc7hZKFhA18ayJtQ99UnO5WRD8WeooCeQ1fXXB3BUegMtt1ydzOy8W1/K3t3XIM9R/RYHVsgzDdPWOjtDR/slZ2JMQBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8OcnVoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8OcnVoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4472C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744252793;
	bh=hjnadD+EfLN7a6rLMhIJmMrlrMSoLq8tfI/fVtu8fdc=;
	h=To:Subject:From:Date:From;
	b=d8OcnVoac0jnmwqCJyrFUZAz9xxg4dF+P45ws30zxNnzbDJjfcY+2tdB9cMU3usXr
	 Tx7QVGUlANbzD7Y78eAa2NgH6hYQ382PMw/O7YwD8kYnp4ebJRCIQTUvpJWa8vOAzh
	 Qnd8x/0p2yuTaEtdhX1naXjyNsx8hZmVXtZ0/xSd/lVnkmRE+51+GK4GxiKj43opi6
	 BK9rpgiQZFpJa5bMUIwt6uzTuDpBZjoN3urpnnqUNKrrId8diSOLKKg+kzs58YpSuE
	 stRw2/QIDetXAC0lSL04IWVYP5dknO2QX4ji+XbVHvCVOXGfGrNRVyscYRXvu3S/3h
	 2SW6TWVlS/8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A169DC369A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425279365.13979.7197332634243653504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf2321d3ded362b51f3d24826c17f2939f1380f10addc1d797c156f70df868f
Date: Thu, 10 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744252793
