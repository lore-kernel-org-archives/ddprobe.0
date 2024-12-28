Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330564A0C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735404354; cv=none; b=mcaHOUSCOrDkR4ShBkxCf4AjjIKdICUsvnezDHQnDGiNzE6nNhBSfAezIHRCJUlx+qQYRMy8RsR435/YyGxbJxuecgqmlA/Hi6pkNy9eCR7DhHRBrdj2e9/y3E3hy7oSrG1bjVvCnlMy+3GjgtFZszylre5IryR2xwsfQ7M9aHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735404354; c=relaxed/simple;
	bh=0EIhePjmkTG1D4S3gfixTMf8CFwAeUQjct6zHq8IHZ8=;
	h=To:Subject:From:Message-Id:Date; b=epj3+y1VwoS0LzAYxZw/Kd4f9E+N2EC26qObLT4hixSVHIO5YuOC5XHDlJ13pRqrLzNTa8qFIsJKb4oh1Riza7LClJlK7DKen5TD0wKtnYqNVWSw1YaZK6k92bRlR9Gjc1v+lytuBQlQPUh9EEZlBaQOxZa1PYQ9a385b/biovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xgz3QHXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xgz3QHXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3B3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735404353;
	bh=0EIhePjmkTG1D4S3gfixTMf8CFwAeUQjct6zHq8IHZ8=;
	h=To:Subject:From:Date:From;
	b=Xgz3QHXuGuVF9OvJKWkJX5YMPX992GI7VvSR03XjyzVfCeM64OhUoKIwXS/W7rFK1
	 6/8eyhRNK06C6zlDJKxKQjARHOcl7Druib8ccJsv4QCEZeM4a5tTLIQEqdXhgwOVuG
	 BC1p53y+ih0mXAj/MmV2j16FUMlb5brWCU9/2zIRlTieVvE2CQGNmBQ/HGxwa6tm7X
	 BoHCZiWlwC4yT7cdldUpnCfk1GiKc3AmagojS4vFr1JyD7OC0OSJfnwASIukxTQa+P
	 Z/vt0lOPgf7wS2gEf/WkcByWnBBhW3bLPnGXeMJhJtVlWe0UE/b+1ydSC8ct+jtpc2
	 rlGw1/MNzM6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7ABE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540435366.483.2875355548875634182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe2ba023c96bfb71e333e2188e0d886c9afef10eced243f0b49650684cca8f0
Date: Sat, 28 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735404353
