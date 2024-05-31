Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565B682482
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717195463; cv=none; b=KRkG1Ztw8Zy+x8egs1Jtmn7DatoYeh4/ToHRizB16pNRzL30ZOLfSck0MFdP1LzKFhQdMOmSHXtTnKgSRQWIMIxZZWebCFjoWVIqS387hFl+gAlZwO0xPAxcgp6V7RzNpzk/4RgQNS4iYXYNk+nEVlE3xs41ZrgV8o6YU2FOTQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717195463; c=relaxed/simple;
	bh=SdeKkbBGQgeztX18h1NgUK/JuSnTt9IAyVaxi3ysleo=;
	h=To:Subject:From:Message-Id:Date; b=BRL+Xw1mMwnAlARO9P7BJ/fI9XhBXwb4BvBdbTknJS13mcNqiKjFAL+DbGksebldJb4d2ANNgeJEn1Ykte2AACJvKSSrxz7m2KUt7LFs1HuHHoqT/3TGeegf0SqDP2GgZKIeKaSQzGUjXX9xCRsNsRcZBhpp4FwWsniNEiDbP6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huZYKZxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huZYKZxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67E9C32789
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717195462;
	bh=SdeKkbBGQgeztX18h1NgUK/JuSnTt9IAyVaxi3ysleo=;
	h=To:Subject:From:Date:From;
	b=huZYKZxby/jLgZ7PhDBX68499EPYDnPYekBsd1YxVZrMY7A44VEPlkNHY22yPQpQh
	 1QdqkKRA2aKuHJPGszb/8+1veVqR1MM0s8tGuGq3sMUZibUMaSiERFhzsAAJnQ1At0
	 kBsYsW35uE82fOkOKVC4FKzH02zIYdtTjOn7SkZlv0r3xedjYRugpHGFQ2bZAL2LKT
	 gEso0lY91tbjBA3lUUs4YDfwzWEJVjdJUuVuIshjdgP6rU+0jK6KMiUB9L6BBWzrih
	 peIlqHHr0c7JT5ROniu6T4Lmv0wS0+2jCVQkQf5TPs/ZnWrGQkgqrfRMEuZ7I7McxW
	 03lUwiUDEQlfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE0EC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719546283.21263.3487351698618367197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eaf6904b90cf5417f46cc7f6587031d87d2de1180eb746d512092e8ee6dbd77
Date: Fri, 31 May 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717195462
