Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FBE183CDC
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727218553; cv=none; b=ucTqbwRkdqMwziP+4rf9cUv1demVVlnBFw55A10QUjJsfclaJ3GD2LcY8xpBtG2kngRm5wd+rhGF+HgfDhY0RIIsU4nClLUNEDLsKYL15ZVYV2Q9GYfUrTjxfUsnoAA/F3YNc8D5cte8XmS5fCORNW3SxEJZvrbqm/cV3oUo0ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727218553; c=relaxed/simple;
	bh=gqmd9JP5poJ/fp/1r2I78CX/IedaNaVcb6cWLymJqsI=;
	h=To:Subject:From:Message-Id:Date; b=QfMGkAskxSMngSWAC726n+TpLqY66NFEnNvSerf98xR4pvwjvQb75z1gKepzpxNpbW+FUkjP8uQfbHFruGznjsrffZzRFbvNRI5voaoTb8zR+dxfoS6xt7FMAgzgOnZ15ITiV8IMCmneDSOF8iKVfDG4lLun+WiOT/l2VoO9DZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzlC3smd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzlC3smd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A49C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727218553;
	bh=gqmd9JP5poJ/fp/1r2I78CX/IedaNaVcb6cWLymJqsI=;
	h=To:Subject:From:Date:From;
	b=RzlC3smdXO6XUEgkEc0q9UYtPTgYzdwPJVXofQu36wih3jLmZJo2zp+G8zzybneaR
	 BgMUrYlFO8iBgGATkUDy0/wCB68VXHqbA0+jBlwRXw8BL7RlAu45rRiDVrBfZQZdL9
	 60CSVFLZBXeRwSzQEM2zIEt0tkmaUPRBT0oIewgMrgZmAv7d+05QEqFV7LMlxGP3cl
	 dtjD5QFFuArUuJGNBBARiz9f/LnmlrJUEbvuHifsDkoQ0i3hWEyWFxGm+90jUQklYj
	 v/vKucLl/fi+RPoiGxG4lzua+QSbuinVLvMKMAqfL67aHHLvUzF87w6rs/jbEYIEZv
	 IfNJHoQaWmGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95277CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721855359.30252.18114267594984535152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a02098b37efeb0a588a26e245113235c200ed893f52853dd17f25af942f630a
Date: Tue, 24 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727218553
