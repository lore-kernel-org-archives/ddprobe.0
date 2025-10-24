Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8782749F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761296394; cv=none; b=CIBbCrrASqhcdZSULJertja57OJRjuJRCPRNd5aqAMTFgFJouENviHoDR7p1atXZs77TqgIauAwV34MJEhtpQcLjyCkN/fECg7yfjLUQ+UhGoX05rktBmi5pXYh6KjFs3sgW1PNT8l4W6hO+OHVm17bj552M9vUDXDC2gdzxy04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761296394; c=relaxed/simple;
	bh=JGrXzuXfYDQMUQJpOwgERfBcSlPwheEbApe1HAhGmYU=;
	h=To:Subject:From:Message-Id:Date; b=AJgOWSkGSdvFaG0gP8hMgofNJF+Sb78dW0TxHJe+AXdNe5Jb3ms+GLuoWJ36hJhwImiFAFpB2E2xnGyxSxIY3FG04Qol/qNyWZYbAr50rOz/4lUs28E2SL4LL2thSYr935vM9hxfQX7dmFb6lRlkkNmx2DCGJUegYrGczeOzIpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ay1YUDIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ay1YUDIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC76C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761296393;
	bh=JGrXzuXfYDQMUQJpOwgERfBcSlPwheEbApe1HAhGmYU=;
	h=To:Subject:From:Date:From;
	b=ay1YUDItO/JmfW6EhQ/brACCzMwg6ca8RBKPm5DqXu8eJmhDX3M/qt+JOZvtfYXMr
	 BIKm5lSGXp581J1jACnON7alIWJVesn1YrziMi2IqCFXfCxC+H7C8YPK8E2xditZSn
	 BMMgIIO/y2Uk0kzibXH03j5Hu7q4ZUBR8X2jwJTgutRyNiYrr7EqI7ozCH0aJLSDjS
	 8XJZNgE9l/eSsiFS7DFbVfjHGOdVr8YxZEJKYHc9z744c/OTj57Acwo6u9GV7DmUCu
	 Tn4eTmcNReANhwu5W7nJtI2kuubIlb1aZt7UGGmV6VyA/iJa7ODWYo5JV4pvQXDM/U
	 EQ+KPBea6MlGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F014CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129639357.4265.2424416027544643428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c88e79115cb21f679fdc955073b06876ead4f568a9b617e65d6ad9fa8f7155b
Date: Fri, 24 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761296393
