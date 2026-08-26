Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5432F3B6BFD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787731234; cv=none; b=es+aQp7utcZfDKLgOtM683mwwFSIbiBB+JW+WnHEhLmNY575ONOLaQIe2sNWpWoU332TsHXSNxOrpltBzkrOH/1FbcZ3VISxbJ6F6FQ7oZINV3QbzNCxSP15tbbdTFC30+TWsIifCYXAygPlCEka9bb39X7+Sy7Tx/lSSuHk4kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787731234; c=relaxed/simple;
	bh=8DdDl+aHSVYcKk1A1V7pDrm0yqzUo+3tXpg3dDAt7x4=;
	h=To:Subject:From:Message-Id:Date; b=Wt8vQ7yMKPKVfv7psIbDM9D2W4G1B6LruekikC/EhJNeFB9q/epYNVuATerhEFzGgWDsw3LKSJEUa5rEDzA5uWHH/7+CzPEpLYpMAWoigRi8/nJ7pwzjeBS2eDbBXKQtWhedmtWvGR8BZ9PFmlPfOh7F/RR2NCNASwM6LPLDy2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbv9KOXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbv9KOXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE22CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787731233;
	bh=8DdDl+aHSVYcKk1A1V7pDrm0yqzUo+3tXpg3dDAt7x4=;
	h=To:Subject:From:Date:From;
	b=mbv9KOXW8MDrFAieJUPH08hKdC+vLEf+acZ0oP1gzwF13AbLlJ/MQfhVy9VBL2YII
	 fXHkxXoHWkqKnp0a40VmLgkfueYd4rHOKOq27DDjU95k6tBHl+guHlnL90mNM8x9AZ
	 NI7Z/xopEvYufvyBZeNrOo9wGpFB9NA+DjmIiopbljgCjX9wZ+yAh77FrbCzIcCI7N
	 M50/aw8UkNeFCWaoCZmFy7zrvxiuSgoWGXNd2Bm55vNnzMRDL5tQc3YNfT0DR/75sA
	 giulN0WSRx4hgnBaG7fU7L7nyVyT77OYRfvyxlR1yqf/aT/HSLsx2W2lOQZa2alf2w
	 Kfs1yJ0Imf0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E96C61DC4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773123372.6645.11231152341084201481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d25aec03333cac1610a172d0e7a36a6c8489523c709f74aec7f4f82c6ebf20
Date: Wed, 26 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787731233
