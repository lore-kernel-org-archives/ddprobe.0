Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF221660D
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744047594; cv=none; b=IEMazNuUyeEPq+/e+bq0Wctt1gmLEyfFaCsHNPAQ2gqTfaxKZJCWvTuzJ+J3dTHb6OEY3oe+ZSPhTsV+SrGNdncaYg+mrbIpRswaraN01t+d/NGZjmTWg/CGUs1rkks5O2K/8beeTtFxge6aMbAPOE7pFj2CqfzWyQ++P++yIkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744047594; c=relaxed/simple;
	bh=GaFv315/fIwNYmay9JxInwIaA7fR4xh7QMPOTbdayiQ=;
	h=To:Subject:From:Message-Id:Date; b=bZPNjbw07qfNgLqRL+brA5V1r/BF5FzDgqyCn/WekP9/k+9G474GhUZJosMR8OtPe8kXU6osiUHFFvEC+rC3jDEhWeLS2xcg0w6bvowPMEattYbKoMJm9XmBg0StxL7ooJYrKJOg62WFPZRjtuKkguOY+jW7dgeaa9VVMkfRd4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBsp+0/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBsp+0/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CA6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744047593;
	bh=GaFv315/fIwNYmay9JxInwIaA7fR4xh7QMPOTbdayiQ=;
	h=To:Subject:From:Date:From;
	b=RBsp+0/mJcLCqbHG8FSUSr/FOarh8N4GmKCN8+9zDtgF5JBZm9SJF6vmLKKMad9Ac
	 xAGBLBjMZrcCQozijSLFyF+ObpgBUeh2NgNQBiVSaKsKqHqb+1UEdxt+jEcdSgoT1O
	 GnFAGW/1jMHuZMS+Zi/KStJnXutwEKTMs8URd3uwzRSTFpzPJdqsXfI9Hgg8w6nRVG
	 BrkpVODzPBQBuyvG456BZ+Bza0dg/fa3EST8G8AVkYa3MzMOLOdHHX5zkGpQBN08hw
	 5jiA0l6cqIaSnjWVoTcLSP38Z0ks0klPDXwjflh+Y9GMoeyK0H3Cmml3BwNgqnF/5G
	 /I73AntGDlTWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BADCC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404759361.6175.12195246119197441572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e727adfe8e95d603f0574ce5d93c1e764e15c99394bfacdd028df5ca319d077
Date: Mon, 07 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744047593
