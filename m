Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A1C21CC44
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765346574; cv=none; b=PMDnku0r+UOBCI4pUnt2+cO4m3L+i8aN6y3q/FEGwaMaClQ3+ZyLdGihjKCp9Zt8vzmOr/rZjeX5am2coYqg+zaL1BKW9LCAGQsEMNNHzOW8otETz1WVPsvl4993SMMVM56R1sVp+MOXoRmHt0JnKrOXntMp7hHkgqaTmq8Y660=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765346574; c=relaxed/simple;
	bh=zmcG1KNUQGcjbcH4xcY1BNykVpDkjJ/iVprCbvl/y2s=;
	h=To:Subject:From:Message-Id:Date; b=XYhgSfUqllxITHzWzy9nMqwhaT8+CX392UlN4HzHx6RkqOfwaGZAPM/PYSyUlGoPEqNIdkTqEjk+BQcDkC+lYnMgTj6yVo3wUxh9s7z4qj/Xb49nSuI1uJdJVKXIOO78Ydi1KTEwgcCPCYI/FVdeThsmcKpAaeuDF+icofvNNEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjSctc9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjSctc9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA15CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765346573;
	bh=zmcG1KNUQGcjbcH4xcY1BNykVpDkjJ/iVprCbvl/y2s=;
	h=To:Subject:From:Date:From;
	b=qjSctc9AdM6NuIZIzR7Xu0GH/K8gn5NHU0ReodEL5ojNhddswdq3RzxlJ7kqMQxIA
	 Y6OVLzGJm1SjF+EjVc6JebWC0Y2jQ41j6Xj9zXSM8dd1UcdxI3RxerYHkh2ylce/1H
	 recc44X7sfvoBd1n7t/KY6YnivNQR7PawODKde6KjecifZ8obwilcQI0QoZOl9moT6
	 VzEVuC9YTeEQYZ7ScUSfovuHEWGC1ZkDfClpFab3DiJ4VSfC2GDgzU3LDif54CUtJD
	 YDbY6Wll2IxvWHZx0OoME1vihxzBz/LOIB8IaFl+PyiZPz+X79ldJsCvWNkV/JCp/6
	 D1rmhmViHhupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589AD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534657360.31617.7509134727451671354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01274ac263a08f2f02251c516b3b2a4456608218e862f6efd47ca077e790716f
Date: Wed, 10 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765346573
