Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CCC1459FA
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752990594; cv=none; b=VZQfvGgFZ2UCb1ZgW1nEMeXWZZYiRBprUnNrDO/DcDNWDmHa2Y8pGC+aV919nTqggvu9LsYcf+hZ4vbnROQd6r4Ch7PlgMLS4C6mIPUU4a2+Q9wXR+TF1MlmhFQqAQb9E7dppiOzPhksplFDDhb0i5WzyOpamAB8aSeVnH8KugM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752990594; c=relaxed/simple;
	bh=BAuLg9mzK+mYGe1I/z5uTOZOh0p7hKIojQWAh4OfkPc=;
	h=To:Subject:From:Message-Id:Date; b=lHx4lkLP5TLDybadij+G0fn/7+cph0zjXmZP1/WxF4NCVtYLcRiMwDDqxi9ppQ+yjZd0YBsZFqimWdOpWwYQoySZerS+hZtAK9owBNNDMQxkTo0t5HrzdZ8vg/dFlyWBCTHbubGzPzkpAKt4ON3eG2B9za/kYSMRoRkBKkTBBQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBD6FLzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBD6FLzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752990593;
	bh=BAuLg9mzK+mYGe1I/z5uTOZOh0p7hKIojQWAh4OfkPc=;
	h=To:Subject:From:Date:From;
	b=fBD6FLzv0mmPoEV9fVP2L8Wcbe46bIczcxYGZewoH39CdoV404VGTOWK97Hu5Npxu
	 Efd3K6bXxkbxSYEYWU1f6jUp15fyGJCN6y/yF2EeCo18hRjPSJky6v5iulfGFVysrS
	 OPO4gDtq4mBfX7/17Vt2Z/XX/eg7rPIOqk/xPUVXKdm+nnT4/J19G7yuzwBgev38ql
	 x8+q6SPvTdAacR8uUJmDKkP/PPMK2GFuGy+xodKjdHkXa3RYDsi8Z8cBMDeuvdynrl
	 NWYo78wbr0RG+VyNALoUi6LWKxlS97qu7OBHEKgbMQf6gntMiB4BmCdGdaqSPzIEgg
	 Gd7DbJpNj/CwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D2C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299059357.17999.17198841759577711699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e422b45646a62df48ad36bec92e8e06d374d2e13fe9b83a876618e90c78ca38b
Date: Sun, 20 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752990593
