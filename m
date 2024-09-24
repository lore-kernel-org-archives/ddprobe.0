Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4E114F125
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727165154; cv=none; b=n5ffEcBK+PH6+ewu6/7XSJFvGJKqhsOuktKLzdbv9EnATqjca9Pke9eQeR8Rlz2L+VgMdROs0nnc3l0mQhxp055FEJFOhLeXcV9XcErUezFZG40aILUaKiUykWFJZ6oj3W9qj8Zyho0Mh/irA8g98zWEU3GLr6/i+uDn+26nz7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727165154; c=relaxed/simple;
	bh=J3uOZHIkB9GGI2rEryS7LSFxlxKuc1lnJOdZOSMCjwo=;
	h=To:Subject:From:Message-Id:Date; b=hLAMpHB1Yu/l/26fJu/wIQbY1gw/XWjUTLQ4EG53Dcm967xh492APWkcohu5dPRbleZVrwfylm/Q1UKWOQOOOChkgRBcOa9yuosxYa1QQBZbVNO1oolm1xS3uRnRtVV+vazXiA/CUFINTWebFepgPM6Vg5zvJYJNAIJuqi6sT6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYf7Ale3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYf7Ale3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727165153;
	bh=J3uOZHIkB9GGI2rEryS7LSFxlxKuc1lnJOdZOSMCjwo=;
	h=To:Subject:From:Date:From;
	b=cYf7Ale3tB8RjocfBCkVO38L1fp4sIaIf0hawmRO2sHY25IfgahcwMxvnBqUbKS60
	 q8emrK4iUwzpYuV0Au3LEcsrWtUE0Sc4g0ihz14cDGFH/3vyO5ohAqqjSC++P8tiUR
	 7oQJaH7t1arJeNvY8ioDzd9gjFeI84JjJCbHk2M0O7WI0viPoDZGnvmh6NLfMzInDF
	 OYzvO+WMceW+6ejeAe/2/EPs7YB8hkyRwEzo6qEKdHEUQwVRNtvnd/aVs+U1jYYNAS
	 dTHjz2bK0PTk3DJmbrajS6Zx3yVg1Y5xEP4hGI5k/TpqH9O9dL8D0AW5wHEH8lpkIg
	 K9O3+7Xwv0tyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209ECF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716515359.4068.14581362542108273354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8589098be51b37563c30d4b59202974ed5345c9d57d6a8c1175d8ace7c94b7be
Date: Tue, 24 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727165153
