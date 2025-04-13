Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A78E3C38
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744516194; cv=none; b=RY3AzRdUieeNRD4OmqiDypPCjkpGkTpWY4x3qEj2OqKrIIsrpJZICvt5M4uxJqpvuCj9tHoijSPZbcVGZnlMje3vJKDUhqZerXj0jgKDwxY9q3ABSxsH5dUn2GVPP9xsPBciMrKUG1OWoLumxMXhdZuF3oGdwgMJ4hXM6AlKEk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744516194; c=relaxed/simple;
	bh=NIM2cGmndlsQXivC8zxX99YHvxY7S92gybUCKeQ13w0=;
	h=To:Subject:From:Message-Id:Date; b=l8RVbU+TXOe3Z97S9hHGswDQzNhgAr/sUyy1WdKa9yV5WLj7LGwUlAEzWCnUWVh9jsdwomtAIjVZfNRJbBh9p3s55lFnU8n0e1IUNuVE2HiY7x0sCJcMGPhbm2EahWhrs2W/tmurrY1RFTnPG5QiSNqwPXLRQrpxRFjPl1lWFcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC6LHOR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC6LHOR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EB2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744516193;
	bh=NIM2cGmndlsQXivC8zxX99YHvxY7S92gybUCKeQ13w0=;
	h=To:Subject:From:Date:From;
	b=RC6LHOR/ELHnQxaF5NOcSY2iZIABw3C9pZz1/843Yl7O3X2/x5nN/I9DwrC5KK7nb
	 v5jKzhDcW65MQC+m960b3yCGyVPZYRkVjUWeWLAN9pyhABxqnBM8ej1xv+uAPDeskm
	 sEaAUdX0Gi1B+tmyz5Ypz991ha+IB5B9s2eY1Oiy2szTCpLGk2BlHFaE5I3lxFPy1y
	 1a2tJzSxQe/Gf/Xy6CNQK6oqLVySZkUdIrSRVVvTh3YZtttu5qeP+vyOsM+V7lZTqe
	 BAv+qDJO0TSmO7FhP6jo+WdrCaqZad0Fztda5zQj2FbujZc06sYFNxULpUO5tCaxLo
	 hYzEExHqOiwgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0B7C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451619361.4171.1067410896388301119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488a8fa0b3fcc1261501d1cab2a0253c303b189cab0f0e78208bafaf35558ece
Date: Sun, 13 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744516193
