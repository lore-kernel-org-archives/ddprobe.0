Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFE61EF393
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745269194; cv=none; b=bk79PHCizW+psetWETJXuJAXZzmhmoJgIgPSM6L6z7lXX8Y/Qh/H5rpRjcFl08l9ciAjgivXqyDWCtJ/yio2yEFfyQ+Zy91pZ2YpmK1OIEILEEbqjJK0EwfApiPPavJN/N6v94cti9az1aAtONgjpFwYAW/zot/UXECCE3/Ekwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745269194; c=relaxed/simple;
	bh=GFJ7oq1F8mKsdpxO06w8RJjLU5+rFWDVwWvd5MUrC50=;
	h=To:Subject:From:Message-Id:Date; b=bwIynmCUov2CaWCsSmAcQXOPHa+PisyrWIsjMrqOZDopWRovCKYO3P/a3OcnUY3NlXGqxEG+y0t2O66Yftn+J1T1/NrivRWaFEUVnwpJ8o1ndCbmYP+osz08mAcZQhDmvpTIOUhnCb2K4P6ET0ebejl3lxdq7zI+jMYZcXHtMuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ5H4WAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ5H4WAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E4C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745269193;
	bh=GFJ7oq1F8mKsdpxO06w8RJjLU5+rFWDVwWvd5MUrC50=;
	h=To:Subject:From:Date:From;
	b=IZ5H4WANo7w1Od8MqGkbfX5WtyqTGcv2X/8LpUHrw6b/zjFpiigLn3dNRPxYqCBdd
	 lwblQ6wYNBQhKW/ijI9VkjU9FalTckbsrNmDPOi6C3NyAWOWbWYCYnNAK8yIXSUULS
	 vSOqpOqqFIeYmTYSAmKe62MPlTQz+DvLXZs7INOh3uQ67vb2DE2s7w26P+saMXRMmU
	 xexOo0wbq0KJ37yPqCMxVLiFWYmAYU2zFPhS3oe0rD4HrT0P540rk1LHzdk6veNnKo
	 2gdobiQ3cyBZ/p789oxnOwkWT5sAIzxYOEQxKdvFMCm9FU/aFNH1h1nbYNzMPKv/AX
	 pKQ33VjZWB+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCD9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526919364.32359.3737590812730564585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c48e33d7b6da6bf192791bce35fe089569ff7eae15afb8034930420c6871391
Date: Mon, 21 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745269193
