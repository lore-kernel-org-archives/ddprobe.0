Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DE3299A82
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782161194; cv=none; b=RfeltJpo/aXrw7vnxsjWLwktLOqWQERvEoxpqZe6XqJ4PS3fzxr41YgKa5PCBNC+icScPbrqMikNpWMbsHWEusoxD0hDV5c8VjzfT5KUugwKFWMc9s5+w4+YQgxrxGbaRlj05LPunxq3BHLCfCE5yZ9PhOc5tUSvCJE1Ut+3UQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782161194; c=relaxed/simple;
	bh=KME5FUq5pb97vDF1yE7ORCYy5hxYGQZBSsLcCn+oJdE=;
	h=To:Subject:From:Message-Id:Date; b=stWx6gbBKN4wijq5z5oE/DDZevPM+I99KCKv7Qp6c2crjfacPcNnakRVHe9J9qTfNp4w38T/MkhwGIEhek4RNnseYbIcbeJC3NW2IU4laQIU9VnH4594MUfRhnvwtmY6+FwivZNTv3gh7AEM6QSjaMS9FcSbdYjsTsLWSxT8k4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+reD5Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+reD5Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05E5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782161193;
	bh=KME5FUq5pb97vDF1yE7ORCYy5hxYGQZBSsLcCn+oJdE=;
	h=To:Subject:From:Date:From;
	b=h+reD5Q+5qOxPcKqHFxTitfrBkmbFp2o9LYMKiufd1F3snH4xPwYtcA+uX/ZTLDyt
	 k7E4A9jUPq2h3hcDO0xuW7mNUGbAfrI1uLSnWyShzUmb6lOzWKcLjOv2fQyb1bz1TM
	 RPR3ryzjot88MX4RYFGKDrMmGp+xXqqu3k2nVMteCeTAo0ldKYKEHxfVAo3tVYd+ps
	 ndPm8lQfMvCFwLfty+Squ1G3+94A32GfRTaKDdb5+p4NnwP6iUt3M9pIOvfgJTiYRS
	 Lc6ZJLQGxo8YrY9MpoiBrld5LQ+HafQjZVCaHD4sSVHIqs40cxrKe/xrRKLblmknt8
	 EeuAAKk1nEMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB3CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216119368.13909.1356051670083463251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e31295990db3417e21f73d5309031cd351fa3fcbb348d396c63dd0cacf7da5a
Date: Mon, 22 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782161193
